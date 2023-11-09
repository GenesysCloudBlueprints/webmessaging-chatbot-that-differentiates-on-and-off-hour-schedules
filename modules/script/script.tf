terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.17.0"
    }
  }
}


resource "genesyscloud_script" "script" {
  script_name       = "webmessaging_script"
  filepath          = "${path.module}/webmessaging_script.script"
  file_content_hash = filesha256("${path.module}/webmessaging_script.script")
  
}