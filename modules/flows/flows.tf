terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.17.0"
    }
  }
}


resource "genesyscloud_flow" "webmessage_schedule_hours" {
  filepath = "${path.module}/webmessage_flow.yaml"
  file_content_hash = filesha256("${path.module}/webmessage_flow.yaml")

  substitutions = {
    flow_name = "WebMessageScheduleHours"
    default_language = "en-us"
  }
}

resource "genesyscloud_flow" "webmessage_bot" {
  filepath = "${path.module}/webmessage_bot_flow.yaml"
  file_content_hash = filesha256("${path.module}/webmessage_bot_flow.yaml")
  substitutions = {
    flow_name = "WebMessageBot"
    default_language = "en-us"
  }
}