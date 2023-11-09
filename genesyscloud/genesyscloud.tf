terraform {
  required_providers {
    genesyscloud = {
      source  = "registry.terraform.io/mypurecloud/genesyscloud"
      version = "1.17.0"
    }
  }
}

resource "genesyscloud_widget_deployment" "zino_chat_hours_widget" {
  authentication_required = false
  disabled                = false
  name                    = "zino_chat_hours_widget"
  client_type             = "v2"
  flow_id                 = "43396d88-040e-425b-a56d-8b185ed85d7b"
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
  cobrowse {
    allow_agent_control = true
    enabled             = false
  }
  journey_events {
    should_keep_url_fragment = false
    enabled                  = false
  }
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
  name             = "zino_message_config"
  default_language = "en-us"
  languages        = ["en-us"]
  status           = "Active"
}

resource "genesyscloud_user" "_989dba59-a3e0-e8db-c3a0-c9866d756020_mypurecloud_com_1018173693" {
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  state           = "active"
  email           = "989dba59-a3e0-e8db-c3a0-c9866d756020@mypurecloud.com"
}

resource "genesyscloud_user" "ebenezerokyere21_gmail_com_3616270450" {
  name            = "Kurosaki Ichigo"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "ebenezerokyere21@gmail.com"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "recording_buddy_genesys_com_811247035" {
  name            = "recording buddy"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "recording.buddy@genesys.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-5797caa6-6036-4100-88d2-9b5406ed90ee_example_com_1892575192" {
  email           = "terraform-5797caa6-6036-4100-88d2-9b5406ed90ee@example.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "d34db063-361c-4c7f-a8e4-618edeaf6a94_mypurecloud_com_1109582720" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  email           = "d34db063-361c-4c7f-a8e4-618edeaf6a94@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "mj005_waynecorp_com_3003327758" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "mj005@waynecorp.com"
  name            = "Michael Billy Jackson"
}

resource "genesyscloud_user" "f597ef9d-068a-4366-acce-200bf279eb06_mypurecloud_com_377042927" {
  email           = "f597ef9d-068a-4366-acce-200bf279eb06@mypurecloud.com"
  manager         = "${genesyscloud_user.hollywoo_princess_carolyn_mydevspace_com_1381035672.id}"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "test_webrtc_user_79346753-ef71-4a2d-ac4f-43b8d5270be8_test_com_3183142241" {
  email           = "test_webrtc_user_79346753-ef71-4a2d-ac4f-43b8d5270be8@test.com"
  name            = "test_webrtc_user_79346753-ef71-4a2d-ac4f-43b8d5270be8"
  acd_auto_answer = false
  department      = "Development"
  title           = "Senior Director"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-92864fa5-5f25-49f3-ac7f-12edb36f9623_example_com_2929014952" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-92864fa5-5f25-49f3-ac7f-12edb36f9623@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_03ec5846-fc24-ec86-d49c-581796e62b28_mypurecloud_com_2556772839" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "03ec5846-fc24-ec86-d49c-581796e62b28@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "terraform2-d8b8282c-65fe-4e0b-ba2f-9e8e175201b9_example_com_2212573048" {
  name            = "Ryan Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform2-d8b8282c-65fe-4e0b-ba2f-9e8e175201b9@example.com"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "terraform-39dee0c1-4993-456b-9eac-8d9fd47ab8bf_example_com_1025230090" {
  state           = "active"
  name            = "Role Terraform"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-39dee0c1-4993-456b-9eac-8d9fd47ab8bf@example.com"
}

resource "genesyscloud_user" "_6984725d-a1f3-434e-ab98-bfc8bb2ad3af_mypurecloud_com_513169813" {
  name            = ".NET SDK Tester"
  state           = "active"
  acd_auto_answer = false
  email           = "6984725d-a1f3-434e-ab98-bfc8bb2ad3af@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "testroddy_genesys_com_980889322" {
  acd_auto_answer = false
  name            = "Test Roddy"
  email           = "testroddy@genesys.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_70b30332-8163-4a47-908c-1f9dd0361b9b_mypurecloud_com_3850467532" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "70b30332-8163-4a47-908c-1f9dd0361b9b@mypurecloud.com"
  name            = "GO SDK Tester"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "terraform-6de4ffbc-4135-42f5-b444-fe128f9c0f1d_example_com_643035398" {
  acd_auto_answer = false
  name            = "Lang Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "terraform-6de4ffbc-4135-42f5-b444-fe128f9c0f1d@example.com"
  routing_languages {
    language_id = "1fe617e2-16de-46c2-9aca-524786017d0b"
    proficiency = 1
  }
}

resource "genesyscloud_user" "johndoe400_genesys_com_934400637" {
  name            = "john doe400"
  email           = "johndoe400@genesys.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_00a52863-abb3-e081-4e7d-789a01c318ef_mypurecloud_com_477406038" {
  name            = "JS SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  email           = "00a52863-abb3-e081-4e7d-789a01c318ef@mypurecloud.com"
}

resource "genesyscloud_user" "groupmember4_genesystest_com_2042437739" {
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 4"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember4@genesystest.com"
}

resource "genesyscloud_user" "b67c2361-b977-4378-b275-53a89799db45_mypurecloud_com_1470428904" {
  name            = "GO SDK Tester"
  email           = "b67c2361-b977-4378-b275-53a89799db45@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "_904c34a8-77ed-2cd7-a468-075de661308d_mypurecloud_com_250234628" {
  department      = "Ministry of Testing"
  email           = "904c34a8-77ed-2cd7-a468-075de661308d@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "notanemail_example_com5e4194c9-1d5c-4146-9d30-15ba2d921413_3404841405" {
  acd_auto_answer = false
  email           = "notanemail@example.com5e4194c9-1d5c-4146-9d30-15ba2d921413"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-user7bcb2cb4-a056-4c9a-ad26-6e8be9d5df52"
  state           = "active"
}

resource "genesyscloud_user" "groupmember16_genesystest_com_2935334202" {
  email           = "groupmember16@genesystest.com"
  name            = "Group Member 16"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_0c11dc75-1593-fc99-0389-50160b42f8d4_mypurecloud_com_3765499294" {
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  state           = "active"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "0c11dc75-1593-fc99-0389-50160b42f8d4@mypurecloud.com"
}

resource "genesyscloud_user" "test_webrtc_user_efb593a8-7b7c-4bf9-831a-45437919f605_test_com_1510518132" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  title           = "Senior Director"
  department      = "Development"
  email           = "test_webrtc_user_efb593a8-7b7c-4bf9-831a-45437919f605@test.com"
  name            = "test_webrtc_user_efb593a8-7b7c-4bf9-831a-45437919f605"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform1-61c20d19-e33d-4df4-b672-42fc2593a04e_example_com_691107690" {
  email           = "terraform1-61c20d19-e33d-4df4-b672-42fc2593a04e@example.com"
  name            = "Henry Terraform"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "hemanth_dogiparthi_genesys_com_3788883316" {
  state           = "active"
  acd_auto_answer = false
  email           = "hemanth.dogiparthi@genesys.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Hemanth Dogiparthi"
}

resource "genesyscloud_user" "_7acd07c8-2097-5506-a518-28dc03441a75_mypurecloud_com_368582121" {
  email           = "7acd07c8-2097-5506-a518-28dc03441a75@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "hollywoo_vincent_adultman_mydevspace_com_2025854156" {
  name            = "Vincent Adultman"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Adults Only"
  email           = "hollywoo+vincent.adultman@mydevspace.com"
  state           = "active"
  title           = "Business"
}

resource "genesyscloud_user" "notanemail_example_com9f4007c5-6b5d-4118-975c-70ad4423f7e2_3832975778" {
  state           = "active"
  acd_auto_answer = false
  email           = "notanemail@example.com9f4007c5-6b5d-4118-975c-70ad4423f7e2"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-usera0ccc652-7cf2-4165-b8ea-74560d1f9c2a"
}

resource "genesyscloud_user" "terraform2-a963a108-d35c-4437-9c81-dce1ead4bbc6_example_com_850106358" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "terraform2-a963a108-d35c-4437-9c81-dce1ead4bbc6@example.com"
  name            = "Amanda Terraform"
}

resource "genesyscloud_user" "terraform-e38fb61f-1f9a-4906-851a-d814fa4d70e1_example_com_2252097184" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Role Terraform"
  acd_auto_answer = false
  email           = "terraform-e38fb61f-1f9a-4906-851a-d814fa4d70e1@example.com"
}

resource "genesyscloud_user" "_7752037c-676c-4981-987c-406d3b5449c3_mypurecloud_com_1241117075" {
  name            = "Java SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "7752037c-676c-4981-987c-406d3b5449c3@mypurecloud.com"
}

resource "genesyscloud_user" "_75b458c5-cb39-4b9e-b9c8-6878aca50a79_mypurecloud_com_3403210201" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "75b458c5-cb39-4b9e-b9c8-6878aca50a79@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "_09fcdcfc-7ac4-4f9a-838c-401cfac1c3bc_mypurecloud_com_3852999990" {
  email           = "09fcdcfc-7ac4-4f9a-838c-401cfac1c3bc@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "testmjroddy_genesys_com_769706373" {
  name            = "Test MJ Roddy"
  state           = "active"
  email           = "testmjroddy@genesys.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_59c3f4f5-1e9d-450a-981d-ef673167f522_mypurecloud_com_1202050059" {
  state           = "active"
  acd_auto_answer = false
  email           = "59c3f4f5-1e9d-450a-981d-ef673167f522@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_8b986c69-7745-4ebc-a1cb-ba7a2dc4487b_mypurecloud_com_4290137473" {
  email           = "8b986c69-7745-4ebc-a1cb-ba7a2dc4487b@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "notanemail_example_comdf89cf8c-2fab-4cb2-8fca-77caec2847a4_1970082833" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.comdf89cf8c-2fab-4cb2-8fca-77caec2847a4"
  acd_auto_answer = false
  name            = "terraform-userbc479f5f-cf4d-4095-8be3-81d861e1d5e9"
  state           = "active"
}

resource "genesyscloud_user" "terraform-d29fc16b-2819-40d8-a6c2-67d1923740ca_example_com_2158881765" {
  email           = "terraform-d29fc16b-2819-40d8-a6c2-67d1923740ca@example.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "test_webrtc_user_cf94ac9d-6d3a-416f-97ed-b9aaa1ad69b3_test_com_4220035686" {
  name            = "test_webrtc_user_cf94ac9d-6d3a-416f-97ed-b9aaa1ad69b3"
  acd_auto_answer = false
  state           = "active"
  title           = "Senior Director"
  email           = "test_webrtc_user_cf94ac9d-6d3a-416f-97ed-b9aaa1ad69b3@test.com"
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_86d757b1-e158-48aa-9826-798227e504eb_mypurecloud_com_2531376493" {
  acd_auto_answer = false
  email           = "86d757b1-e158-48aa-9826-798227e504eb@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "user3_email_com_3188248214" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "user3@email.com"
  name            = "user3"
}

resource "genesyscloud_user" "notanemail_example_com98cdd5ef-c6cf-4b1e-9a5e-d5fc7205389b_428437980" {
  acd_auto_answer = false
  name            = "terraform-userc93c2bbc-87ea-4413-9cf6-e8296fb12939"
  email           = "notanemail@example.com98cdd5ef-c6cf-4b1e-9a5e-d5fc7205389b"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "bfdd66cc-0518-4b6a-a610-1a90ed70203b_mypurecloud_com_793325890" {
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "bfdd66cc-0518-4b6a-a610-1a90ed70203b@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform1-b2c156c3-d791-407b-8b86-187121333ffc_example_com_3818827161" {
  state           = "active"
  name            = "Henry Terraform"
  email           = "terraform1-b2c156c3-d791-407b-8b86-187121333ffc@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform2-af8d711a-0100-4f04-b9fb-eb87459ee584_example_com_3686854695" {
  email           = "terraform2-af8d711a-0100-4f04-b9fb-eb87459ee584@example.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Ryan Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember12_genesystest_com_1966964230" {
  name            = "Group Member 12"
  email           = "groupmember12@genesystest.com"
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-9e6ebdc6-b429-4366-8343-f95c927d0f8d_example_com_532252682" {
  email           = "terraform-9e6ebdc6-b429-4366-8343-f95c927d0f8d@example.com"
  name            = "John Data-0b8c6304-48f1-4218-b4b4-91b1099cab3e"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_562f19cc-1a24-4c1f-9510-c88f5aafd07b_mypurecloud_com_92706032" {
  email           = "562f19cc-1a24-4c1f-9510-c88f5aafd07b@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = ".NET SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "terraform-b3bbea4b-6968-452c-a7b9-2392d36b5988_example_com_79220421" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-b3bbea4b-6968-452c-a7b9-2392d36b5988@example.com"
  name            = "Role Terraform"
  acd_auto_answer = false
}

resource "genesyscloud_user" "be8baf2f-ad33-48c5-9e75-b4081f801362_mypurecloud_com_728895493" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "be8baf2f-ad33-48c5-9e75-b4081f801362@mypurecloud.com"
  state           = "active"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember47_genesystest_com_1816694720" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 47"
  email           = "groupmember47@genesystest.com"
}

resource "genesyscloud_user" "terraform-ab1e21d7-d358-40a6-a84a-1448a244015b_example_com_3279162681" {
  email           = "terraform-ab1e21d7-d358-40a6-a84a-1448a244015b@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  name            = "Role Terraform"
  state           = "active"
}

resource "genesyscloud_user" "notanemail_example_com3cf8bf07-43d1-4f88-9a53-71ea485d0ba9_3480168124" {
  acd_auto_answer = false
  email           = "notanemail@example.com3cf8bf07-43d1-4f88-9a53-71ea485d0ba9"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-userf12fe3df-b761-48fc-a483-25f6c4ae1c68"
  state           = "active"
}

resource "genesyscloud_user" "terraform-63205f19-f545-4546-984b-cdeeb3be1299_example_com_3828857591" {
  name            = "Role Terraform"
  email           = "terraform-63205f19-f545-4546-984b-cdeeb3be1299@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_3705d84a-28d2-45d8-9264-9f1d3eb13c49_mypurecloud_com_2188481023" {
  email           = "3705d84a-28d2-45d8-9264-9f1d3eb13c49@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  name            = "GO SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember42_genesystest_com_2561508933" {
  email           = "groupmember42@genesystest.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 42"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-cd444438-be6d-442f-99c6-b91ce03fa66e_example_com_359930750" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-cd444438-be6d-442f-99c6-b91ce03fa66e@example.com"
  acd_auto_answer = false
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_2006fd4e-18d9-7dda-57ec-2ccd5d63e825_mypurecloud_com_4281506008" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "2006fd4e-18d9-7dda-57ec-2ccd5d63e825@mypurecloud.com"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "test_webrtc_user_ebd0bd83-1953-456e-84a4-00b8f36b15fa_test_com_182936114" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  department      = "Development"
  email           = "test_webrtc_user_ebd0bd83-1953-456e-84a4-00b8f36b15fa@test.com"
  name            = "test_webrtc_user_ebd0bd83-1953-456e-84a4-00b8f36b15fa"
  title           = "Senior Director"
}

resource "genesyscloud_user" "f01bdf01-f954-4f1d-81ca-c6ba778c7e66_mypurecloud_com_2994007300" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "f01bdf01-f954-4f1d-81ca-c6ba778c7e66@mypurecloud.com"
  name            = "Python SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_93582dd7-bf0c-e401-9fd1-d64a4cdce684_mypurecloud_com_4047085540" {
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "93582dd7-bf0c-e401-9fd1-d64a4cdce684@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "c953f4a2-09d9-4971-a466-e58d1d1efe58_mypurecloud_com_1914038799" {
  department      = "Ministry of Testing"
  state           = "active"
  email           = "c953f4a2-09d9-4971-a466-e58d1d1efe58@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  name            = ".NET SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-3fa38ec0-c97b-4d3d-b15e-d173e9b6de08_example_com_3181699663" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  acd_auto_answer = false
  email           = "terraform-3fa38ec0-c97b-4d3d-b15e-d173e9b6de08@example.com"
}

resource "genesyscloud_user" "danna_shirley_genesys_com_3066598670" {
  acd_auto_answer = false
  email           = "danna.shirley@genesys.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Danna Shirley"
  state           = "active"
}

resource "genesyscloud_user" "e35041c9-0296-4ac2-a654-003e554e9b11_mypurecloud_com_2981283740" {
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  email           = "e35041c9-0296-4ac2-a654-003e554e9b11@mypurecloud.com"
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "Updatedemail_codeeditor_com_337546887" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "Updatedemail@codeeditor.com"
  name            = "CodeEditor Updated again"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_05150874-e31f-2509-d769-b76f26985ca7_mypurecloud_com_1235842818" {
  state           = "active"
  email           = "05150874-e31f-2509-d769-b76f26985ca7@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "employee_relatetest_com_3386861569" {
  acd_auto_answer = false
  name            = "employee"
  email           = "employee@relatetest.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-34791081-0738-41d3-88e3-577f2b4f0860_example_com_1624605615" {
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-34791081-0738-41d3-88e3-577f2b4f0860@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "fe9a8765-eb35-44ff-90c1-410986ac0b15_mypurecloud_com_1338399498" {
  acd_auto_answer = false
  email           = "fe9a8765-eb35-44ff-90c1-410986ac0b15@mypurecloud.com"
  name            = "Java SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "justine_biebierr_example_com_1862244497" {
  acd_auto_answer = true
  addresses {
    phone_numbers {
      number     = "+19002651561"
      type       = "MOBILE"
      media_type = "PHONE"
    }
  }
  division_id    = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department     = "Development"
  email          = "justine_biebierr@example.com"
  name           = "justine_biebier"
  profile_skills = ["Go", "Java"]
  state          = "active"
  title          = "Executive Officer"
}

resource "genesyscloud_user" "_9fd27071-63d1-4ee0-b27f-7d1d8f1f7c7b_mypurecloud_com_2208965726" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "9fd27071-63d1-4ee0-b27f-7d1d8f1f7c7b@mypurecloud.com"
  state           = "active"
  name            = "Java SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_6c951976-e38b-2dbd-856f-6fe3eefcfd0a_mypurecloud_com_3341991756" {
  state           = "active"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  email           = "6c951976-e38b-2dbd-856f-6fe3eefcfd0a@mypurecloud.com"
  name            = "JS SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember15_genesystest_com_3528342973" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 15"
  state           = "active"
  email           = "groupmember15@genesystest.com"
}

resource "genesyscloud_user" "af2d95f9-228d-44f1-9cc6-7d0d93ba85b7_mypurecloud_com_1442312525" {
  state           = "active"
  email           = "af2d95f9-228d-44f1-9cc6-7d0d93ba85b7@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Kotlin SDK Tester"
}

resource "genesyscloud_user" "ed7b9ff2-b00d-0bf6-1d77-cb5afb12b372_mypurecloud_com_3060631963" {
  state           = "active"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "ed7b9ff2-b00d-0bf6-1d77-cb5afb12b372@mypurecloud.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_65b60f5d-198d-4e62-8ebb-20bbe6ee4052_mypurecloud_com_1921511925" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "65b60f5d-198d-4e62-8ebb-20bbe6ee4052@mypurecloud.com"
  name            = "Java SDK Tester"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember37_genesystest_com_1194612437" {
  name            = "Group Member 37"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember37@genesystest.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "hollywoo_princess_carolyn_mydevspace_com_1381035672" {
  acd_auto_answer = false
  addresses {
    phone_numbers {
      type       = "WORK"
      extension  = "1008"
      media_type = "PHONE"
    }
  }
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email       = "hollywoo+princess.carolyn@mydevspace.com"
  employer_info {
    official_name = "Ms. Princess Carolyn"
    employee_id   = "99887766"
    employee_type = "Full-time"
  }
  manager = "${genesyscloud_user.hollywoo_mydevspace_com_1242694302.id}"
  routing_languages {
    language_id = "b7754fad-7471-4c08-9a9d-b211720c042d"
    proficiency = 4
  }
  routing_skills {
    proficiency = 3
    skill_id    = "fc47fb1d-e789-4fc8-b73a-da4402c2b72a"
  }
  title      = "Talent Agent"
  department = "HR"
  name       = "Princess Carolyn"
  state      = "active"
}

resource "genesyscloud_user" "_1a361114-6df7-4704-aed8-d00beab47ef2_mypurecloud_com_2098599273" {
  name            = "Java SDK Tester"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "1a361114-6df7-4704-aed8-d00beab47ef2@mypurecloud.com"
}

resource "genesyscloud_user" "a339809d-fbbe-0ce6-3e86-a0d4ea1e5949_mypurecloud_com_1698750509" {
  email           = "a339809d-fbbe-0ce6-3e86-a0d4ea1e5949@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "b75e7998-367c-4eab-8a72-6c88fbcf1f98_mypurecloud_com_2515915374" {
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Python SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "b75e7998-367c-4eab-8a72-6c88fbcf1f98@mypurecloud.com"
}

resource "genesyscloud_user" "c32b6f0d-b651-7ede-693d-f11439755be9_mypurecloud_com_1540906831" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "c32b6f0d-b651-7ede-693d-f11439755be9@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "john_example_example_com_2520920561" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "john.example@example.com"
  name            = "John Example"
}

resource "genesyscloud_user" "terraform-05b4a509-fd2a-4be3-80e8-653cf5243ac9_example_com_1518309515" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-05b4a509-fd2a-4be3-80e8-653cf5243ac9@example.com"
  name            = "John Data-b3031b09-9731-4ac2-8057-a26f305a0938"
  state           = "active"
}

resource "genesyscloud_user" "terraform-dbf01aec-896b-43f0-a35e-c8c752b995b7_example_com_1804650055" {
  state           = "active"
  name            = "John Data-06aee5c2-3522-4472-b4f8-56c59091ddac"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform-dbf01aec-896b-43f0-a35e-c8c752b995b7@example.com"
}

resource "genesyscloud_user" "test_webrtc_user_f8194fbd-5132-46f9-aeb8-437f2fdf1fc4_test_com_1993071095" {
  state           = "active"
  department      = "Development"
  name            = "test_webrtc_user_f8194fbd-5132-46f9-aeb8-437f2fdf1fc4"
  acd_auto_answer = false
  title           = "Senior Director"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "test_webrtc_user_f8194fbd-5132-46f9-aeb8-437f2fdf1fc4@test.com"
}

resource "genesyscloud_user" "terraform-92537282-e3cf-42e6-8d4f-29d9964394d6_example_com_1210437378" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform-92537282-e3cf-42e6-8d4f-29d9964394d6@example.com"
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "groupmember22_genesystest_com_733487099" {
  state           = "active"
  acd_auto_answer = false
  email           = "groupmember22@genesystest.com"
  name            = "Group Member 22"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "test_webrtc_user_b696f750-9137-4d8f-92b7-1a96a278d656_test_com_1220770112" {
  acd_auto_answer = false
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "test_webrtc_user_b696f750-9137-4d8f-92b7-1a96a278d656@test.com"
  name            = "test_webrtc_user_b696f750-9137-4d8f-92b7-1a96a278d656"
  title           = "Senior Director"
  state           = "active"
}

resource "genesyscloud_user" "e016fd75-cf02-42f7-980b-e14ba8673390_mypurecloud_com_3138933251" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
  name            = "GO SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e016fd75-cf02-42f7-980b-e14ba8673390@mypurecloud.com"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "terraform-26917daf-9efb-443a-baac-4b835627cb34_example_com_1471170421" {
  state           = "active"
  email           = "terraform-26917daf-9efb-443a-baac-4b835627cb34@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  acd_auto_answer = false
}

resource "genesyscloud_user" "z_1234_gmail_com_1300504831" {
  acd_auto_answer = false
  email           = "z+1234@gmail.com"
  state           = "active"
  name            = "Gon"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember24_genesystest_com_36440697" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 24"
  email           = "groupmember24@genesystest.com"
}

resource "genesyscloud_user" "promote_user_relatetest_com_233379007" {
  acd_auto_answer = false
  email           = "promote_user@relatetest.com"
  name            = "promote_user"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "hdoar_gmail_com_3029909430" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  email           = "hdoar@gmail.com"
  name            = ".NET SDK Tester"
}

resource "genesyscloud_user" "dd80d011-de7f-e963-b9d8-d2bfd7235ee4_mypurecloud_com_3088266520" {
  email           = "dd80d011-de7f-e963-b9d8-d2bfd7235ee4@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
}

resource "genesyscloud_user" "_3168c2d0-f7a4-44e1-a277-d6a3bcf8be62_mypurecloud_com_2727722649" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "3168c2d0-f7a4-44e1-a277-d6a3bcf8be62@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "_2fcac3dc-2423-35c7-54ec-240f880df5d1_mypurecloud_com_2284638046" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
  name            = "JS SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "2fcac3dc-2423-35c7-54ec-240f880df5d1@mypurecloud.com"
}

resource "genesyscloud_user" "terraform1-66cecc31-8b91-4f21-94b8-5be459378e9e_example_com_1057599983" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Henry Terraform"
  email           = "terraform1-66cecc31-8b91-4f21-94b8-5be459378e9e@example.com"
}

resource "genesyscloud_user" "johndoe501_genesys_com_1813062901" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  name            = "john doe501"
  email           = "johndoe501@genesys.com"
}

resource "genesyscloud_user" "charlie_conneely_genesys_com_3029553671" {
  routing_skills {
    proficiency = 0
    skill_id    = "89266ce6-1464-4e51-a732-af2c6cfe6d6b"
  }
  routing_skills {
    skill_id    = "b92c4e4a-b74f-4142-921f-ca98471396e1"
    proficiency = 0
  }
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+13175555007"
      type       = "HOME"
    }
    phone_numbers {
      number     = "+353879342961"
      type       = "WORK"
      media_type = "PHONE"
    }
  }
  locations {
    location_id = "2b06673d-7658-4f5c-9c20-7409eac00617"
  }
  acd_auto_answer = false
  name            = "Charlie Conneely"
  state           = "active"
  email           = "charlie.conneely@genesys.com"
}

resource "genesyscloud_user" "_8b97a733-d5c5-e13c-e137-e08239e0ad4f_mypurecloud_com_1390313631" {
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "8b97a733-d5c5-e13c-e137-e08239e0ad4f@mypurecloud.com"
  name            = "JS SDK Tester"
  department      = "Ministry of Testing"
  state           = "active"
}

resource "genesyscloud_user" "deerghayu_shrestha_genesys_com_2065073142" {
  name            = "Deerghayu Shrestha"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "deerghayu.shrestha@genesys.com"
  state           = "active"
}

resource "genesyscloud_user" "terraform-167e3f80-739b-4444-82af-725584091ba8_example_com_1669621027" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "terraform-167e3f80-739b-4444-82af-725584091ba8@example.com"
  name            = "Skill Terraform"
  routing_skills {
    proficiency = 1.5
    skill_id    = "4a0431d4-dcec-421e-90bd-6449441ff15e"
  }
}

resource "genesyscloud_user" "terraform2-eef6d827-8f28-4efc-8424-d43898ce5e82_example_com_4087310300" {
  email           = "terraform2-eef6d827-8f28-4efc-8424-d43898ce5e82@example.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Amanda Terraform"
  acd_auto_answer = false
}

resource "genesyscloud_user" "mj001_waynecorp_com_206948570" {
  acd_auto_answer = false
  email           = "mj001@waynecorp.com"
  name            = "Michael Billy Jackson"
  division_id     = "c7bc65be-1366-4c78-8a26-d148116294a1"
  state           = "active"
}

resource "genesyscloud_user" "_25740038-d0e4-4f2b-92cf-d733a0e1fe6c_mypurecloud_com_3381746927" {
  email           = "25740038-d0e4-4f2b-92cf-d733a0e1fe6c@mypurecloud.com"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "caea7def-3fe6-44ab-9140-f832aeb6604c_mypurecloud_com_3426150906" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "caea7def-3fe6-44ab-9140-f832aeb6604c@mypurecloud.com"
}

resource "genesyscloud_user" "f6295658-cf41-456f-88d3-e0c5aa6abd5b_mypurecloud_com_1807328649" {
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  state           = "active"
  email           = "f6295658-cf41-456f-88d3-e0c5aa6abd5b@mypurecloud.com"
}

resource "genesyscloud_user" "test_webrtc_user_cee09e2d-f27f-44fd-9ec5-aa46cd452864_test_com_1711120313" {
  email           = "test_webrtc_user_cee09e2d-f27f-44fd-9ec5-aa46cd452864@test.com"
  title           = "Senior Director"
  acd_auto_answer = false
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "test_webrtc_user_cee09e2d-f27f-44fd-9ec5-aa46cd452864"
  state           = "active"
}

resource "genesyscloud_user" "groupmember5_genesystest_com_914891994" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  email           = "groupmember5@genesystest.com"
  name            = "Group Member 5"
}

resource "genesyscloud_user" "_59eac65e-1733-f8f1-ad69-040d881d1aa8_mypurecloud_com_3596999291" {
  acd_auto_answer = false
  name            = "JS SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "59eac65e-1733-f8f1-ad69-040d881d1aa8@mypurecloud.com"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "_41971b15-5aa0-4178-94d4-1e441bbeb998_mypurecloud_com_1479268111" {
  acd_auto_answer = false
  manager         = "${genesyscloud_user.hollywoo_princess_carolyn_mydevspace_com_1381035672.id}"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "41971b15-5aa0-4178-94d4-1e441bbeb998@mypurecloud.com"
}

resource "genesyscloud_user" "d3b37558-2f0d-4552-8175-b37a0d745cb8_mypurecloud_com_3440889683" {
  email           = "d3b37558-2f0d-4552-8175-b37a0d745cb8@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  name            = "GO SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember18_genesystest_com_4049682608" {
  email           = "groupmember18@genesystest.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 18"
}

resource "genesyscloud_user" "testmroddy_genesys_com_803687003" {
  state           = "active"
  name            = "Test M Roddy"
  email           = "testmroddy@genesys.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "e72fc0c5-a7f6-4f3e-821a-5ed421e53a52_mypurecloud_com_2421047474" {
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "e72fc0c5-a7f6-4f3e-821a-5ed421e53a52@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "edb08cc9-fe63-68f1-6c38-8912e5312b12_mypurecloud_com_587584157" {
  state           = "active"
  acd_auto_answer = false
  email           = "edb08cc9-fe63-68f1-6c38-8912e5312b12@mypurecloud.com"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "groupmember14_genesystest_com_4036418732" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 14"
  acd_auto_answer = false
  state           = "active"
  email           = "groupmember14@genesystest.com"
}

resource "genesyscloud_user" "dc85f3dc-9ade-4818-927f-dce6be164d90_mypurecloud_com_43537244" {
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "dc85f3dc-9ade-4818-927f-dce6be164d90@mypurecloud.com"
}

resource "genesyscloud_user" "a7ba488a-cd02-43e2-8020-e8a507e27e39_mypurecloud_com_1368416667" {
  department      = "Ministry of Testing"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "a7ba488a-cd02-43e2-8020-e8a507e27e39@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "hs001_kesselrun_com_3316008786" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "hs001@kesselrun.com"
  name            = "Han Solo"
  state           = "active"
}

resource "genesyscloud_user" "b8cbce1d-9168-4eab-a1fe-afc3178d1780_mypurecloud_com_105876733" {
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "b8cbce1d-9168-4eab-a1fe-afc3178d1780@mypurecloud.com"
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "_41ea382e-19a9-5db0-d153-7f025ae9a6df_mypurecloud_com_2510646626" {
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  email           = "41ea382e-19a9-5db0-d153-7f025ae9a6df@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "terraform-5a19318c-e20b-4ff8-ac6d-8d6a3b17394a_example_com_1009730954" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-5a19318c-e20b-4ff8-ac6d-8d6a3b17394a@example.com"
}

resource "genesyscloud_user" "_04d433b8-96c0-4c45-93fc-162c1faa42cf_mypurecloud_com_324379484" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "04d433b8-96c0-4c45-93fc-162c1faa42cf@mypurecloud.com"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "d7d94678-1b18-a700-30d6-6da8ff4153f2_mypurecloud_com_1129091401" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "d7d94678-1b18-a700-30d6-6da8ff4153f2@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "john2002_example_com_3162165789" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Doe"
  email           = "john2002@example.com"
  acd_auto_answer = false
  state           = "active"
  routing_skills {
    proficiency = 4
    skill_id    = "16582b03-a544-45d3-bc5d-c1dd91b8c27b"
  }
}

resource "genesyscloud_user" "_9592caf9-85b6-4c10-9392-fd8618b38d3e_mypurecloud_com_2897106145" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "9592caf9-85b6-4c10-9392-fd8618b38d3e@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-0ffdfebb-46fe-4e52-9a7a-07602f6d5726_example_com_4128548770" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-0ffdfebb-46fe-4e52-9a7a-07602f6d5726@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_58a26ec9-1ec7-7386-e039-78e8a5fd894b_mypurecloud_com_1242038994" {
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "58a26ec9-1ec7-7386-e039-78e8a5fd894b@mypurecloud.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "notanemail_example_com3b64f58a-7bb0-4861-ac57-f1ca638b4fc5_1015966413" {
  email           = "notanemail@example.com3b64f58a-7bb0-4861-ac57-f1ca638b4fc5"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-user2e4c2569-25be-4ab7-ad18-e0a11befed35"
}

resource "genesyscloud_user" "terraform-a2eceb0d-7407-42c4-9afe-5630788878ed_example_com_3606802334" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-a2eceb0d-7407-42c4-9afe-5630788878ed@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "test_webrtc_user_76ed3d9b-b392-4581-850d-b1f6e354d4fc_test_com_2066318237" {
  title           = "Senior Director"
  email           = "test_webrtc_user_76ed3d9b-b392-4581-850d-b1f6e354d4fc@test.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Development"
  name            = "test_webrtc_user_76ed3d9b-b392-4581-850d-b1f6e354d4fc"
  state           = "active"
}

resource "genesyscloud_user" "groupmember32_genesystest_com_848763728" {
  state           = "active"
  name            = "Group Member 32"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember32@genesystest.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_55264dd0-0165-6fdd-7851-ee032d0b73d8_mypurecloud_com_2994471681" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  email           = "55264dd0-0165-6fdd-7851-ee032d0b73d8@mypurecloud.com"
  name            = "JS SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "f3db1d76-5258-4fa2-959e-7387a5e18ea7_mypurecloud_com_806141313" {
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "f3db1d76-5258-4fa2-959e-7387a5e18ea7@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-e41114c5-ad7a-4026-984c-6c97fa64796d_example_com_3091697294" {
  email           = "terraform-e41114c5-ad7a-4026-984c-6c97fa64796d@example.com"
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "test_webrtc_user_94dee4fc-2347-411c-9ce8-223a9d3cf6ed_test_com_2592105895" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "test_webrtc_user_94dee4fc-2347-411c-9ce8-223a9d3cf6ed@test.com"
  title           = "Senior Director"
  acd_auto_answer = false
  department      = "Development"
  name            = "test_webrtc_user_94dee4fc-2347-411c-9ce8-223a9d3cf6ed"
}

resource "genesyscloud_user" "mj007_waynecorp_com_2983751432" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "mj007@waynecorp.com"
  name            = "Michael Billy Jackson"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "notanemail_example_com4ded12c1-e91f-4a05-94cf-9483711c4950_2954213477" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.com4ded12c1-e91f-4a05-94cf-9483711c4950"
  name            = "terraform-usere454e21d-648e-4615-81ad-7d3a6fdfefbf"
}

resource "genesyscloud_user" "groupmember39_genesystest_com_3557920343" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember39@genesystest.com"
  name            = "Group Member 39"
  state           = "active"
}

resource "genesyscloud_user" "terraform-38cd47bc-2391-4bc0-bdfa-dba9465b21a1_example_com_1414917842" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  email           = "terraform-38cd47bc-2391-4bc0-bdfa-dba9465b21a1@example.com"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "_89490230-f462-4661-8955-fda505b028ff_mypurecloud_com_2961762763" {
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  email           = "89490230-f462-4661-8955-fda505b028ff@mypurecloud.com"
  name            = "Python SDK Tester"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "omar_estrella_genesys_com_873392521" {
  email           = "omar.estrella@genesys.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Omar Estrella"
  acd_auto_answer = false
}

resource "genesyscloud_user" "vivian_hood_genesys_com_3907802887" {
  state           = "active"
  acd_auto_answer = false
  name            = "Vivian Hood"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "vivian.hood@genesys.com"
}

resource "genesyscloud_user" "groupmember40_genesystest_com_1429610195" {
  state           = "active"
  name            = "Group Member 40"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember40@genesystest.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "ca570883-b4c6-42c4-8d3e-1c2fc467310c_mypurecloud_com_1486532715" {
  state           = "active"
  department      = "Ministry of Testing"
  email           = "ca570883-b4c6-42c4-8d3e-1c2fc467310c@mypurecloud.com"
  name            = "GO SDK Tester"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "f397e1b5-98d4-41f2-8c11-44fb50055f8b_mypurecloud_com_475192773" {
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "f397e1b5-98d4-41f2-8c11-44fb50055f8b@mypurecloud.com"
}

resource "genesyscloud_user" "_14466b0e-3625-4036-b259-4b85eb56a468_mypurecloud_com_2408542984" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "14466b0e-3625-4036-b259-4b85eb56a468@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "johw22wn_example_com_3501059023" {
  certifications  = ["Certified Developer"]
  title           = "Executive Director"
  acd_auto_answer = true
  state           = "active"
  addresses {
    other_emails {
      type    = "HOME"
      address = "johe2n@gmail.com"
    }
  }
  department  = "Development"
  email       = "johw22wn@example.com"
  name        = "admin"
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "1234e5"
    employee_type = "Full-time"
    official_name = "Jonathone Doe"
  }
  profile_skills = ["Go", "Java"]
}

resource "genesyscloud_user" "groupmember44_genesystest_com_3954792447" {
  email           = "groupmember44@genesystest.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Group Member 44"
}

resource "genesyscloud_user" "terraform-06c7c9e5-8b9e-4887-92ef-580c290e1cdd_example_com_1867187048" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-06c7c9e5-8b9e-4887-92ef-580c290e1cdd@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "integration-generic-2027ba80-fa59-11eb-bd9c-65b1574e9a8f_webhook_com_2479394335" {
  acd_auto_answer = false
  email           = "integration-generic-2027ba80-fa59-11eb-bd9c-65b1574e9a8f@webhook.com"
  name            = "Generic"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "groupmember28_genesystest_com_2504889637" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember28@genesystest.com"
  state           = "active"
  name            = "Group Member 28"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-f20b2626-4c1c-4d61-9290-6bb70f3dc781_example_com_4162159032" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  name            = "Role Terraform"
  email           = "terraform-f20b2626-4c1c-4d61-9290-6bb70f3dc781@example.com"
}

resource "genesyscloud_user" "groupmember21_genesystest_com_2462939228" {
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 21"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember21@genesystest.com"
}

resource "genesyscloud_user" "groupmember43_genesystest_com_4292575316" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Group Member 43"
  acd_auto_answer = false
  email           = "groupmember43@genesystest.com"
}

resource "genesyscloud_user" "terraform-8a636eb3-b3e9-4452-a6b4-5b4a6a4d5590_example_com_1515815530" {
  state           = "active"
  email           = "terraform-8a636eb3-b3e9-4452-a6b4-5b4a6a4d5590@example.com"
  name            = "John Data-e5e41705-f467-464a-9104-d2c6f81d55d0"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember34_genesystest_com_508242450" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "groupmember34@genesystest.com"
  name            = "Group Member 34"
}

resource "genesyscloud_user" "dd835553-7729-4d12-bb16-cd38edda0052_mypurecloud_com_1431398304" {
  email           = "dd835553-7729-4d12-bb16-cd38edda0052@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Python SDK Tester"
}

resource "genesyscloud_user" "e1d326a9-206c-4a99-8e2d-e60a0cf237f7_mypurecloud_com_647444775" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  name            = ".NET SDK Tester"
  state           = "active"
  email           = "e1d326a9-206c-4a99-8e2d-e60a0cf237f7@mypurecloud.com"
}

resource "genesyscloud_user" "dbf319c1-b7c8-9598-ded1-e796752938c2_mypurecloud_com_3019884979" {
  name            = "JS SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
  email           = "dbf319c1-b7c8-9598-ded1-e796752938c2@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "terraform-bc072a51-74c5-4915-a0e2-114df28386c6_example_com_3329612186" {
  state           = "active"
  title           = "Senior Director"
  acd_auto_answer = false
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-bc072a51-74c5-4915-a0e2-114df28386c6@example.com"
  name            = "John Terraform"
}

resource "genesyscloud_user" "name_email_com_3138683645" {
  acd_auto_answer = false
  email           = "name@email.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "CX Code Schedule 74f6b39e-5420-4d17-b39b-92fcf8e2876e"
}

resource "genesyscloud_user" "_11d1e1cd-e157-d344-fed7-fa9ed2772c81_mypurecloud_com_1324020887" {
  name            = "JS SDK Tester"
  email           = "11d1e1cd-e157-d344-fed7-fa9ed2772c81@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "groupmember29_genesystest_com_127069108" {
  name            = "Group Member 29"
  state           = "active"
  email           = "groupmember29@genesystest.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "ronan_watkins_genesys_com_1904478919" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Ronan Watkins"
  state           = "active"
  email           = "ronan.watkins@genesys.com"
}

resource "genesyscloud_user" "terraform-06cbaaca-3669-4bf6-b8f6-45dbd973acee_example_com_1722466174" {
  email           = "terraform-06cbaaca-3669-4bf6-b8f6-45dbd973acee@example.com"
  state           = "active"
  acd_auto_answer = false
  name            = "John Data-6181ac65-ae8b-4f12-a03e-0086e0c404b1"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "b1e2561f-e7dd-2054-002e-315458eac19e_mypurecloud_com_2951455485" {
  acd_auto_answer = false
  email           = "b1e2561f-e7dd-2054-002e-315458eac19e@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "_9a66db66-b470-4ba2-87d6-4b7f6821fea0_mypurecloud_com_1236585238" {
  acd_auto_answer = false
  state           = "active"
  department      = "Ministry of Testing"
  email           = "9a66db66-b470-4ba2-87d6-4b7f6821fea0@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_38d5e938-27fd-a49d-19ec-820c61009056_mypurecloud_com_4286738503" {
  name            = "JS SDK Tester"
  email           = "38d5e938-27fd-a49d-19ec-820c61009056@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "notanemail_example_com06d355da-7969-4aa8-bec2-d03b290e16d8_2862723973" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.com06d355da-7969-4aa8-bec2-d03b290e16d8"
  acd_auto_answer = false
  name            = "terraform-user720f587f-8b83-4304-abb4-2901cbf3ba30"
  state           = "active"
}

resource "genesyscloud_user" "_1e3d9307-d4fc-4f01-8097-06829896dcb4_mypurecloud_com_608668468" {
  acd_auto_answer = false
  name            = "GO SDK Tester"
  state           = "active"
  email           = "1e3d9307-d4fc-4f01-8097-06829896dcb4@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "test-user123_genesys_com_760228254" {
  name            = "test-user123"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "test-user123@genesys.com"
}

resource "genesyscloud_user" "_5f494640-dd4e-4b5f-9de0-8dc37073a0c8_mypurecloud_com_2679248850" {
  name            = "Java SDK Tester"
  state           = "active"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "5f494640-dd4e-4b5f-9de0-8dc37073a0c8@mypurecloud.com"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "b13203d6-15d1-e55e-a8a8-488d286e4227_mypurecloud_com_1631609709" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "b13203d6-15d1-e55e-a8a8-488d286e4227@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-2733316b-9e8a-4ff5-bd5b-d1f271328bba_example_com_3959576262" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-2733316b-9e8a-4ff5-bd5b-d1f271328bba@example.com"
  name            = "John Data-f876c0dc-4179-48ef-a5ad-c7298671db60"
}

resource "genesyscloud_user" "_01057165-3f83-4a87-83b0-fc723767cfbe_mypurecloud_com_715371360" {
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "01057165-3f83-4a87-83b0-fc723767cfbe@mypurecloud.com"
}

resource "genesyscloud_user" "e5cd73ee-71d1-44a1-b71f-9f3c79b5bf56_mypurecloud_com_2808516380" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e5cd73ee-71d1-44a1-b71f-9f3c79b5bf56@mypurecloud.com"
  name            = "Java SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "mikerr_gmail_cpom_3094113648" {
  acd_auto_answer = false
  email           = "mikerr@gmail.cpom"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Mike Rutkowski2"
}

resource "genesyscloud_user" "e60ba9d5-4d94-40a9-aedd-f00b7fc29726_mypurecloud_com_3667348634" {
  email           = "e60ba9d5-4d94-40a9-aedd-f00b7fc29726@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember3_genesystest_com_2970040536" {
  acd_auto_answer = false
  state           = "active"
  email           = "groupmember3@genesystest.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 3"
}

resource "genesyscloud_user" "_7df688d2-33fc-4835-aea1-6c75c5cb53d3_mypurecloud_com_493381676" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "7df688d2-33fc-4835-aea1-6c75c5cb53d3@mypurecloud.com"
  acd_auto_answer = false
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
}

resource "genesyscloud_user" "integration-generic-65c7f130-c583-11e8-a69c-69af084b88cb_webhook_com_2607013911" {
  name            = "Generic"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "integration-generic-65c7f130-c583-11e8-a69c-69af084b88cb@webhook.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "wadams001_waynecorp_com_460668774" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "William Adams001"
  email           = "wadams001@waynecorp.com"
}

resource "genesyscloud_user" "f42709d2-ee18-7c95-c49e-f457654babfa_mypurecloud_com_3109049804" {
  state           = "active"
  acd_auto_answer = false
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "f42709d2-ee18-7c95-c49e-f457654babfa@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "db4a7a76-e27d-4087-9088-7c2bad832bac_mypurecloud_com_1033813735" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "db4a7a76-e27d-4087-9088-7c2bad832bac@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "c462f4b0-766d-424f-b925-02924d195c77_mypurecloud_com_2694027338" {
  email           = "c462f4b0-766d-424f-b925-02924d195c77@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Python SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "groupmember27_genesystest_com_2758099190" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember27@genesystest.com"
  name            = "Group Member 27"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-7cf53b5d-9c67-43ba-bf39-66d85ba37cea_example_com_231273148" {
  name            = "Role Terraform"
  email           = "terraform-7cf53b5d-9c67-43ba-bf39-66d85ba37cea@example.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember38_genesystest_com_3604959782" {
  email           = "groupmember38@genesystest.com"
  state           = "active"
  name            = "Group Member 38"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_0001e0c0-bdac-484f-a0e0-1f2143de6e9a_mypurecloud_com_2663929545" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  name            = ".NET SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "0001e0c0-bdac-484f-a0e0-1f2143de6e9a@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "integration-generic-20350e50-fa14-11eb-9a9c-150277b8798f_webhook_com_3120872343" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "integration-generic-20350e50-fa14-11eb-9a9c-150277b8798f@webhook.com"
  name            = "Generic"
  state           = "active"
}

resource "genesyscloud_user" "terraform-53728301-bd4f-4ac9-8e5c-71851d2fedc5_example_com_1508051445" {
  name            = "John Data-671c9160-4335-4c37-b8b3-060cb22b3d2b"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-53728301-bd4f-4ac9-8e5c-71851d2fedc5@example.com"
}

resource "genesyscloud_user" "_525e087e-c7fd-4ac2-988e-2a67434cd5b5_mypurecloud_com_2735547296" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "525e087e-c7fd-4ac2-988e-2a67434cd5b5@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  state           = "active"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "test_webrtc_user_a515883e-e438-47f4-90d5-0c659a1c7c1c_test_com_783710868" {
  acd_auto_answer = false
  department      = "Development"
  state           = "active"
  title           = "Senior Director"
  email           = "test_webrtc_user_a515883e-e438-47f4-90d5-0c659a1c7c1c@test.com"
  name            = "test_webrtc_user_a515883e-e438-47f4-90d5-0c659a1c7c1c"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "mikerr234_gmail_cpom_3839857867" {
  email           = "mikerr234@gmail.cpom"
  name            = "Mike Rutkowski234"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-f21bd483-9f48-4b6c-9e9b-baf771a02db5_example_com_1894382704" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-f21bd483-9f48-4b6c-9e9b-baf771a02db5@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "ee28083f-f101-702e-d884-18dfb0de49d9_mypurecloud_com_1793593314" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "ee28083f-f101-702e-d884-18dfb0de49d9@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "b3d472cc-f774-457e-9882-8c6b90cf6193_mypurecloud_com_787999841" {
  department      = "Ministry of Testing"
  state           = "active"
  email           = "b3d472cc-f774-457e-9882-8c6b90cf6193@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "db7acb36-27b2-4326-8d80-ab4fca07bb86_mypurecloud_com_3513788035" {
  name            = "Ruby SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "db7acb36-27b2-4326-8d80-ab4fca07bb86@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "terraform-078228dd-11a8-4afd-a3ac-e5009a5ea15a_example_com_2307331686" {
  acd_auto_answer = false
  email           = "terraform-078228dd-11a8-4afd-a3ac-e5009a5ea15a@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "person_with_extension_two_genesys_com_1024406526" {
  name        = "person with extension two"
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  addresses {
    phone_numbers {
      type       = "WORK"
      extension  = "3271"
      media_type = "PHONE"
    }
  }
  email           = "person.with.extension.two@genesys.com"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "aa6e183b-b902-63a3-23fc-ca14023c53ce_mypurecloud_com_940500871" {
  state           = "active"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  email           = "aa6e183b-b902-63a3-23fc-ca14023c53ce@mypurecloud.com"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "radams001_waynecorp_com_290933235" {
  state           = "active"
  email           = "radams001@waynecorp.com"
  name            = "Ryan Adams001"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-93914e1c-c279-4135-8804-5d2346be1eeb_example_com_1073799956" {
  acd_auto_answer = false
  routing_skills {
    proficiency = 1.5
    skill_id    = "89266ce6-1464-4e51-a732-af2c6cfe6d6b"
  }
  state       = "active"
  email       = "terraform-93914e1c-c279-4135-8804-5d2346be1eeb@example.com"
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name        = "Skill Terraform"
}

resource "genesyscloud_user" "bb39280f-09cc-48d6-b31c-1190afa1e2eb_mypurecloud_com_3604362709" {
  profile_skills  = ["Testmaster"]
  name            = "Java SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "bb39280f-09cc-48d6-b31c-1190afa1e2eb@mypurecloud.com"
}

resource "genesyscloud_user" "_99fc8ca9-67f7-496c-8e52-89ddfe321c09_mypurecloud_com_1633416185" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "99fc8ca9-67f7-496c-8e52-89ddfe321c09@mypurecloud.com"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "fd134322-e12a-d29b-b3a8-ac32cb588468_mypurecloud_com_59900901" {
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "fd134322-e12a-d29b-b3a8-ac32cb588468@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "e493223e-4d92-bcf8-08d4-85963df25eb8_mypurecloud_com_801016985" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e493223e-4d92-bcf8-08d4-85963df25eb8@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "_837a07f0-0ec1-42b6-ae51-42d5a1367dfa_mypurecloud_com_2899181068" {
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  email           = "837a07f0-0ec1-42b6-ae51-42d5a1367dfa@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-215a0e4d-8d37-4e5a-90f6-5069ea449fdd_example_com_3218595920" {
  email           = "terraform-215a0e4d-8d37-4e5a-90f6-5069ea449fdd@example.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "leia001_rebellion_com_3356978564" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Leia Skywalker"
  state           = "active"
  email           = "leia001@rebellion.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "test_webrtc_user_9cc1dc57-b3fc-4ecc-89ed-4dc6406d5576_test_com_4107991673" {
  department      = "Development"
  name            = "test_webrtc_user_9cc1dc57-b3fc-4ecc-89ed-4dc6406d5576"
  title           = "Senior Director"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "test_webrtc_user_9cc1dc57-b3fc-4ecc-89ed-4dc6406d5576@test.com"
}

resource "genesyscloud_user" "_583c38b1-443e-4ad0-abe0-a71c6942b7c8_mypurecloud_com_3760432070" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  acd_auto_answer = false
  email           = "583c38b1-443e-4ad0-abe0-a71c6942b7c8@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "a2a8901e-f504-a3c6-5842-39f9d09e700d_mypurecloud_com_691045477" {
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  email           = "a2a8901e-f504-a3c6-5842-39f9d09e700d@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-061e2c9a-bd58-444a-823a-70e0d5d4a667_example_com_1244498831" {
  state           = "active"
  email           = "terraform-061e2c9a-bd58-444a-823a-70e0d5d4a667@example.com"
  name            = "Role Terraform"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_4bd4cdd8-a95a-4da2-ad85-b8b4129288fd_mypurecloud_com_851054265" {
  department      = "Ministry of Testing"
  email           = "4bd4cdd8-a95a-4da2-ad85-b8b4129288fd@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "test_webrtc_user_a7f85deb-a8e8-4631-8137-97398c287681_test_com_3110094031" {
  acd_auto_answer = false
  email           = "test_webrtc_user_a7f85deb-a8e8-4631-8137-97398c287681@test.com"
  state           = "active"
  name            = "test_webrtc_user_a7f85deb-a8e8-4631-8137-97398c287681"
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  title           = "Senior Director"
}

resource "genesyscloud_user" "groupmember17_genesystest_com_2224080075" {
  email           = "groupmember17@genesystest.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 17"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "ricky_bobby_delete01_com_766642974" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "ricky.bobby@delete01.com"
  acd_auto_answer = true
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "12345"
    employee_type = "Full-time"
    official_name = "Ricky Bobby"
  }
  name  = "Ricky Bobby"
  state = "active"
  title = "Agent"
  addresses {
    phone_numbers {
      type       = "MOBILE"
      media_type = "PHONE"
      number     = "+19205551212"
    }
  }
  department = "Development"
}

resource "genesyscloud_user" "_8068d2c3-248f-4028-80b2-15938cc83b1e_mypurecloud_com_1593902182" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "8068d2c3-248f-4028-80b2-15938cc83b1e@mypurecloud.com"
  name            = "GO SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "noWebhooksPerm_genesys-test_com_3980245382" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "noWebhooksPerm@genesys-test.com"
  name            = "No Webhooks"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_9d54e884-f822-4bdc-8110-891cfb7de674_mypurecloud_com_3742002661" {
  email           = "9d54e884-f822-4bdc-8110-891cfb7de674@mypurecloud.com"
  state           = "active"
  name            = "GO SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-a2bd827b-fe1e-428c-a85d-3c5b851bfc93_example_com_1070518005" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "terraform-a2bd827b-fe1e-428c-a85d-3c5b851bfc93@example.com"
  acd_auto_answer = false
  locations {
    location_id = "4f5cd6b3-2146-45b3-ba59-1840f4ea0e3a"
    notes       = "Second floor"
  }
  name = "Loki Terraform"
}

resource "genesyscloud_user" "_0e255b37-b142-c458-0b6f-4fa297eeaa11_mypurecloud_com_2860820020" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "0e255b37-b142-c458-0b6f-4fa297eeaa11@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-b8048329-4a15-40fe-9b9b-9186378f7430_example_com_3059887163" {
  acd_auto_answer = false
  state           = "active"
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-b8048329-4a15-40fe-9b9b-9186378f7430@example.com"
}

resource "genesyscloud_user" "shanthi_srinivasan_genesys_com_2253561161" {
  state           = "active"
  acd_auto_answer = false
  name            = "Shanthi Srinivasan"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "shanthi.srinivasan@genesys.com"
}

resource "genesyscloud_user" "_8a801a19-27f2-4ba2-86cc-3ad847dcf037_mypurecloud_com_1229977686" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  department      = "Ministry of Testing"
  email           = "8a801a19-27f2-4ba2-86cc-3ad847dcf037@mypurecloud.com"
  name            = "Java SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-766d75cc-099d-4af0-a843-36e9917200ae_example_com_4053568399" {
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-766d75cc-099d-4af0-a843-36e9917200ae@example.com"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_28101b47-8723-48cc-96dc-354293275e6a_mypurecloud_com_179471020" {
  department      = "Ministry of Testing"
  email           = "28101b47-8723-48cc-96dc-354293275e6a@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  name            = "Python SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "terraform2-856965d3-9b02-4194-9846-aa7b3d5b50be_example_com_3531180472" {
  state           = "active"
  name            = "Amanda Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform2-856965d3-9b02-4194-9846-aa7b3d5b50be@example.com"
}

resource "genesyscloud_user" "cfe2873c-2b78-ea2b-3a75-3668799f7591_mypurecloud_com_286382091" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "cfe2873c-2b78-ea2b-3a75-3668799f7591@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "_1fc123e4-218f-46f5-ba70-b11bb1fee6e5_mypurecloud_com_2903682741" {
  department      = "Ministry of Testing"
  state           = "active"
  acd_auto_answer = false
  name            = "Java SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "1fc123e4-218f-46f5-ba70-b11bb1fee6e5@mypurecloud.com"
}

resource "genesyscloud_user" "f2e69cb2-5953-330a-9933-c802e3fff833_mypurecloud_com_252794620" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  email           = "f2e69cb2-5953-330a-9933-c802e3fff833@mypurecloud.com"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "_23bb2615-a923-4d5e-a01a-16469ea796ee_mypurecloud_com_3323051782" {
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "23bb2615-a923-4d5e-a01a-16469ea796ee@mypurecloud.com"
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "mj003_waynecorp_com_263324660" {
  acd_auto_answer = false
  email           = "mj003@waynecorp.com"
  name            = "Michael Billy Jackson"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "notanemail_example_com11af64fe-9189-4185-9ff5-010bdfbd234d_1464782883" {
  name            = "terraform-usere865e9ce-81bf-4109-9ebc-4bfb0d3eb473"
  email           = "notanemail@example.com11af64fe-9189-4185-9ff5-010bdfbd234d"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "adam_test_adamtest_com_4140365646" {
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+12015550123"
      type       = "WORK"
    }
  }
  email           = "adam.test@adamtest.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Adam Test"
}

resource "genesyscloud_user" "aca5ba17-7926-4132-8366-a72979c723cf_mypurecloud_com_3607480282" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  state           = "active"
  email           = "aca5ba17-7926-4132-8366-a72979c723cf@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "dbbc775f-d359-9587-9361-90754f29475f_mypurecloud_com_1749602784" {
  name            = "JS SDK Tester"
  email           = "dbbc775f-d359-9587-9361-90754f29475f@mypurecloud.com"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "groupmember6_genesystest_com_2006393181" {
  email           = "groupmember6@genesystest.com"
  acd_auto_answer = false
  name            = "Group Member 6"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "_6605c362-5c84-4edb-ac37-85f03d70af6c_mypurecloud_com_2929770186" {
  email           = "6605c362-5c84-4edb-ac37-85f03d70af6c@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
}

resource "genesyscloud_user" "integration-generic-08c15d20-94aa-11e6-a918-ef2552f1d28b_hollywoo_404963445" {
  acd_auto_answer = false
  name            = "Generic"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "integration-generic-08c15d20-94aa-11e6-a918-ef2552f1d28b@hollywoo"
}

resource "genesyscloud_user" "c8ca035b-e1bd-8265-60a5-6beff2ab6b82_mypurecloud_com_1850090871" {
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  state           = "active"
  acd_auto_answer = false
  email           = "c8ca035b-e1bd-8265-60a5-6beff2ab6b82@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_0d957e8c-d951-437a-8351-af3fa5cf909b_mypurecloud_com_3790383810" {
  name            = "Python SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "0d957e8c-d951-437a-8351-af3fa5cf909b@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "terraform-4d10d634-ba99-4770-a75b-69dec2bb7fe6_example_com_3460894126" {
  name            = "Role Terraform"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-4d10d634-ba99-4770-a75b-69dec2bb7fe6@example.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "d221f202-6da8-ed34-12fa-bee6edae447a_mypurecloud_com_2725561204" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "d221f202-6da8-ed34-12fa-bee6edae447a@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "groupmember11_genesystest_com_2916816841" {
  name            = "Group Member 11"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember11@genesystest.com"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_2a7e7751-8cda-47e4-a3e8-426ba9899325_mypurecloud_com_1296877681" {
  acd_auto_answer = false
  name            = ".NET SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  department      = "Ministry of Testing"
  email           = "2a7e7751-8cda-47e4-a3e8-426ba9899325@mypurecloud.com"
}

resource "genesyscloud_user" "_3b5fd467-838b-4180-b59d-d4c0d8b5d64f_mypurecloud_com_3205105816" {
  name            = "Python SDK Tester"
  acd_auto_answer = false
  email           = "3b5fd467-838b-4180-b59d-d4c0d8b5d64f@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "tim_smith101_example_com_3549949937" {
  addresses {
    other_emails {
      address = "tim@gmail.com"
      type    = "HOME"
    }
    phone_numbers {
      type       = "MOBILE"
      media_type = "PHONE"
      number     = "+19202651560"
    }
  }
  certifications  = ["Certified Developer"]
  department      = "Development"
  state           = "active"
  acd_auto_answer = true
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "12345"
    employee_type = "Full-time"
    official_name = "Jonathon Doe"
  }
  division_id    = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  manager        = "${genesyscloud_user.hollywoo_bojack_horseman_mydevspace_com_92881968.id}"
  name           = "Tim Smith"
  title          = "Principle Developer Evangelist"
  email          = "tim.smith101@example.com"
  profile_skills = ["Go", "Java"]
}

resource "genesyscloud_user" "_408828dc-2b8c-7abd-3e7f-33f04893a550_mypurecloud_com_2034774709" {
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "408828dc-2b8c-7abd-3e7f-33f04893a550@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "_90acd3a4-dbfa-42f3-b086-8016d18e0943_mypurecloud_com_2440360187" {
  email           = "90acd3a4-dbfa-42f3-b086-8016d18e0943@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "notanemail_example_comc4809e8d-9102-4e91-b5c8-0efd9ecaec4b_3449841521" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.comc4809e8d-9102-4e91-b5c8-0efd9ecaec4b"
  name            = "terraform-useredbba5b3-3da4-40ca-ae57-09c1f2b92f32"
  acd_auto_answer = false
}

resource "genesyscloud_user" "integration-trello-4c184080-2e2b-11e9-b065-29d1589bbb74_webhook_com_3745977716" {
  name            = "Trello"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "integration-trello-4c184080-2e2b-11e9-b065-29d1589bbb74@webhook.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "groupmember13_genesystest_com_3255179319" {
  acd_auto_answer = false
  email           = "groupmember13@genesystest.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 13"
  state           = "active"
}

resource "genesyscloud_user" "_3d41c0a4-58f4-e99d-eca2-81bb67454742_mypurecloud_com_1459464408" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "3d41c0a4-58f4-e99d-eca2-81bb67454742@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "test_webrtc_user_16e058af-8e8f-4c83-bb3f-abc8edf19337_test_com_655610845" {
  state           = "active"
  email           = "test_webrtc_user_16e058af-8e8f-4c83-bb3f-abc8edf19337@test.com"
  name            = "test_webrtc_user_16e058af-8e8f-4c83-bb3f-abc8edf19337"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  title           = "Senior Director"
  department      = "Development"
}

resource "genesyscloud_user" "_14c0f856-3af8-41e8-a02b-fcb1ec01b715_mypurecloud_com_1252215307" {
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "14c0f856-3af8-41e8-a02b-fcb1ec01b715@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_2bbaaa03-916a-4bcf-b2d6-de063e0a54f8_mypurecloud_com_2501694690" {
  state           = "active"
  email           = "2bbaaa03-916a-4bcf-b2d6-de063e0a54f8@mypurecloud.com"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  name            = "Java SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-1726d39b-0cbd-4abd-8a86-628217f7cb4b_example_com_3674704374" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-1726d39b-0cbd-4abd-8a86-628217f7cb4b@example.com"
  name            = "John Data-2b61fa26-717d-4fee-999c-c8e246921a1c"
}

resource "genesyscloud_user" "_3967cabe-f4c1-4299-9a7e-f42e25e4cbec_mypurecloud_com_2235872039" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  email           = "3967cabe-f4c1-4299-9a7e-f42e25e4cbec@mypurecloud.com"
}

resource "genesyscloud_user" "clitestinguser8861234_waynecorp_com_771184539" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "clitestinguser8861234@waynecorp.com"
  name            = "CliTesting User8861234"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-8696fb15-4342-4df6-87dc-0ea319058383_example_com_3909378531" {
  acd_auto_answer = true
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-8696fb15-4342-4df6-87dc-0ea319058383@example.com"
  name            = "John Terraform"
  title           = "Senior Director"
  certifications  = ["AWS Dev"]
  profile_skills  = ["Java"]
  department      = "Development"
}

resource "genesyscloud_user" "_81083160-693a-43eb-b79d-38e5ea51a5fc_mypurecloud_com_2055107089" {
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  email           = "81083160-693a-43eb-b79d-38e5ea51a5fc@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_3eca7f64-dfd8-4ff8-b35a-3620bacf38d2_mypurecloud_com_1017929991" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "3eca7f64-dfd8-4ff8-b35a-3620bacf38d2@mypurecloud.com"
  name            = ".NET SDK Tester"
}

resource "genesyscloud_user" "test-user2_genesys_com_2634841776" {
  state           = "active"
  name            = "test-user2"
  email           = "test-user2@genesys.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_208f2f36-3178-6ffe-bf8e-0f607d75e785_mypurecloud_com_2817562947" {
  email           = "208f2f36-3178-6ffe-bf8e-0f607d75e785@mypurecloud.com"
  state           = "active"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-5814a7b2-c8ba-442e-bec7-bc5b8c589afb_example_com_3088957307" {
  acd_auto_answer = false
  email           = "terraform-5814a7b2-c8ba-442e-bec7-bc5b8c589afb@example.com"
  name            = "Role Terraform"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "person_with_email_genesys_com_2648988601" {
  state = "active"
  addresses {
    other_emails {
      address = "person.with.email@genesys.com"
      type    = "WORK"
    }
  }
  email           = "person.with.email@genesys.com"
  acd_auto_answer = false
  name            = "person with email"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_5d571530-c67c-4e34-a9d7-72fd99a93158_mypurecloud_com_585110453" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "5d571530-c67c-4e34-a9d7-72fd99a93158@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "_5c11d1be-2ebf-4650-8b8d-af04647ff837_mypurecloud_com_2621222221" {
  department      = "Ministry of Testing"
  email           = "5c11d1be-2ebf-4650-8b8d-af04647ff837@mypurecloud.com"
  acd_auto_answer = false
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "f2daf5f3-fe9f-4e9a-998a-4c17f6572448_mypurecloud_com_2813536029" {
  acd_auto_answer = false
  email           = "f2daf5f3-fe9f-4e9a-998a-4c17f6572448@mypurecloud.com"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "jonathan_wilford_genesys_com_225772492" {
  routing_skills {
    proficiency = 4
    skill_id    = "e998055d-0924-48b8-bac0-08492e669574"
  }
  name            = "Example user"
  state           = "active"
  email           = "jonathan.wilford@genesys.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "zino_onokpise_genesys_com_3044540896" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Killua"
  department      = "Hunter x Hunter"
  state           = "active"
  acd_auto_answer = false
  routing_utilization {
    call {
      include_non_acd  = false
      maximum_capacity = 1
    }
    callback {
      maximum_capacity = 1
      include_non_acd  = false
    }
    chat {
      maximum_capacity = 5
      include_non_acd  = false
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "callback", "chat"]
      maximum_capacity          = 1
    }
    message {
      include_non_acd  = false
      maximum_capacity = 10
    }
  }
  title = "Head Assasin"
  email = "zino.onokpise@genesys.com"
}

resource "genesyscloud_user" "_2296e4d4-d61c-4318-8693-c753b41a5ee0_mypurecloud_com_3187764430" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "2296e4d4-d61c-4318-8693-c753b41a5ee0@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Python SDK Tester"
}

resource "genesyscloud_user" "terraform-4a0dccdb-aa9f-4db9-a552-131ed79be6ff_example_com_2865699236" {
  locations {
    notes       = "First floor"
    location_id = "4e155ca0-a142-4326-9e1d-7ce050897e53"
  }
  name            = "Loki Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-4a0dccdb-aa9f-4db9-a552-131ed79be6ff@example.com"
}

resource "genesyscloud_user" "_98117973-333a-6551-cf8a-124f7cb5b782_mypurecloud_com_3146806112" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "98117973-333a-6551-cf8a-124f7cb5b782@mypurecloud.com"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "groupmember26_genesystest_com_1694397863" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Group Member 26"
  email           = "groupmember26@genesystest.com"
}

resource "genesyscloud_user" "notanemail_example_com394a3b24-2d9c-4c32-826e-d741c3dda1af_1788364698" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.com394a3b24-2d9c-4c32-826e-d741c3dda1af"
  name            = "terraform-usera553fc7f-bd0b-4e0f-9000-f9fdc15156d2"
}

resource "genesyscloud_user" "f98c2fd4-c882-406b-91cf-e5ea106402ad_mypurecloud_com_3696553685" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  email           = "f98c2fd4-c882-406b-91cf-e5ea106402ad@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  name            = "Kotlin SDK Tester"
}

resource "genesyscloud_user" "groupmember23_genesystest_com_1954644138" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember23@genesystest.com"
  name            = "Group Member 23"
  state           = "active"
}

resource "genesyscloud_user" "terraform-c7302337-c247-4dcf-956b-eb7f5b31b383_example_com_563562871" {
  acd_auto_answer = false
  email           = "terraform-c7302337-c247-4dcf-956b-eb7f5b31b383@example.com"
  name            = "John Data-76b845c9-9b1c-4097-92d9-6af12d6b8d44"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "robert_smith_example_com_4009159461" {
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state       = "active"
  title       = "Executive Director"
  department  = "Development"
  name        = "Robert Smith"
  addresses {
    other_emails {
      type    = "HOME"
      address = "robert.smithsdada@gmailz.com"
    }
    phone_numbers {
      media_type = "PHONE"
      number     = "+19202651555"
      type       = "MOBILE"
    }
  }
  profile_skills  = ["Go", "Java"]
  acd_auto_answer = true
  certifications  = ["Certified Developer"]
  email           = "robert.smith@example.com"
  employer_info {
    employee_id   = "12345"
    employee_type = "Full-time"
    official_name = "Rober Smith"
    date_hire     = "2021-03-18"
  }
}

resource "genesyscloud_user" "notanemail_example_com67b2a880-35fb-42ea-a216-f4432f48a998_1606711762" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-user6d169fe3-c582-4993-a284-18879b739b4d"
  state           = "active"
  email           = "notanemail@example.com67b2a880-35fb-42ea-a216-f4432f48a998"
}

resource "genesyscloud_user" "ef2d4faa-ec9f-439d-a627-b64503ffc5ef_mypurecloud_com_3726854660" {
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "ef2d4faa-ec9f-439d-a627-b64503ffc5ef@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember7_genesystest_com_1078937036" {
  name            = "Group Member 7"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "groupmember7@genesystest.com"
}

resource "genesyscloud_user" "terraform-5f79eb46-990a-41f0-aa28-4d99dfd41309_example_com_2592543578" {
  state           = "active"
  name            = "John Terraform"
  title           = "Senior Director"
  acd_auto_answer = false
  email           = "terraform-5f79eb46-990a-41f0-aa28-4d99dfd41309@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Development"
}

resource "genesyscloud_user" "a6da2876-18e4-4778-baba-f53ca18ba728_mypurecloud_com_2652304759" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "a6da2876-18e4-4778-baba-f53ca18ba728@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-9da75c69-0a98-4a23-a6b7-cad6f621631e_example_com_226595615" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  acd_auto_answer = false
  email           = "terraform-9da75c69-0a98-4a23-a6b7-cad6f621631e@example.com"
}

resource "genesyscloud_user" "_78f11eff-b6dc-402d-b2a7-c585a159b223_mypurecloud_com_729605184" {
  name            = "Java SDK Tester"
  state           = "active"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "78f11eff-b6dc-402d-b2a7-c585a159b223@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "notanemail_example_com3e137d70-dc45-4ef9-9500-9dec65acc135_3524190146" {
  email           = "notanemail@example.com3e137d70-dc45-4ef9-9500-9dec65acc135"
  name            = "terraform-userb2a87141-88dc-4c75-8069-7467fc59e103"
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_4559c9ce-e6e7-a0f6-141a-670cf309a188_mypurecloud_com_1072354919" {
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "4559c9ce-e6e7-a0f6-141a-670cf309a188@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "johndoe401_genesys_com_1108999412" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "johndoe401@genesys.com"
  name            = "john doe401"
  state           = "active"
}

resource "genesyscloud_user" "bd37c0c8-fbac-a1f3-3c89-c59842e364c5_mypurecloud_com_1477200050" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "bd37c0c8-fbac-a1f3-3c89-c59842e364c5@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-83c7aa2d-7a87-47da-8770-e467f053d889_example_com_1801275630" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform-83c7aa2d-7a87-47da-8770-e467f053d889@example.com"
  name            = "Role Terraform"
  state           = "active"
}

resource "genesyscloud_user" "_40bf7932-bda7-4140-bcbe-98ea4e0148f5_mypurecloud_com_4049238475" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  email           = "40bf7932-bda7-4140-bcbe-98ea4e0148f5@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "groupmember33_genesystest_com_3243894465" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember33@genesystest.com"
  state           = "active"
  name            = "Group Member 33"
}

resource "genesyscloud_user" "_705e1759-361d-4418-8a08-3f4317bf63f3_mypurecloud_com_239265206" {
  acd_auto_answer = false
  name            = "Java SDK Tester"
  state           = "active"
  email           = "705e1759-361d-4418-8a08-3f4317bf63f3@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "hollywoo_bojack_horseman_mydevspace_com_92881968" {
  acd_auto_answer = true
  routing_skills {
    proficiency = 0
    skill_id    = "584005c4-c8c8-426b-8311-ea894dd0f235"
  }
  routing_skills {
    proficiency = 0
    skill_id    = "7eba08c7-e62b-49bb-867f-ca69bbab66f0"
  }
  routing_skills {
    proficiency = 0
    skill_id    = "e998055d-0924-48b8-bac0-08492e669574"
  }
  routing_skills {
    proficiency = 0
    skill_id    = "f1afdbd4-9c39-4cd6-92da-f69317a0233f"
  }
  routing_skills {
    skill_id    = "fc47fb1d-e789-4fc8-b73a-da4402c2b72a"
    proficiency = 0
  }
  title = "Actor"
  addresses {
    phone_numbers {
      extension  = "1009"
      media_type = "PHONE"
      number     = "1009"
      type       = "WORK"
    }
  }
  routing_languages {
    language_id = "b7754fad-7471-4c08-9a9d-b211720c042d"
    proficiency = 4
  }
  division_id = "c3434464-c83c-4035-9b8e-3bd312f44475"
  email       = "hollywoo+bojack.horseman@mydevspace.com"
  name        = "Bojack Horseman"
  state       = "active"
  department  = "Talent Department"
  locations {
    location_id = "d614b7f2-b9a6-4379-bc1f-03810bbf9654"
  }
}

resource "genesyscloud_user" "_4cb44df6-c861-400c-ba88-cf6d842b6fad_mypurecloud_com_3915819164" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Python SDK Tester"
  email           = "4cb44df6-c861-400c-ba88-cf6d842b6fad@mypurecloud.com"
}

resource "genesyscloud_user" "paul_rouillard_genesys_com_3429074676" {
  state           = "active"
  email           = "paul.rouillard@genesys.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  name            = "Paul Rouillard"
}

resource "genesyscloud_user" "b9d2dad9-35f7-40ea-aba8-faa8a703c01e_mypurecloud_com_3290340141" {
  email           = "b9d2dad9-35f7-40ea-aba8-faa8a703c01e@mypurecloud.com"
  name            = "Python SDK Tester"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
}

resource "genesyscloud_user" "terraform-3e410a87-f364-41c4-ad0c-c7d4215a6a67_example_com_3413245084" {
  state           = "active"
  email           = "terraform-3e410a87-f364-41c4-ad0c-c7d4215a6a67@example.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Data-82468d0a-2f0b-4fe0-bfbf-62d49e6bbfa1"
}

resource "genesyscloud_user" "johww22wn_example_com_89486126" {
  acd_auto_answer = true
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  addresses {
    other_emails {
      address = "johse2n@gmail.com"
      type    = "HOME"
    }
  }
  certifications = ["Certified Developer"]
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "1234e5"
    employee_type = "Full-time"
    official_name = "Jonathone Doe"
  }
  name           = "admin1"
  profile_skills = ["Go", "Java"]
  department     = "Development"
  email          = "johww22wn@example.com"
  state          = "active"
  title          = "Executive Director"
}

resource "genesyscloud_user" "terraform-60af3634-297a-4c24-a0a7-4567a9730d44_example_com_1339402895" {
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-60af3634-297a-4c24-a0a7-4567a9730d44@example.com"
}

resource "genesyscloud_user" "_334f78fa-1677-4299-9bdb-dbb5623223d6_mypurecloud_com_1362048900" {
  acd_auto_answer = false
  email           = "334f78fa-1677-4299-9bdb-dbb5623223d6@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "terraform1-860dd31b-5464-4eba-bce7-2398bc8c2de4_example_com_527030897" {
  state           = "active"
  acd_auto_answer = false
  name            = "Johnny Terraform"
  email           = "terraform1-860dd31b-5464-4eba-bce7-2398bc8c2de4@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_45f364cd-00c7-4e7f-99b8-6fc4d2ec301d_mypurecloud_com_3811536881" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  email           = "45f364cd-00c7-4e7f-99b8-6fc4d2ec301d@mypurecloud.com"
  name            = "Java SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "justin_timber_example_com_2526322122" {
  acd_auto_answer = false
  name            = "justin timberlake"
  state           = "active"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+19002651560"
      type       = "MOBILE"
    }
  }
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  title       = "Executive Director"
  email       = "justin.timber@example.com"
  department  = "Development"
}

resource "genesyscloud_user" "_43f0b89d-96fd-441c-83f8-a6dae40a071e_mypurecloud_com_2606342442" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  email           = "43f0b89d-96fd-441c-83f8-a6dae40a071e@mypurecloud.com"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "groupmember36_genesystest_com_3109068964" {
  email           = "groupmember36@genesystest.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 36"
}

resource "genesyscloud_user" "_6ebfb1a2-57be-c72d-93c1-d201166e4ec4_mypurecloud_com_337793026" {
  email           = "6ebfb1a2-57be-c72d-93c1-d201166e4ec4@mypurecloud.com"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "person_with_extension_genesys_com_2414276226" {
  acd_auto_answer = false
  addresses {
    phone_numbers {
      extension  = "3271"
      media_type = "PHONE"
      type       = "WORK"
    }
  }
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email       = "person.with.extension@genesys.com"
  state       = "active"
  name        = "person with extension"
}

resource "genesyscloud_user" "groupmember25_genesystest_com_2342769832" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember25@genesystest.com"
  name            = "Group Member 25"
}

resource "genesyscloud_user" "_3680d8c5-0d71-877f-def7-66462ad16401_mypurecloud_com_117730235" {
  acd_auto_answer = false
  name            = "JS SDK Tester"
  email           = "3680d8c5-0d71-877f-def7-66462ad16401@mypurecloud.com"
  state           = "active"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "michael_roddy_genesys_com_2392985031" {
  acd_auto_answer = false
  email           = "michael.roddy@genesys.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Michael Roddy"
  state           = "active"
}

resource "genesyscloud_user" "notanemail_example_comd176cb2b-a737-4644-a34c-42b758ca430f_4161140309" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-user468f9ab6-d4e5-4d43-8251-8570d2b44d27"
  email           = "notanemail@example.comd176cb2b-a737-4644-a34c-42b758ca430f"
  acd_auto_answer = false
}

resource "genesyscloud_user" "john_carnell_example_com_3230966566" {
  addresses {
    other_emails {
      address = "john@gmail.com"
      type    = "HOME"
    }
    phone_numbers {
      media_type = "PHONE"
      number     = "+19202651560"
      type       = "MOBILE"
    }
  }
  employer_info {
    official_name = "Jonathon Doe"
    date_hire     = "2021-03-18"
    employee_id   = "12345"
    employee_type = "Full-time"
  }
  state           = "active"
  acd_auto_answer = true
  email           = "john.carnell@example.com"
  manager         = "${genesyscloud_user.hollywoo_mydevspace_com_1242694302.id}"
  title           = "Executive Director"
  department      = "Development"
  division_id     = "c3434464-c83c-4035-9b8e-3bd312f44475"
  profile_skills  = ["Go", "Java"]
  certifications  = ["Certified Developer"]
  name            = "John Carnell"
}

resource "genesyscloud_user" "aac3980e-5839-e2a0-e37e-22d6e2b294f3_mypurecloud_com_1896973587" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  email           = "aac3980e-5839-e2a0-e37e-22d6e2b294f3@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "terraform-3de90892-71c2-4ae8-a1a9-0d91b8d0811c_example_com_2950642487" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-3de90892-71c2-4ae8-a1a9-0d91b8d0811c@example.com"
  state           = "active"
  acd_auto_answer = false
  name            = "John Data-6ffd3486-4055-480b-be9a-e9372e565469"
}

resource "genesyscloud_user" "_10e1d507-68eb-4cdd-bed0-a83d06dbc044_mypurecloud_com_2079843628" {
  name            = "Java SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "10e1d507-68eb-4cdd-bed0-a83d06dbc044@mypurecloud.com"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "b1e333eb-db44-413b-94ab-1d6972fc8c31_mypurecloud_com_2151547140" {
  email           = "b1e333eb-db44-413b-94ab-1d6972fc8c31@mypurecloud.com"
  name            = "Java SDK Tester"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-51a508cb-fedb-456d-bc0d-f1e5ca0a13a4_example_com_4062388336" {
  acd_auto_answer = false
  email           = "terraform-51a508cb-fedb-456d-bc0d-f1e5ca0a13a4@example.com"
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "_808017dd-8642-ddec-b9c8-31f7ca5bda72_mypurecloud_com_3366583399" {
  department      = "Ministry of Testing"
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "808017dd-8642-ddec-b9c8-31f7ca5bda72@mypurecloud.com"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "notanemail_example_comffae911d-8529-4754-a7c3-8eabf9eb444a_3134853860" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.comffae911d-8529-4754-a7c3-8eabf9eb444a"
  name            = "terraform-userf472d557-0b68-4d63-a0d7-5a90c9d3a5ae"
  state           = "active"
}

resource "genesyscloud_user" "terraform-91f64ef9-fda8-41ad-a530-06842374c1c8_example_com_1343601536" {
  email           = "terraform-91f64ef9-fda8-41ad-a530-06842374c1c8@example.com"
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "_528838c9-4738-4445-9c84-b728444f89cb_mypurecloud_com_1566684099" {
  email           = "528838c9-4738-4445-9c84-b728444f89cb@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-4358d005-3e42-4692-a9ae-f799c6a61687_example_com_2298454208" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform-4358d005-3e42-4692-a9ae-f799c6a61687@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_991fb0e2-f322-2156-bdeb-b1e8814dc5fe_mypurecloud_com_2638984853" {
  email           = "991fb0e2-f322-2156-bdeb-b1e8814dc5fe@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  state           = "active"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "_0689fed6-8d8a-4381-ba60-3ee0c2667e84_mypurecloud_com_1378516731" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "0689fed6-8d8a-4381-ba60-3ee0c2667e84@mypurecloud.com"
  name            = "Java SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "e4364956-f33a-c586-404f-5901f6335dc2_mypurecloud_com_1195091077" {
  state           = "active"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "e4364956-f33a-c586-404f-5901f6335dc2@mypurecloud.com"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-6e16083e-76c0-4e7a-8155-67f322ee0d93_example_com_601810777" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-6e16083e-76c0-4e7a-8155-67f322ee0d93@example.com"
  name            = "Role Terraform"
  state           = "active"
}

resource "genesyscloud_user" "terraform-739fff13-e3ae-4fb7-b359-b1ff38d29c13_example_com_1935490044" {
  name            = "John Data-08d85d69-acaf-4d50-95ba-bf78bd7e4b0f"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-739fff13-e3ae-4fb7-b359-b1ff38d29c13@example.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_4aca0f58-e1c0-41d9-8c6a-7dde21f604b6_mypurecloud_com_2535746233" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "4aca0f58-e1c0-41d9-8c6a-7dde21f604b6@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "terraform-a1abfeba-e16b-41a0-afe9-63e0864d13a4_example_com_3220280802" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-a1abfeba-e16b-41a0-afe9-63e0864d13a4@example.com"
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "clitestinguser8861234laaaaaaaaaa_waynecorp_com_1659385201" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "clitestinguser8861234laaaaaaaaaa@waynecorp.com"
  name            = "CliTesting User8861234laaaaaaaaaa"
  state           = "active"
}

resource "genesyscloud_user" "becky_powell_genesys_com_1343407029" {
  name            = "Becky Powell"
  email           = "becky.powell@genesys.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "ac8f632c-0bd7-8921-8dc7-10b1b860ea6b_mypurecloud_com_16438692" {
  department      = "Ministry of Testing"
  email           = "ac8f632c-0bd7-8921-8dc7-10b1b860ea6b@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_0bf22739-e903-e02d-3977-f6e23c9201d9_mypurecloud_com_1515642650" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  email           = "0bf22739-e903-e02d-3977-f6e23c9201d9@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_490ef7d9-113f-49e1-8e22-68a96a98e4a1_mypurecloud_com_2778339561" {
  department      = "Ministry of Testing"
  email           = "490ef7d9-113f-49e1-8e22-68a96a98e4a1@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "jacob_shaw_genesys_com_2728024026" {
  routing_languages {
    language_id = "13005cea-29c2-458d-9247-90502d4154dc"
    proficiency = 5
  }
  acd_auto_answer = true
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  routing_utilization {
    call {
      include_non_acd  = false
      maximum_capacity = 4
    }
    callback {
      include_non_acd  = false
      maximum_capacity = 1
    }
    chat {
      maximum_capacity = 4
      include_non_acd  = false
    }
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "callback", "chat"]
      maximum_capacity          = 1
    }
    message {
      maximum_capacity = 4
      include_non_acd  = false
    }
  }
  state = "active"
  email = "jacob.shaw@genesys.com"
  name  = "Jacob Shaw"
}

resource "genesyscloud_user" "groupmember30_genesystest_com_3388749982" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 30"
  state           = "active"
  email           = "groupmember30@genesystest.com"
}

resource "genesyscloud_user" "terraform-4e20f3ac-572f-4f98-b63f-dad4dc92b670_example_com_3257469711" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-4e20f3ac-572f-4f98-b63f-dad4dc92b670@example.com"
  name            = "John Terraform"
  department      = "Development"
  state           = "active"
  title           = "Senior Director"
  acd_auto_answer = false
}

resource "genesyscloud_user" "john_carnell_genesys_com_1657969838" {
  email           = "john.carnell@genesys.com"
  name            = "John Carnell"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_3a0fb48a-add4-499b-be01-45f6f5c331e8_mypurecloud_com_276830210" {
  name            = "Python SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "3a0fb48a-add4-499b-be01-45f6f5c331e8@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "test-user_genesys_com_2218216800" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "test-user"
  acd_auto_answer = false
  state           = "active"
  email           = "test-user@genesys.com"
}

resource "genesyscloud_user" "fd4c1925-3f2e-4961-993b-09dfb0921615_mypurecloud_com_395756053" {
  name            = "GO SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "fd4c1925-3f2e-4961-993b-09dfb0921615@mypurecloud.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "mphelps001_waynecorp_com_1228389080" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Michael Phelps"
  state           = "active"
  email           = "mphelps001@waynecorp.com"
}

resource "genesyscloud_user" "ca224171-67e6-444f-b6c0-a6babde37cf9_mypurecloud_com_2770023374" {
  state           = "active"
  acd_auto_answer = false
  name            = "Python SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "ca224171-67e6-444f-b6c0-a6babde37cf9@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_731773a2-163c-4029-a0bc-798648eba1bd_mypurecloud_com_1851887661" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "731773a2-163c-4029-a0bc-798648eba1bd@mypurecloud.com"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "_3a6525c6-65bb-5452-5fa7-4383feaa8c69_mypurecloud_com_271219341" {
  state           = "active"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "3a6525c6-65bb-5452-5fa7-4383feaa8c69@mypurecloud.com"
}

resource "genesyscloud_user" "terraform1-bbb1dff6-b7f2-46e5-b5ce-7b628c44314d_example_com_3172363557" {
  email           = "terraform1-bbb1dff6-b7f2-46e5-b5ce-7b628c44314d@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Henry Terraform"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-fabe70ea-4124-4704-bd68-df9abdc259d5_example_com_3465178400" {
  email           = "terraform-fabe70ea-4124-4704-bd68-df9abdc259d5@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  name            = "John Data-27975e8f-16be-457a-b03a-a3ef41592c7a"
}

resource "genesyscloud_user" "integration-generic-2981da80-c7d9-11ed-ba5d-d39775f91d11_webhook_com_4080964362" {
  name            = "Generic"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  email           = "integration-generic-2981da80-c7d9-11ed-ba5d-d39775f91d11@webhook.com"
}

resource "genesyscloud_user" "_5536d525-d0b2-a061-49d9-9d10e892c4c0_mypurecloud_com_3534453058" {
  state           = "active"
  email           = "5536d525-d0b2-a061-49d9-9d10e892c4c0@mypurecloud.com"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "_2e481b25-0fe0-4004-b8e7-812fa62e27b8_mypurecloud_com_2461438707" {
  email           = "2e481b25-0fe0-4004-b8e7-812fa62e27b8@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "_7b238947-49c6-4365-b5fc-e3b43c6281f6_mypurecloud_com_1916009146" {
  state           = "active"
  email           = "7b238947-49c6-4365-b5fc-e3b43c6281f6@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "f93ba3b5-c2e6-6422-5056-6f0020c547f6_mypurecloud_com_1965531227" {
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  department      = "Ministry of Testing"
  email           = "f93ba3b5-c2e6-6422-5056-6f0020c547f6@mypurecloud.com"
  acd_auto_answer = false
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "_3f2e2ca4-f331-4ca8-8424-ce74c2ccf031_mypurecloud_com_3507567790" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "3f2e2ca4-f331-4ca8-8424-ce74c2ccf031@mypurecloud.com"
  state           = "active"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "_700f0542-23b9-8a3f-221e-7eb146286613_mypurecloud_com_3662905610" {
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "700f0542-23b9-8a3f-221e-7eb146286613@mypurecloud.com"
  state           = "active"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "e74a7236-367c-4759-afe9-3f7cdead1134_mypurecloud_com_2962336169" {
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e74a7236-367c-4759-afe9-3f7cdead1134@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-b6273a40-e271-405b-95c9-c7ea4e0b4121_example_com_803360195" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-b6273a40-e271-405b-95c9-c7ea4e0b4121@example.com"
  name            = "John Data-3531459c-40fc-4b57-ab76-cd14907399e6"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_3b4f9b61-f1d1-4676-b37d-ec483e4fe800_mypurecloud_com_2309949282" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "3b4f9b61-f1d1-4676-b37d-ec483e4fe800@mypurecloud.com"
  name            = "GO SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
}

resource "genesyscloud_user" "terraform-55f1d6ac-aba1-4a75-9757-ff91c6a73e06_example_com_1663664411" {
  acd_auto_answer = false
  email           = "terraform-55f1d6ac-aba1-4a75-9757-ff91c6a73e06@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "c58b5619-c8e4-45a9-b138-1e7cb76a842f_mypurecloud_com_1698792995" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "c58b5619-c8e4-45a9-b138-1e7cb76a842f@mypurecloud.com"
  name            = "Java SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "groupmember50_genesystest_com_1488675268" {
  email           = "groupmember50@genesystest.com"
  acd_auto_answer = false
  name            = "Group Member 50"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "b076571c-dde2-165a-f6bd-c142edf8fc85_mypurecloud_com_7955587" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  state           = "active"
  acd_auto_answer = false
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "b076571c-dde2-165a-f6bd-c142edf8fc85@mypurecloud.com"
}

resource "genesyscloud_user" "test_example_com_2034274902" {
  name            = "Test Doe"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  locations {
    location_id = "1b11e1f9-4742-4fd9-b95d-c608008f51d3"
    notes       = "Office 201"
  }
  routing_utilization {
    email {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 2
    }
    message {
      include_non_acd           = false
      interruptible_media_types = ["call", "chat"]
      maximum_capacity          = 4
    }
    call {
      maximum_capacity = 1
      include_non_acd  = true
    }
    callback {
      include_non_acd           = false
      interruptible_media_types = ["call", "email"]
      maximum_capacity          = 2
    }
    chat {
      include_non_acd           = false
      interruptible_media_types = ["call"]
      maximum_capacity          = 3
    }
  }
  state = "active"
  addresses {
    other_emails {
      address = "john@gmail.com"
      type    = "HOME"
    }
    phone_numbers {
      media_type = "PHONE"
      number     = "+13174181234"
      type       = "MOBILE"
    }
  }
  employer_info {
    employee_type = "Full-time"
    official_name = "Jonathon Doe"
    date_hire     = "2021-03-18"
    employee_id   = "12345"
  }
  email = "test@example.com"
}

resource "genesyscloud_user" "terraform-4e145678-537d-4c3e-aedf-164d4e8d3bfd_example_com_2631900724" {
  acd_auto_answer = false
  department      = "Development"
  email           = "terraform-4e145678-537d-4c3e-aedf-164d4e8d3bfd@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Terraform"
  state           = "active"
  title           = "Senior Director"
}

resource "genesyscloud_user" "b6958df2-243d-7f29-fd6d-4357f38f9db3_mypurecloud_com_361606686" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "b6958df2-243d-7f29-fd6d-4357f38f9db3@mypurecloud.com"
  acd_auto_answer = false
  state           = "active"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "terraform-0a967df0-9ff2-4f66-888c-2198e560bd80_example_com_2807785166" {
  state           = "active"
  name            = "John Data-c0a92695-cdad-4867-8d05-ca7b2795f8d0"
  email           = "terraform-0a967df0-9ff2-4f66-888c-2198e560bd80@example.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-9e0ba67b-25ec-4f69-b84f-53fc4cb36c73_example_com_3133466445" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  acd_auto_answer = false
  email           = "terraform-9e0ba67b-25ec-4f69-b84f-53fc4cb36c73@example.com"
}

resource "genesyscloud_user" "terraform-99d21e00-c6b4-4bd8-b36f-8bcefc25329e_example_com_1787292350" {
  email           = "terraform-99d21e00-c6b4-4bd8-b36f-8bcefc25329e@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "hakan_danaci_genesys_com_1425536089" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "hakan.danaci@genesys.com"
  name            = "Hakan Danaci"
  state           = "active"
}

resource "genesyscloud_user" "_74c673e7-4fef-43b4-989f-0336fe375465_mypurecloud_com_892934456" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "74c673e7-4fef-43b4-989f-0336fe375465@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  name            = "Java SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "_0862f402-d543-4a16-8703-56d249cade65_mypurecloud_com_439541301" {
  state           = "active"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  email           = "0862f402-d543-4a16-8703-56d249cade65@mypurecloud.com"
  name            = "Python SDK Tester"
}

resource "genesyscloud_user" "_4a15bbb1-32ef-4633-8d1e-3ea39b9f44be_mypurecloud_com_609900936" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  email           = "4a15bbb1-32ef-4633-8d1e-3ea39b9f44be@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "_7dae114b-5637-2885-201c-7a3a23d38a08_mypurecloud_com_322035711" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "7dae114b-5637-2885-201c-7a3a23d38a08@mypurecloud.com"
  acd_auto_answer = false
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "notanemail_example_com0467ece4-d2f3-4dfb-b3b0-24954b4e16ac_1410732200" {
  state           = "active"
  email           = "notanemail@example.com0467ece4-d2f3-4dfb-b3b0-24954b4e16ac"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  name            = "terraform-user1d0c4c25-f996-42a4-9089-1427df12aee5"
}

resource "genesyscloud_user" "ce0fc81a-9c6a-4d6c-829f-9ae0086e9af0_mypurecloud_com_1064419165" {
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "ce0fc81a-9c6a-4d6c-829f-9ae0086e9af0@mypurecloud.com"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "cdc8c451-4451-4cf3-a817-bd7132192826_mypurecloud_com_2030913784" {
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "cdc8c451-4451-4cf3-a817-bd7132192826@mypurecloud.com"
  state           = "active"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "_2bc04464-da6a-45d0-acca-6ffe37864e8c_mypurecloud_com_1743609854" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  email           = "2bc04464-da6a-45d0-acca-6ffe37864e8c@mypurecloud.com"
}

resource "genesyscloud_user" "someTestUser1234_genesys_com_940298919" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "someTestUser1234@genesys.com"
  name            = "someTestUser1234"
}

resource "genesyscloud_user" "_5d3262be-4455-0bf0-78b0-f6678432e0b1_mypurecloud_com_1998996945" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  email           = "5d3262be-4455-0bf0-78b0-f6678432e0b1@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "_46394839-1e2d-457f-a840-650e3d780afb_mypurecloud_com_3715441401" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "46394839-1e2d-457f-a840-650e3d780afb@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "terraform2-7801c389-7cca-4260-a472-c0d35c0bc5d6_example_com_3661511144" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform2-7801c389-7cca-4260-a472-c0d35c0bc5d6@example.com"
  name            = "Amanda Terraform"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "terraform-4af3f4bb-2f5e-4da5-89e9-33d622d59bc9_example_com_3311130244" {
  email           = "terraform-4af3f4bb-2f5e-4da5-89e9-33d622d59bc9@example.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Data-c971e222-c6ca-418d-9207-8068dfda7854"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_99c6df4d-bf2b-4603-8e4b-b01f61d1a649_mypurecloud_com_815437325" {
  acd_auto_answer = false
  name            = "Python SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "99c6df4d-bf2b-4603-8e4b-b01f61d1a649@mypurecloud.com"
}

resource "genesyscloud_user" "ls001_rebellion_com_107614280" {
  email           = "ls001@rebellion.com"
  name            = "luke skywalker"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_60411d84-e49e-4ac1-9b92-5139baf374e6_mypurecloud_com_1146942401" {
  department      = "Ministry of Testing"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  email           = "60411d84-e49e-4ac1-9b92-5139baf374e6@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-ea8201b9-a571-4686-9af6-22bf200da4fc_example_com_2505251181" {
  acd_auto_answer = false
  email           = "terraform-ea8201b9-a571-4686-9af6-22bf200da4fc@example.com"
  state           = "active"
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "istvan_bihari_genesys_com_419079146" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Istvan Bihari"
  email           = "istvan.bihari@genesys.com"
  state           = "active"
}

resource "genesyscloud_user" "_0c8bff5d-5c0f-4fc3-bc84-2fb84056aa30_mypurecloud_com_188931924" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  email           = "0c8bff5d-5c0f-4fc3-bc84-2fb84056aa30@mypurecloud.com"
  name            = "GO SDK Tester"
  acd_auto_answer = false
}

resource "genesyscloud_user" "ee17542e-a44b-4e84-82d0-c2a57a220def_mypurecloud_com_3840451825" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "ee17542e-a44b-4e84-82d0-c2a57a220def@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-9f1a6e46-6c71-4174-95d1-54962a0b3692_example_com_3485573798" {
  state           = "active"
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Terraform"
  title           = "Senior Director"
  acd_auto_answer = false
  email           = "terraform-9f1a6e46-6c71-4174-95d1-54962a0b3692@example.com"
}

resource "genesyscloud_user" "terraform-adc9d138-b681-4e50-9b52-58e8393e401e_example_com_1263043103" {
  email           = "terraform-adc9d138-b681-4e50-9b52-58e8393e401e@example.com"
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "c0844652-496c-4c62-aa20-b77c8c7b2fbc_mypurecloud_com_3326077140" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "c0844652-496c-4c62-aa20-b77c8c7b2fbc@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "a9366997-5144-4424-90c2-fa7d3a9b876d_mypurecloud_com_3442029431" {
  name            = "GO SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "a9366997-5144-4424-90c2-fa7d3a9b876d@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "_336b2f09-9488-23ca-f87e-323565a94d60_mypurecloud_com_1857114354" {
  email           = "336b2f09-9488-23ca-f87e-323565a94d60@mypurecloud.com"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
}

resource "genesyscloud_user" "groupmember35_genesystest_com_2595171171" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 35"
  state           = "active"
  email           = "groupmember35@genesystest.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-74108bff-baa0-428b-b3f1-d4add6e4515a_example_com_2526075643" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-74108bff-baa0-428b-b3f1-d4add6e4515a@example.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_5367e91a-12b6-5123-773d-a307de6f6311_mypurecloud_com_733484290" {
  email           = "5367e91a-12b6-5123-773d-a307de6f6311@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember10_genesystest_com_366052664" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember10@genesystest.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 10"
}

resource "genesyscloud_user" "mrunal_nargunde_genesys_com_3916161745" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Mrunal Nargunde"
  state           = "active"
  email           = "mrunal.nargunde@genesys.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-114c0bbc-fe42-4f5e-aa0b-7a9eee9d6845_example_com_677654234" {
  name            = "John Terraform"
  state           = "active"
  department      = "Development"
  title           = "Senior Director"
  acd_auto_answer = false
  email           = "terraform-114c0bbc-fe42-4f5e-aa0b-7a9eee9d6845@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "e0320dcb-3e32-4e74-9007-582209261ade_mypurecloud_com_3999820192" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e0320dcb-3e32-4e74-9007-582209261ade@mypurecloud.com"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "user2_email_com_468980491" {
  email           = "user2@email.com"
  state           = "active"
  acd_auto_answer = false
  name            = "user2"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform1-28104217-9c34-4907-bc0f-bc880971f3a1_example_com_4090455674" {
  acd_auto_answer = false
  email           = "terraform1-28104217-9c34-4907-bc0f-bc880971f3a1@example.com"
  name            = "Johnny Terraform"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_96c23b57-6053-4ae0-9b95-8d330d94907e_mypurecloud_com_2445003949" {
  name            = "GO SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "96c23b57-6053-4ae0-9b95-8d330d94907e@mypurecloud.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_7c4dce08-dd0a-471a-89fd-ad194a90192e_mypurecloud_com_1337154184" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Python SDK Tester"
  state           = "active"
  acd_auto_answer = false
  email           = "7c4dce08-dd0a-471a-89fd-ad194a90192e@mypurecloud.com"
}

resource "genesyscloud_user" "_503a6935-ea52-1eb2-6ba1-a47303784fd6_mypurecloud_com_3650605141" {
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "503a6935-ea52-1eb2-6ba1-a47303784fd6@mypurecloud.com"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "f34db4e3-d4df-4162-8f12-e277668c58bc_mypurecloud_com_2988249052" {
  email           = "f34db4e3-d4df-4162-8f12-e277668c58bc@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "user1_email_com_170485464" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "user1@email.com"
  name            = "user1"
}

resource "genesyscloud_user" "_6f60db82-5f18-4cc3-a9b6-420150736a24_mypurecloud_com_2941051947" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "6f60db82-5f18-4cc3-a9b6-420150736a24@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  name            = ".NET SDK Tester"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_131cfad5-789a-43ae-921a-37414aa2a711_mypurecloud_com_1728763221" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  acd_auto_answer = false
  email           = "131cfad5-789a-43ae-921a-37414aa2a711@mypurecloud.com"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "restricted_user_relatetest_com_2661057702" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "restricted_user"
  acd_auto_answer = false
  state           = "active"
  email           = "restricted_user@relatetest.com"
}

resource "genesyscloud_user" "notanemail_example_com0b996d57-ddd2-496a-936c-8c27bc74ea3a_3838974269" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "terraform-user67653c20-c0e5-4ed3-abf6-436f3177e4aa"
  state           = "active"
  email           = "notanemail@example.com0b996d57-ddd2-496a-936c-8c27bc74ea3a"
}

resource "genesyscloud_user" "c254fe35-9f61-4034-4180-09f58b33ffe5_mypurecloud_com_3498736072" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "c254fe35-9f61-4034-4180-09f58b33ffe5@mypurecloud.com"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "_6c27134d-6961-6084-eff0-755a6061eab8_mypurecloud_com_3983524283" {
  acd_auto_answer = false
  email           = "6c27134d-6961-6084-eff0-755a6061eab8@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "_839f7745-bf97-4031-a97c-134e0ccc1e59_mypurecloud_com_1243218170" {
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  state           = "active"
  acd_auto_answer = false
  email           = "839f7745-bf97-4031-a97c-134e0ccc1e59@mypurecloud.com"
}

resource "genesyscloud_user" "terraform-70f14d82-fd1d-4c26-8db4-12fd7232b0b2_example_com_691027560" {
  name            = "Role Terraform"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform-70f14d82-fd1d-4c26-8db4-12fd7232b0b2@example.com"
}

resource "genesyscloud_user" "bc744b3d-d7dd-c340-6424-c2d571550325_mypurecloud_com_3577837831" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "bc744b3d-d7dd-c340-6424-c2d571550325@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "_83b56ff9-97e8-4d21-ba73-331a4643c81c_mypurecloud_com_4253126861" {
  state           = "active"
  acd_auto_answer = false
  email           = "83b56ff9-97e8-4d21-ba73-331a4643c81c@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  name            = "Java SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  manager         = "${genesyscloud_user.hollywoo_mydevspace_com_1242694302.id}"
}

resource "genesyscloud_user" "terraform-3dcb25eb-f1d5-404f-9da8-85caf63a6245_example_com_3590147823" {
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-3dcb25eb-f1d5-404f-9da8-85caf63a6245@example.com"
}

resource "genesyscloud_user" "a140c98b-fdb0-42ff-abad-b2b0fa0a9355_mypurecloud_com_2122615009" {
  acd_auto_answer = false
  name            = "Python SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "a140c98b-fdb0-42ff-abad-b2b0fa0a9355@mypurecloud.com"
  state           = "active"
}

resource "genesyscloud_user" "a77e64b6-08d8-41a9-b58b-af25733badca_mypurecloud_com_3407711789" {
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  email           = "a77e64b6-08d8-41a9-b58b-af25733badca@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "mj002_waynecorp_com_2001306445" {
  state           = "active"
  name            = "Michael Billy Jackson"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "mj002@waynecorp.com"
}

resource "genesyscloud_user" "terraform-81117afc-895e-4ae1-9a4a-0e850a1c9596_example_com_680272148" {
  acd_auto_answer = false
  email           = "terraform-81117afc-895e-4ae1-9a4a-0e850a1c9596@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_8baeab13-8c9d-45d4-b78d-0bb30652a748_mypurecloud_com_146875136" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  email           = "8baeab13-8c9d-45d4-b78d-0bb30652a748@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Python SDK Tester"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "johnodoe_gmail_com_1600129600" {
  name            = "John O'Doe"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "johnodoe@gmail.com"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "terraform-5fc88d25-4642-4707-9398-a08dfedbfa71_example_com_1706570744" {
  email           = "terraform-5fc88d25-4642-4707-9398-a08dfedbfa71@example.com"
  name            = "John Data-96e5b237-1e5c-4587-903f-0e6967c38d65"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_0361b6b9-670f-48b6-84f0-858b2a452204_mypurecloud_com_1906916466" {
  state           = "active"
  name            = "Python SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "0361b6b9-670f-48b6-84f0-858b2a452204@mypurecloud.com"
}

resource "genesyscloud_user" "d9f681f8-b6fd-9d94-f00d-2420d630065f_mypurecloud_com_3675870745" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  name            = "JS SDK Tester"
  state           = "active"
  email           = "d9f681f8-b6fd-9d94-f00d-2420d630065f@mypurecloud.com"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-f08e2c58-9db6-4797-8f54-cbc5ac3a06a1_example_com_3860312568" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform-f08e2c58-9db6-4797-8f54-cbc5ac3a06a1@example.com"
  name            = "John Data-4e4224e5-b8e2-4629-b7d7-587ab406480e"
  state           = "active"
}

resource "genesyscloud_user" "_9c8d5d42-218a-494b-9649-31ce7939c08b_mypurecloud_com_3940614620" {
  email           = "9c8d5d42-218a-494b-9649-31ce7939c08b@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
}

resource "genesyscloud_user" "_6958616d-8889-d40c-af4f-b2279dac2250_mypurecloud_com_4001923410" {
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "6958616d-8889-d40c-af4f-b2279dac2250@mypurecloud.com"
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "terraform-b492078e-22f0-4c8e-a972-b7c897e44633_example_com_3906490334" {
  email           = "terraform-b492078e-22f0-4c8e-a972-b7c897e44633@example.com"
  name            = "Role Terraform"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "c4306f43-3afe-aa6a-a8bd-d700bdf449ad_mypurecloud_com_107422314" {
  email           = "c4306f43-3afe-aa6a-a8bd-d700bdf449ad@mypurecloud.com"
  name            = "JS SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "_0481b733-b91d-08ad-d146-efa6a214c5ae_mypurecloud_com_2085744991" {
  email           = "0481b733-b91d-08ad-d146-efa6a214c5ae@mypurecloud.com"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_556450dd-f7e3-4fba-8d9b-34e49af79e08_mypurecloud_com_1416873450" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  email           = "556450dd-f7e3-4fba-8d9b-34e49af79e08@mypurecloud.com"
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember49_genesystest_com_4053743690" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 49"
  state           = "active"
  acd_auto_answer = false
  email           = "groupmember49@genesystest.com"
}

resource "genesyscloud_user" "_5e8880aa-92b5-454b-a0b3-1d069cbf5f95_mypurecloud_com_1146432698" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = ".NET SDK Tester"
  state           = "active"
  profile_skills  = ["Testmaster"]
  email           = "5e8880aa-92b5-454b-a0b3-1d069cbf5f95@mypurecloud.com"
}

resource "genesyscloud_user" "e10c7df2-9c53-4e66-8317-ba95bb0a14aa_mypurecloud_com_998079146" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  email           = "e10c7df2-9c53-4e66-8317-ba95bb0a14aa@mypurecloud.com"
  name            = "Java SDK Tester"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "fdfec8b0-e717-4350-975a-890d15127801_mypurecloud_com_2327666069" {
  email           = "fdfec8b0-e717-4350-975a-890d15127801@mypurecloud.com"
  name            = "Python SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "test_webrtc_user_e0a7df68-be9e-4627-959e-2a8cd75e2259_test_com_2457862755" {
  acd_auto_answer = false
  state           = "active"
  email           = "test_webrtc_user_e0a7df68-be9e-4627-959e-2a8cd75e2259@test.com"
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "test_webrtc_user_e0a7df68-be9e-4627-959e-2a8cd75e2259"
  title           = "Senior Director"
}

resource "genesyscloud_user" "terraform-1-a09577b0-43f0-4e7f-a33c-8d34bd33a662_example_com_2847599047" {
  email           = "terraform-1-a09577b0-43f0-4e7f-a33c-8d34bd33a662@example.com"
  acd_auto_answer = false
  name            = "test user eb55485c-e4f3-4aa0-af38-eb113230247f"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
}

resource "genesyscloud_user" "b655e301-2906-0502-ab55-60d4afeba8f5_mypurecloud_com_2968911171" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  email           = "b655e301-2906-0502-ab55-60d4afeba8f5@mypurecloud.com"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "ricky_bobby_usa_com_3059308425" {
  title           = "Agent"
  acd_auto_answer = true
  department      = "Development"
  email           = "ricky.bobby@usa.com"
  name            = "Ricky Bobby"
  state           = "active"
  addresses {
    phone_numbers {
      type       = "MOBILE"
      media_type = "PHONE"
      number     = "+19205551212"
    }
  }
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  employer_info {
    date_hire     = "2021-03-18"
    employee_id   = "12345"
    employee_type = "Full-time"
    official_name = "Ricky Bobby"
  }
}

resource "genesyscloud_user" "terraform-7d55281c-3eed-4c11-bea6-fa46c0ddc410_example_com_3978699202" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-7d55281c-3eed-4c11-bea6-fa46c0ddc410@example.com"
  name            = "John Data-41acc18b-1f65-44d2-88f2-4f5ec69ee75c"
}

resource "genesyscloud_user" "_39da0bea-4888-4c73-b6bd-94b9ae1f3526_mypurecloud_com_3745264750" {
  acd_auto_answer = false
  name            = "Java SDK Tester"
  department      = "Ministry of Testing"
  email           = "39da0bea-4888-4c73-b6bd-94b9ae1f3526@mypurecloud.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "_6d85abf9-1531-4805-acf9-7b4158d40363_mypurecloud_com_1827562003" {
  acd_auto_answer = false
  state           = "active"
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "6d85abf9-1531-4805-acf9-7b4158d40363@mypurecloud.com"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "groupmember9_genesystest_com_3405988126" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember9@genesystest.com"
  name            = "Group Member 9"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "integration-jenkins-ab3a5730-1d3d-11eb-9ed5-8baa70bb0c1d_webhook_com_2820441722" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Jenkins"
  email           = "integration-jenkins-ab3a5730-1d3d-11eb-9ed5-8baa70bb0c1d@webhook.com"
}

resource "genesyscloud_user" "integration-jenkins-1eedb310-c7f6-11ed-ba5d-d39775f91d11_webhook_com_433317054" {
  state           = "active"
  acd_auto_answer = false
  email           = "integration-jenkins-1eedb310-c7f6-11ed-ba5d-d39775f91d11@webhook.com"
  name            = "Jenkins"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "e1048a23-91eb-4b9d-a397-578d2155ba36_mypurecloud_com_1300090532" {
  email           = "e1048a23-91eb-4b9d-a397-578d2155ba36@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "terraform-70ce816b-110a-42b3-bad7-3ad2deb1f0cb_example_com_320307540" {
  department      = "Development"
  email           = "terraform-70ce816b-110a-42b3-bad7-3ad2deb1f0cb@example.com"
  state           = "active"
  acd_auto_answer = false
  title           = "Senior Director"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Terraform"
}

resource "genesyscloud_user" "_02867e28-dc1d-4d7a-a7d5-6bcce768e318_mypurecloud_com_4015935673" {
  email           = "02867e28-dc1d-4d7a-a7d5-6bcce768e318@mypurecloud.com"
  name            = "Java SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "terraform-d1e3c96f-e7f5-4713-91c2-4f205ee4a48c_example_com_3131761302" {
  email           = "terraform-d1e3c96f-e7f5-4713-91c2-4f205ee4a48c@example.com"
  name            = "John Data-50f9f1e4-6f4f-4492-b834-cbfeec4f80ff"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "groupmember45_genesystest_com_3189127310" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 45"
  state           = "active"
  acd_auto_answer = false
  email           = "groupmember45@genesystest.com"
}

resource "genesyscloud_user" "e6abab53-7606-45c1-9c7d-3761e9fbf775_mypurecloud_com_3068150225" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e6abab53-7606-45c1-9c7d-3761e9fbf775@mypurecloud.com"
}

resource "genesyscloud_user" "_69ab422c-d0d6-4a5b-a6a4-b7f337965a97_mypurecloud_com_3716746643" {
  email           = "69ab422c-d0d6-4a5b-a6a4-b7f337965a97@mypurecloud.com"
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "groupmember20_genesystest_com_3194392173" {
  name            = "Group Member 20"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember20@genesystest.com"
  state           = "active"
}

resource "genesyscloud_user" "terraform-b265d375-69ec-47f3-b4bd-3923fd1be8d4_example_com_2770669673" {
  email           = "terraform-b265d375-69ec-47f3-b4bd-3923fd1be8d4@example.com"
  name            = "Role Terraform"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "_4f7509d0-3f4b-476f-9f60-ffb346ccbced_mypurecloud_com_388233362" {
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "4f7509d0-3f4b-476f-9f60-ffb346ccbced@mypurecloud.com"
  name            = "GO SDK Tester"
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "groupmember41_genesystest_com_3469419394" {
  state           = "active"
  email           = "groupmember41@genesystest.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 41"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_4c0f4b14-a820-415f-b41f-3d359949754c_mypurecloud_com_2188078268" {
  department      = "Ministry of Testing"
  acd_auto_answer = false
  email           = "4c0f4b14-a820-415f-b41f-3d359949754c@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  name            = "GO SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "hollywoo_mydevspace_com_1242694302" {
  routing_skills {
    proficiency = 2
    skill_id    = "e998055d-0924-48b8-bac0-08492e669574"
  }
  routing_skills {
    proficiency = 3
    skill_id    = "608ce170-8e5e-40b9-b12e-69a203f42452"
  }
  routing_skills {
    skill_id    = "f1afdbd4-9c39-4cd6-92da-f69317a0233f"
    proficiency = 3
  }
  routing_skills {
    proficiency = 4
    skill_id    = "fc47fb1d-e789-4fc8-b73a-da4402c2b72a"
  }
  state = "active"
  addresses {
    phone_numbers {
      media_type = "PHONE"
      number     = "+13175551000"
      type       = "WORK2"
    }
    phone_numbers {
      media_type = "PHONE"
      number     = "+13175559101"
      type       = "WORK3"
    }
    phone_numbers {
      media_type = "PHONE"
      number     = "+13175559103"
      type       = "WORK4"
    }
    phone_numbers {
      type       = "WORK"
      extension  = "1000"
      media_type = "PHONE"
      number     = "1000"
    }
  }
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email       = "hollywoo@mydevspace.com"
  employer_info {
    employee_id = "1234"
  }
  manager         = "${genesyscloud_user.hollywoo_bojack_horseman_mydevspace_com_92881968.id}"
  name            = "Hollywoo Admin"
  acd_auto_answer = true
  locations {
    location_id = "a74817d5-e8b5-437f-baf2-dbc5eade91a8"
  }
  routing_languages {
    language_id = "13005cea-29c2-458d-9247-90502d4154dc"
    proficiency = 0
  }
  routing_languages {
    language_id = "6040afdf-3485-4c4d-8cc2-f807e6364063"
    proficiency = 0
  }
  routing_languages {
    language_id = "b7754fad-7471-4c08-9a9d-b211720c042d"
    proficiency = 0
  }
  title          = "Sr. Administrator"
  department     = "Administration"
  profile_skills = ["Disappearing", "Ninja", "asdf", "test"]
}

resource "genesyscloud_user" "terraform-229d24c1-c5dd-4402-a3be-231c927a9f09_example_com_3289664873" {
  state           = "active"
  name            = "Role Terraform"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-229d24c1-c5dd-4402-a3be-231c927a9f09@example.com"
}

resource "genesyscloud_user" "test_webrtc_user_98c39d01-ff13-4884-942e-184faecdaaa7_test_com_1508880682" {
  acd_auto_answer = false
  email           = "test_webrtc_user_98c39d01-ff13-4884-942e-184faecdaaa7@test.com"
  name            = "test_webrtc_user_98c39d01-ff13-4884-942e-184faecdaaa7"
  department      = "Development"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  title           = "Senior Director"
}

resource "genesyscloud_user" "_3a149e39-7e6a-a261-24ae-2e905d4103bc_mypurecloud_com_4140673861" {
  email           = "3a149e39-7e6a-a261-24ae-2e905d4103bc@mypurecloud.com"
  name            = "JS SDK Tester"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "notanemail_example_com7d87b8b1-a7bc-4d9b-a9ef-f5fa385f203d_2999665775" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "notanemail@example.com7d87b8b1-a7bc-4d9b-a9ef-f5fa385f203d"
  acd_auto_answer = false
  name            = "terraform-user095c7f1d-a7d0-4e1f-83b0-6da2f41c1274"
}

resource "genesyscloud_user" "terraform-4818dc63-2b91-4276-a571-299c8569b8db_example_com_257219126" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Role Terraform"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-4818dc63-2b91-4276-a571-299c8569b8db@example.com"
}

resource "genesyscloud_user" "eeca5807-3949-4911-9824-61c1c42539cf_mypurecloud_com_2621752940" {
  name            = "GO SDK Tester"
  state           = "active"
  email           = "eeca5807-3949-4911-9824-61c1c42539cf@mypurecloud.com"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "terraform-b056c38e-a361-4e68-b039-a97e710c4f1b_example_com_2005372317" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-b056c38e-a361-4e68-b039-a97e710c4f1b@example.com"
  name            = "Role Terraform"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "test_webrtc_user_2501a697-ef09-4954-b54d-df637accb09e_test_com_1504537100" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "test_webrtc_user_2501a697-ef09-4954-b54d-df637accb09e@test.com"
  state           = "active"
  department      = "Development"
  name            = "test_webrtc_user_2501a697-ef09-4954-b54d-df637accb09e"
  title           = "Senior Director"
}

resource "genesyscloud_user" "declan_ginty_genesys_com_1944883390" {
  email           = "declan.ginty@genesys.com"
  name            = "Declan Ginty"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_90bc41a8-ef3e-27b8-16b6-eb3d9f4b792a_mypurecloud_com_2241052776" {
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "90bc41a8-ef3e-27b8-16b6-eb3d9f4b792a@mypurecloud.com"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  state           = "active"
}

resource "genesyscloud_user" "_917a2f7a-d083-48de-b68b-062138ec05ab_mypurecloud_com_2275640959" {
  state           = "active"
  department      = "Ministry of Testing"
  email           = "917a2f7a-d083-48de-b68b-062138ec05ab@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = ".NET SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "_8cb30b3b-b903-46af-9a22-1570820a7f33_mypurecloud_com_1420814976" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  state           = "active"
  acd_auto_answer = false
  email           = "8cb30b3b-b903-46af-9a22-1570820a7f33@mypurecloud.com"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "e715a0d4-402e-44cc-8402-f03ccf834917_mypurecloud_com_3219906542" {
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "e715a0d4-402e-44cc-8402-f03ccf834917@mypurecloud.com"
  acd_auto_answer = false
  name            = "Python SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "_779d1d8a-92ff-4919-83da-2d56b9823249_mypurecloud_com_1555318214" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  email           = "779d1d8a-92ff-4919-83da-2d56b9823249@mypurecloud.com"
  name            = "Python SDK Tester"
}

resource "genesyscloud_user" "_0bd46184-89cc-033b-1fb9-125e161ab53b_mypurecloud_com_3039960613" {
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "0bd46184-89cc-033b-1fb9-125e161ab53b@mypurecloud.com"
  name            = "JS SDK Tester"
}

resource "genesyscloud_user" "_6872a9b9-6249-41c7-a5bb-1aea335f98d1_mypurecloud_com_221194592" {
  email           = "6872a9b9-6249-41c7-a5bb-1aea335f98d1@mypurecloud.com"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "clitestinguser8861234laaaaaaa_waynecorp_com_1327306608" {
  email           = "clitestinguser8861234laaaaaaa@waynecorp.com"
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "CliTesting User8861234laaaaaaa"
}

resource "genesyscloud_user" "terraform-df6aaf67-65c7-4a6e-8062-c7736846b2a1_example_com_2151168321" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Terraform"
  acd_auto_answer = false
  state           = "active"
  email           = "terraform-df6aaf67-65c7-4a6e-8062-c7736846b2a1@example.com"
  title           = "Senior Director"
  department      = "Development"
}

resource "genesyscloud_user" "_703f77cc-d031-400d-b0c7-28fbfbd840c5_mypurecloud_com_2011109999" {
  acd_auto_answer = false
  state           = "active"
  name            = "Python SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "703f77cc-d031-400d-b0c7-28fbfbd840c5@mypurecloud.com"
}

resource "genesyscloud_user" "_4b69934e-eb1a-4aa1-80b6-f4fd18a8fc2f_mypurecloud_com_1383126280" {
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "4b69934e-eb1a-4aa1-80b6-f4fd18a8fc2f@mypurecloud.com"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "terraform1-570db902-565a-4c4c-9cd3-c64424bf10e3_example_com_2648573937" {
  name            = "Henry Terraform"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "terraform1-570db902-565a-4c4c-9cd3-c64424bf10e3@example.com"
}

resource "genesyscloud_user" "_46e25eb4-d349-4846-9938-1a7007952c2d_mypurecloud_com_1673571732" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
  department      = "Ministry of Testing"
  profile_skills  = ["Testmaster"]
  state           = "active"
  acd_auto_answer = false
  email           = "46e25eb4-d349-4846-9938-1a7007952c2d@mypurecloud.com"
}

resource "genesyscloud_user" "_9bd4b403-99fb-f451-8761-6e5782c64558_mypurecloud_com_1387193821" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  department      = "Ministry of Testing"
  email           = "9bd4b403-99fb-f451-8761-6e5782c64558@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
}

resource "genesyscloud_user" "integration-jira-3e0de440-2e2b-11e9-b065-29d1589bbb74_webhook_com_2182265673" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "integration-jira-3e0de440-2e2b-11e9-b065-29d1589bbb74@webhook.com"
  name            = "JIRA"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "someTestUser123_genesys_com_3158826235" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "someTestUser123@genesys.com"
  name            = "someTestUser123"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_9c2c29c0-b34b-cef2-4a8a-47937ba5f77b_mypurecloud_com_1880644977" {
  profile_skills  = ["Testmaster"]
  email           = "9c2c29c0-b34b-cef2-4a8a-47937ba5f77b@mypurecloud.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  name            = "JS SDK Tester"
  acd_auto_answer = false
  state           = "active"
}

resource "genesyscloud_user" "terraform-469d4698-6b0c-4873-bcff-141e6d47d66f_example_com_1876349413" {
  email           = "terraform-469d4698-6b0c-4873-bcff-141e6d47d66f@example.com"
  state           = "active"
  acd_auto_answer = false
  name            = "Role Terraform"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "bdw007_waynecorp_com_2581596770" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Billy D Williams"
  state           = "active"
  acd_auto_answer = false
  email           = "bdw007@waynecorp.com"
}

resource "genesyscloud_user" "_9905bfd2-724e-48ef-a5f6-801971cb978a_mypurecloud_com_890944139" {
  name            = "Java SDK Tester"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  email           = "9905bfd2-724e-48ef-a5f6-801971cb978a@mypurecloud.com"
  department      = "Ministry of Testing"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-b23b2944-2ef4-48c8-91ec-d1c3ecd45d25_example_com_4026044488" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "terraform-b23b2944-2ef4-48c8-91ec-d1c3ecd45d25@example.com"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "_5e710ae8-3e82-4012-b1d6-93e893a9d1ea_mypurecloud_com_1665220461" {
  acd_auto_answer = false
  email           = "5e710ae8-3e82-4012-b1d6-93e893a9d1ea@mypurecloud.com"
  state           = "active"
  name            = ".NET SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "integration-generic-f2b024c0-e2c8-11ed-ba34-bf650aa95030_webhook_com_362796332" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "integration-generic-f2b024c0-e2c8-11ed-ba34-bf650aa95030@webhook.com"
  name            = "Generic"
}

resource "genesyscloud_user" "_89710a7c-144d-4296-8daa-5a27a7533d91_mypurecloud_com_2102888345" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Python SDK Tester"
  email           = "89710a7c-144d-4296-8daa-5a27a7533d91@mypurecloud.com"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "groupmember2_genesystest_com_2782945769" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 2"
  state           = "active"
  acd_auto_answer = false
  email           = "groupmember2@genesystest.com"
}

resource "genesyscloud_user" "merge_user_relatetest_com_1514295047" {
  acd_auto_answer = false
  state           = "active"
  name            = "merge_user"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "merge_user@relatetest.com"
}

resource "genesyscloud_user" "terraform-c2831985-29e4-40a3-8c43-1ec33c047195_example_com_1562371912" {
  acd_auto_answer = false
  email           = "terraform-c2831985-29e4-40a3-8c43-1ec33c047195@example.com"
  name            = "John Data-103cd1e6-2048-4035-b6a0-148956267bb6"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "groupmember31_genesystest_com_4285716687" {
  state           = "active"
  acd_auto_answer = false
  name            = "Group Member 31"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember31@genesystest.com"
}

resource "genesyscloud_user" "ebenezer_osei_genesys_com_3833907490" {
  acd_auto_answer = false
  state           = "active"
  name            = "Ebenezer Osei"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "ebenezer.osei@genesys.com"
}

resource "genesyscloud_user" "groupmember46_genesystest_com_1784198065" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "Group Member 46"
  email           = "groupmember46@genesystest.com"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_51968fca-4a77-5563-8e61-94d11248787a_mypurecloud_com_219078484" {
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "JS SDK Tester"
  email           = "51968fca-4a77-5563-8e61-94d11248787a@mypurecloud.com"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  state           = "active"
}

resource "genesyscloud_user" "e5c75d83-8f2d-471d-91fa-163f24bc5649_mypurecloud_com_4273774917" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  email           = "e5c75d83-8f2d-471d-91fa-163f24bc5649@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "groupmember8_genesystest_com_7987535" {
  name            = "Group Member 8"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "groupmember8@genesystest.com"
  state           = "active"
}

resource "genesyscloud_user" "noWebhooksPerma623b2ee-4db1-4d2b-bf63-23adf1821c94_genesys-test_com_2974136354" {
  acd_auto_answer = false
  name            = "No Webhooks1df1b09d-2dd7-4806-a4a6-696e90bafe23"
  email           = "noWebhooksPerma623b2ee-4db1-4d2b-bf63-23adf1821c94@genesys-test.com"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-33de8ebc-4791-4aee-9606-f99fe61a5351_example_com_1081155374" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  name            = "Role Terraform"
  state           = "active"
  email           = "terraform-33de8ebc-4791-4aee-9606-f99fe61a5351@example.com"
}

resource "genesyscloud_user" "_403bccfe-3c71-d24a-c2e4-dac966765868_mypurecloud_com_519018895" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  email           = "403bccfe-3c71-d24a-c2e4-dac966765868@mypurecloud.com"
  name            = "JS SDK Tester"
  state           = "active"
  department      = "Ministry of Testing"
}

resource "genesyscloud_user" "terraform-fb81e892-857b-47bf-b828-29a88618c49b_example_com_276619264" {
  acd_auto_answer = false
  email           = "terraform-fb81e892-857b-47bf-b828-29a88618c49b@example.com"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  name            = "John Data-66075e62-c59f-41a5-afc2-debc822494fc"
  state           = "active"
}

resource "genesyscloud_user" "_28805318-661b-4029-8768-af29c6969b31_mypurecloud_com_829896116" {
  acd_auto_answer = false
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  email           = "28805318-661b-4029-8768-af29c6969b31@mypurecloud.com"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
}

resource "genesyscloud_user" "scott_drummond_genesys_com_1013303001" {
  acd_auto_answer = false
  email           = "scott.drummond@genesys.com"
  state           = "active"
  name            = "Scott Drummond"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "terraform-2c9a7a61-cdd1-4036-b264-ae7fc3334b92_example_com_1996133824" {
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-2c9a7a61-cdd1-4036-b264-ae7fc3334b92@example.com"
  state           = "active"
  name            = "Role Terraform"
}

resource "genesyscloud_user" "integration-pagerduty-0212b390-1d3e-11eb-9ed5-8baa70bb0c1d_webhook_com_3454661761" {
  acd_auto_answer = false
  email           = "integration-pagerduty-0212b390-1d3e-11eb-9ed5-8baa70bb0c1d@webhook.com"
  state           = "active"
  name            = "PagerDuty"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "typehinting_example_com_2190172321" {
  name            = "typehinting"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
  email           = "typehinting@example.com"
}

resource "genesyscloud_user" "integration-pagerduty-dfe9fa90-1bb0-11ec-a631-ef8e17d2e672_webhook_com_2886224694" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "integration-pagerduty-dfe9fa90-1bb0-11ec-a631-ef8e17d2e672@webhook.com"
  name            = "PagerDuty"
}

resource "genesyscloud_user" "_72805c5e-f9ae-f9ba-d297-6fa0bc6dd2ce_mypurecloud_com_3258297961" {
  name            = "JS SDK Tester"
  profile_skills  = ["Testmaster"]
  department      = "Ministry of Testing"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  state           = "active"
  email           = "72805c5e-f9ae-f9ba-d297-6fa0bc6dd2ce@mypurecloud.com"
}

resource "genesyscloud_user" "groupmember19_genesystest_com_3959737889" {
  name            = "Group Member 19"
  email           = "groupmember19@genesystest.com"
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
}

resource "genesyscloud_user" "test_webrtc_user_601121a9-67fe-4cce-a000-28ad9ac30640_test_com_3321338325" {
  email           = "test_webrtc_user_601121a9-67fe-4cce-a000-28ad9ac30640@test.com"
  acd_auto_answer = false
  name            = "test_webrtc_user_601121a9-67fe-4cce-a000-28ad9ac30640"
  department      = "Development"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  title           = "Senior Director"
}

resource "genesyscloud_user" "_1fc8d9ef-2b83-4773-acc0-e94574e3b4e6_mypurecloud_com_3583496525" {
  email           = "1fc8d9ef-2b83-4773-acc0-e94574e3b4e6@mypurecloud.com"
  name            = "Python SDK Tester"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "_97f949ea-0039-4c44-a413-af12e275472d_mypurecloud_com_1610586501" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  manager         = "${genesyscloud_user.hollywoo_princess_carolyn_mydevspace_com_1381035672.id}"
  email           = "97f949ea-0039-4c44-a413-af12e275472d@mypurecloud.com"
  name            = "Python SDK Tester"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "mike3r51343135145_example_com_3605118990" {
  name            = "Mike Doe"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "mike3r51343135145@example.com"
}

resource "genesyscloud_user" "terraform-a635efcd-94ac-473e-808b-ce6d531f2bf0_example_com_1506225483" {
  email           = "terraform-a635efcd-94ac-473e-808b-ce6d531f2bf0@example.com"
  name            = "John Data-5ec021a6-e048-4aff-bb67-2344deec5150"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  acd_auto_answer = false
}

resource "genesyscloud_user" "terraform-66bdf457-fe65-4cd9-af6c-58ab4a56ea24_example_com_2574746799" {
  state           = "active"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "terraform-66bdf457-fe65-4cd9-af6c-58ab4a56ea24@example.com"
  name            = "John Terraform"
  title           = "Senior Director"
  department      = "Development"
}

resource "genesyscloud_user" "terraform2-f73bf61f-b3ff-4173-b39f-7a6052638431_example_com_1397320662" {
  name            = "Amanda Terraform"
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  email           = "terraform2-f73bf61f-b3ff-4173-b39f-7a6052638431@example.com"
}

resource "genesyscloud_user" "_24d28dd7-d20c-4c0e-a1d0-9c9d0fcffe56_mypurecloud_com_1403406395" {
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "Java SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "24d28dd7-d20c-4c0e-a1d0-9c9d0fcffe56@mypurecloud.com"
}

resource "genesyscloud_user" "_484bcf5c-a74f-407b-9df0-7a92ee6942af_mypurecloud_com_367360139" {
  profile_skills  = ["Testmaster"]
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  email           = "484bcf5c-a74f-407b-9df0-7a92ee6942af@mypurecloud.com"
  state           = "active"
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
}

resource "genesyscloud_user" "florence_ambrose_RevmdQgTaVcr_savagechicken_comnet_2013837784" {
  division_id = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  title       = "MyTitle"
  addresses {
    other_emails {
      type    = "HOME"
      address = "florence.ambrose@RevmdQgTaVcr.savagechicken.comnet"
    }
  }
  name            = "Florence Ambrose updated"
  acd_auto_answer = false
  department      = "Savage Chicken"
  email           = "florence.ambrose@RevmdQgTaVcr.savagechicken.comnet"
  state           = "active"
}

resource "genesyscloud_user" "_3163973d-61c3-4207-8905-022c9765a7db_mypurecloud_com_780483811" {
  name            = "GO SDK Tester"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  profile_skills  = ["Testmaster"]
  state           = "active"
  department      = "Ministry of Testing"
  email           = "3163973d-61c3-4207-8905-022c9765a7db@mypurecloud.com"
}

resource "genesyscloud_user" "_2a10e8f7-6173-8d63-8d10-fd3f05fb07bf_mypurecloud_com_2557399449" {
  state           = "active"
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  department      = "Ministry of Testing"
  acd_auto_answer = false
  profile_skills  = ["Testmaster"]
  name            = "JS SDK Tester"
  email           = "2a10e8f7-6173-8d63-8d10-fd3f05fb07bf@mypurecloud.com"
}

resource "genesyscloud_user" "integration-jenkins-0afc56d0-c7de-11ed-bd9d-e7e03aa26bdc_webhook_com_2145019868" {
  name            = "Jenkins"
  acd_auto_answer = false
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  state           = "active"
  email           = "integration-jenkins-0afc56d0-c7de-11ed-bd9d-e7e03aa26bdc@webhook.com"
}

resource "genesyscloud_user" "_10d556ca-dc51-4a8d-bd91-9c07110dac89_mypurecloud_com_239879114" {
  division_id     = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
  acd_auto_answer = false
  department      = "Ministry of Testing"
  name            = "GO SDK Tester"
  profile_skills  = ["Testmaster"]
  state           = "active"
  email           = "10d556ca-dc51-4a8d-bd91-9c07110dac89@mypurecloud.com"
}

resource "genesyscloud_script" "zino_chat_hours_script" {
  script_name       = "zino_chat_hours_script"
  file_content_hash = "${filesha256("scripts/script-f350dc9e-c099-4a90-94ed-b76c5789a57f.json")}"
  filepath          = "scripts/script-f350dc9e-c099-4a90-94ed-b76c5789a57f.json"
}

