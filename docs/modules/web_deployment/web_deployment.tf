terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.17.0"
    }
  }
}

#messenger deployment
resource "genesyscloud_webdeployments_deployment" "messenger_deployment" {
  name              = "${local.resource_name_prefix}_webmessage_deployment"
  status            = "Active"
  allow_all_domains = true
  configuration {
    id      = "${genesyscloud_webdeployments_configuration.messagenger_config.id}"
    version = "2"
  }
  flow_id = var.flowId
}

#messenger config
resource "genesyscloud_webdeployments_configuration" "messagenger_config" {
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
  name             = "${local.resource_name_prefix}_webmessage_config"
  status           = "Active"
  default_language = "en-us"
  languages        = ["en-us"]
}
