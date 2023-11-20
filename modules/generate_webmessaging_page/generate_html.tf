terraform {
  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
      version = ">=1.17.0"
    }
  }
}
resource "local_file" "create_html_file" {
  content = templatefile("${path.module}/templates/index.html.tftpl",
    { genesyscloud_scripting_env = "${var.genesyscloud_scripting_env}",
      genesyscloud_scripting_url = "${var.genesyscloud_scripting_url}",
  genesyscloud_webmessaging_deploymentid = "${var.genesyscloud_webmessaging_deploymentid}" })
  filename = "${path.module}/../../web/index.html"
}
