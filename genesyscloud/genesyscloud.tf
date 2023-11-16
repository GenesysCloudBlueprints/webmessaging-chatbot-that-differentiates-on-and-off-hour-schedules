terraform {
  required_providers {
    genesyscloud = {
      source  = "registry.terraform.io/mypurecloud/genesyscloud"
      version = "1.17.0"
    }
  }
}

resource "genesyscloud_script" "chat_hours_script" {
  file_content_hash = "${filesha256("scripts/script-f350dc9e-c099-4a90-94ed-b76c5789a57f.json")}"
  filepath          = "scripts/script-f350dc9e-c099-4a90-94ed-b76c5789a57f.json"
  script_name       = "chat_hours_script"
}

resource "genesyscloud_webdeployments_deployment" "webmessage_deployment" {
  name              = "webmessage_deployment"
  status            = "Active"
  allow_all_domains = true
  configuration {
    id      = "${genesyscloud_webdeployments_configuration.webmessage_config.id}"
    version = "1"
  }
  flow_id = "c421576e-6c97-4367-b8df-34de4c044a12"
}

resource "genesyscloud_webdeployments_configuration" "webmessage_config" {
  status           = "Active"
  default_language = "en-us"
  journey_events {
    enabled                  = false
    should_keep_url_fragment = false
  }
  languages = ["en-us"]
  messenger {
    enabled = true
    file_upload {
      mode {
        max_file_size_kb = 10240
        file_types       = ["image/jpeg", "image/gif", "image/png"]
      }
    }
    launcher_button {
      visibility = "On"
    }
    styles {
      primary_color = "#222323"
    }
  }
  name = "webmessage_config"
  cobrowse {
    allow_agent_control = true
    enabled             = false
  }
}

resource "genesyscloud_routing_queue" "hours_differentiator_queue" {
  media_settings_call {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 8
    service_level_duration_ms = 20000
  }
  members {
    ring_num = 1
    user_id  = "ad373d0e-a737-440c-ad35-c6c608d11fe9"
  }
  skill_evaluation_method = "ALL"
  name                    = "hours_differentiator_queue"
  media_settings_message {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  acw_wrapup_prompt    = "OPTIONAL"
  auto_answer_only     = false
  enable_transcription = false
  media_settings_callback {
    alerting_timeout_sec      = 30
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
  }
  media_settings_chat {
    service_level_duration_ms = 20000
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 30
  }
  default_script_ids = {
    CALL    = "${genesyscloud_script.chat_hours_script.id}"
    CHAT    = "${genesyscloud_script.chat_hours_script.id}"
    EMAIL   = "${genesyscloud_script.chat_hours_script.id}"
    MESSAGE = "${genesyscloud_script.chat_hours_script.id}"
  }
  division_id              = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  enable_manual_assignment = false
  media_settings_email {
    service_level_percentage  = 0.8
    alerting_timeout_sec      = 300
    service_level_duration_ms = 86400000
  }
}

resource "genesyscloud_architect_schedules" "hours_differentiator_schedule" {
  rrule       = "FREQ=WEEKLY;INTERVAL=2;BYDAY=MO,TU,WE,TH,FR"
  start       = "2023-06-02T09:00:00.000000"
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  end         = "2023-06-02T11:00:00.000000"
  name        = "hours_differentiator_schedule"
}

