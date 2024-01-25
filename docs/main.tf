terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}
#Set up genesys cloud provider
provider "genesyscloud" {
  sdk_debug = true
  
  oauthclient_id     = var.oauthClientId
  oauthclient_secret = var.oauthClientSecret
  aws_region         = var.awsRegion
}

module "webmessaging_flow" {
  source = "./modules/flows"
  prefix = var.prefix
  environment = var.environment
  queueName = genesyscloud_routing_queue.webmessage_queue.name
  scheduleName = genesyscloud_architect_schedules.schedule.name
}

module "webmessaging_deploy"{
  source = "./modules/web_deployment"
  prefix = var.prefix
  environment = var.environment
  flowId = module.webmessaging_flow.flow_id
}

#schedule determines on & off hours 
resource "genesyscloud_architect_schedules" "schedule" {
  rrule       = "FREQ=WEEKLY;INTERVAL=2;BYDAY=MO,TU,WE,TH,FR"
  start       = "2023-06-02T09:00:00.000000"
  division_id = var.divisionId
  end         = "2023-06-02T11:00:00.000000"
  name        = "${local.resource_name_prefix}_schedule"
}


resource "genesyscloud_script" "script" {
  file_content_hash = "${filesha256("scripts/script-f350dc9e-c099-4a90-94ed-b76c5789a57f.json")}"
  filepath          = "scripts/script-f350dc9e-c099-4a90-94ed-b76c5789a57f.json"
  script_name       = "${local.resource_name_prefix}_webmessaging_script"
}

resource "genesyscloud_routing_queue" "webmessage_queue" {
  media_settings_message {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt = "OPTIONAL"
  media_settings_call {
    alerting_timeout_sec      = 8
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  skill_evaluation_method = "ALL"
  default_script_ids = {   
    CALL    = "${genesyscloud_script.script.id}"
    CHAT    = "${genesyscloud_script.script.id}"
    EMAIL   = "${genesyscloud_script.script.id}"
    MESSAGE = "${genesyscloud_script.script.id}"
  }
  enable_manual_assignment = false
  auto_answer_only         = false
  division_id              = var.divisionId
  media_settings_callback {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
  }
  media_settings_chat {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
   members {
    ring_num = 1
    user_id  = var.userId
  }
  enable_transcription = false
  name                 = "${local.resource_name_prefix}_webmessage_queue"
  media_settings_email {
    alerting_timeout_sec      = 300
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
}
resource "genesyscloud_widget_deployment" "chat_widget" {
  disabled                = false
  flow_id                 = module.webmessaging_flow.flow_id #chat_bot_hours_differentiator flowID
  client_type             = "v2"
  authentication_required = false
  name                    = "${local.resource_name_prefix}_chat_widget"
}

# /*Generates an html page containing the webmessaging widget*/
module "webmessaging_widget_page" {
  depends_on                             = [module.webmessaging_deploy]
  source                                 = "./modules/generate_webmessaging_page"
  genesyscloud_scripting_env             = var.genesysCloudScriptEnv
  genesyscloud_scripting_url             = var.genesysCloudScriptUrl
  genesyscloud_webmessaging_deploymentid = module.webmessaging_deploy.deployment_id
}
