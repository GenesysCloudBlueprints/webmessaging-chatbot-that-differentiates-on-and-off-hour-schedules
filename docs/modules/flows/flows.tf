terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      # version = ">=1.6.0"
    }
  }
}

#Inbound message flow
resource "genesyscloud_flow" "webmessage_schedule_hours" {
  filepath          = "${path.module}/webmessage_flow.yaml"
  substitutions = {
    on_hours_queue_name   = var.onHoursQueueName
    off_hours_queue_name  = var.offHoursQueueName
    schedule_name         = var.scheduleName
  }
}

#Bot flow
resource "genesyscloud_flow" "webmessage_bot" {
  filepath          = "${path.module}/webmessage_bot_flow.yaml"
}