terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.17.0"
    }
  }
}


resource "genesyscloud_webdeployments_deployment" "zino_messaging_deployment" {
  name              = "zino_messaging_deployment"
  status            = "Active"
  allow_all_domains = true
  configuration {
    id      = "${genesyscloud_webdeployments_configuration.zino_message_config.id}"
    version = "2"
  }
  flow_id = "e204d4b7-1b57-487b-99f6-04f355d63810"
}

resource "genesyscloud_webdeployments_configuration" "zino_message_config" {
  messenger {
    enabled = true
    file_upload {
      mode {
        file_types       = ["image/jpeg", "image/gif", "image/png"]
        max_file_size_kb = 10240
      }
    }
    launcher_button {
      visibility = "On"
    }
    styles {
      primary_color = "#0D6EFD"
    }
  }
  cobrowse {
    allow_agent_control = true
    enabled             = false
  }
  journey_events {
    should_keep_url_fragment = false
    enabled                  = false
  }
  name             = "zino_message_config"
  status           = "Active"
  default_language = "en-us"
  languages        = ["en-us"]
}
