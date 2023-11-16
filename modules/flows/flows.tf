terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.17.0"
    }
  }
}

#Inbound message flow
resource "genesyscloud_flow" "webmessage_schedule_hours" {
  filepath = "${path.module}/webmessage_flow.yaml"
  file_content_hash = filesha256("${path.module}/webmessage_flow.yaml")
  substitutions = {
    flow_name = "${local.resource_name_prefix}_webmessage_flow"
    default_language = "en-us"
    acd_queue_name = var.queueName
    schedule_name = var.scheduleName
  }
}

#Bot flow
resource "genesyscloud_flow" "webmessage_bot" {
  filepath = "${path.module}/webmessage_bot_flow.yaml"
  file_content_hash = filesha256("${path.module}/webmessage_bot_flow.yaml")
  substitutions = {
    flow_name = "${local.resource_name_prefix}_webmessage_bot"
    default_language = "en-us"
  }
}