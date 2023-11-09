terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
  
  oauthclient_id     = "7de3af06-c0b3-4f9b-af45-72f4a14037cc"
  oauthclient_secret = "qLh-825gtjPrIY2kcWKAkmlaSgi6Z1Ws2BAyixWbTrs"
  aws_region         = "us-east-1"
}


resource "genesyscloud_tf_export" "export" {
    directory = "./genesyscloud"
    resource_types = ["genesyscloud_user", "genesyscloud_routing_queue::zino_chat_queue", 
    "genesyscloud_widget_deployment::zino_chat_hours_widget", 
    "genesyscloud_webdeployments_configuration::zino_message_config",
    "genesyscloud_webdeployments_deployment::zino_messaging_deployment", 
    "genesyscloud_script::zino_chat_hours_script" 
    ]
    include_state_file = true
    export_as_hcl = true
}

module "webmessaging_flow" {
  source = "./modules/flows"
}

module "webmessaging_deploy"{
  source = "./modules/web_deployment"
}

module "webmessaging_script"{
  source = "./modules/script"
}


resource "genesyscloud_routing_queue" "webmessage_queue" {
  media_settings_callback {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  division_id              = var.divisionId
  skill_evaluation_method  = "ALL"
  acw_wrapup_prompt        = "OPTIONAL"
  auto_answer_only         = false
  enable_manual_assignment = false
  enable_transcription     = false
  name                     = "webmessage_queue"
  default_script_ids = {
    CHAT = var.scriptId
    MESSAGE = var.scriptId
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
  media_settings_call {
    alerting_timeout_sec      = 8
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_email {
    alerting_timeout_sec      = 300
    service_level_duration_ms = 86400000
    service_level_percentage  = 0.8
  }
  media_settings_message {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
}


resource "genesyscloud_widget_deployment" "zino_chat_hours_widget" {
  disabled                = false
  flow_id                 = var.flowId #zino_chat_hours flowID
  client_type             = "v2"
  authentication_required = false
  name                    = "zino_chat_hours_widget"
}

/*Generates an html page containing the webmessaging widget*/
# module "webmessaging_widget_page" {
#   depends_on                             = [module.webmessaging_deploy]
#   source                                 = "./modules/generate_webmessaging_page"
#   genesyscloud_scripting_env             = var.genesysCloudScriptEnv
#   genesyscloud_scripting_url             = var.genesysCloudScriptUrl
#   genesyscloud_webmessaging_deploymentid = module.webmessaging_deploy.webmessenger_deploymentid
# }
