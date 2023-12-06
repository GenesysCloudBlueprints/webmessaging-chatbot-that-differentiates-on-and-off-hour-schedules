---
title: Build a web messaging chatbot that differentiates between on-hour and off-hour chats
author: zino.onokpise
indextype: blueprint
icon: blueprint
category: 4
summary: |
  This Genesys Cloud Developer Blueprint demonstrates how to build an architect flow that evaluates a schedule, builds and routes to a chatbot which stores information about a customer and transfers the information to an agent using a script. All the components in this solution can be deployed using Terraform, and the Terraform Genesys Cloud CX as Code provider.
---

This Genesys Cloud Developer Blueprint demonstrates how to build an architect flow that evaluates a schedule, builds and routes to a chatbot which stores information about a customer and transfers the information to an agent using a script. All the components in this solution can be deployed using Terraform, and the Terraform Genesys Cloud CX as Code provider.

### Scenario

An organization would like to improve customer service experience when processing product orders for their customers by providing a chatbot to reach out to whenever their agents are out of the office. They determine that this chatbot must be able to:

- Retrieve whatever question the customer may have and their corresponding order.
- Pass along the retrieved information to an agent after processing the customer's request.

### Solution

This blueprint explains how to use the following Genesys Cloud capabilities:

- **Architect inbound message flow** - provides the integration and the routing layer that gets the customer to the chatbot and eventually an off-hour agent.
- **Architect bot flow** - allows for tracking of key customer information by defining slots associated with the context of the chatbots usage.
- **Web chat Widget** - allows developers to create and configure a JavaScript web chat widget that deploys to their organization's website where customers interact with it.

### Solution components

- **Genesys Cloud CX** - A suite of Genesys Cloud services for enterprise-grade communications, collaboration, and contact center management. In this solution, you use an Architect inbound message flow, a Genesys Cloud integration, a Genesys Cloud queue, web messaging configuration, and web messaging deployment.
- **Web messaging and Messenger** - The Genesys Cloud messaging platform that enables asynchronous conversations and a unified agent and supervisor experience across all Genesys Cloud messaging channels. Messenger is the predefined message window that customers use to communicate with bots and agents.
- **Scripts** - A Genesys Cloud tool used to customize contact center behavior with scripting capabilities.
- **CX as Code** - A Genesys Cloud Terraform provider that provides an interface for declaring core Genesys Cloud objects.
- **Archy** - A Genesys Cloud command-line tool for building and managing Architect flows.

## Prerequisites

### Specialized knowledge

- Administrator-level knowledge of Genesys Cloud
- AWS Cloud Practicioner-level knowledge of AWS IAM and AWS Lambda
- Experience with Terraform

### Genesys Cloud account

- A Genesys Cloud license. For more information see, [Genesys Cloud Pricing](https://www.genesys.com/pricing 'Goes to the Genesys Cloud pricing page') in the Genesys Cloud website. For this project, you need at least a Genesys Cloud CX 3 license and a botFlows product for your organization.
- Master Admin role. For more information see, [Roles and permissions overview](https://help.mypurecloud.com/?p=24360 'Goes to the Roles and permissions overview article') in the Genesys Cloud Resource Center.
- Archy. For more information see, [Welcome to Archy](https://developer.genesys.cloud/devapps/archy/ 'Goes to the Welcome to Archy page') in the Genesys Cloud Developer Center.
- CX as Code. For more information see, [CX as Code](https://developer.genesys.cloud/devapps/cx-as-code/ 'Goes to the CX as Code page') in the Genesys Cloud Developer Center.

### Development tools running in your local environment

- Terraform (the latest binary). For more information, see [Download Terraform](https://www.terraform.io/downloads.html 'Goes to the Download Terraform page') on the Terraform website.
- Archy (the latest version). Archy is Genesys Cloud's command line to deploy Genesys Cloud Architect flows. For more information, see:

  - [Archy Documentation](https://developer.genesys.cloud/devapps/archy/ 'Goes to the Welcome to Archy page')
  - [Installing and Configuring Archy - Video](https://www.youtube.com/watch?v=fOI_vq3PnM8 'Goes to the DevDrop 8a: Installing and configuring Archy video') in YouTube
  - [Exporting flows with Archy - Video](https://www.youtube.com/watch?v=QAmkM_agsrY 'Goes to the DevDrop 8b: Exporting flows with Archy video') in YouTube
  - [Importing flows with Archy - Video](https://www.youtube.com/watch?v=3NwGJ9X1O0s 'Goes to the DevDrop 8c: Importing an Architect flow using Archy video') in YouTube

## Implementation steps

### Clone the Github repository

Clone the [webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules](https://github.com/GenesysCloudBlueprints/webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules) Github repository on your local machine.

### Configure your Terraform build

You must define several values that re specific to your AWS region and Genesys Cloud organization.

In the blueprint/terraform.tfvars file in the root folder, set the following values:

- `divisionId` - Your Genesys Cloud organization ID.
- `awsRegion` - The AWS region (for example us-east-1, us-west-2).
- `environment` - This is a free-form field that combines with the prefix value to define the name of various Genesys Cloud artifcacts. For example, if you set the environment name to be `test` and prefix to be `project1` your Genesys Cloud queue, messenger deployment, config and script will all begin with `test-project1`.
- `prefix` - This is a free-form field that combines the environment value to define the name of various Genesys Cloud artifacts.
- `userId` - The user id you want associatedd with the queue to be created. This user will receive inbound messages from your customer.
- `oauthClientId` - The Genesys Cloud client credential grant ID that CX as Code executes against.
- `oauthClientSecret` - The Genesys Cloud client credential secret that CX as Code executes against.

The following is an example of terraform.tfvars file that was created by the author of this blueprint.

```
divisionId = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
awsRegion              = "us-east-1"
environment            = "dev"
prefix                 = "ice"
```

### Run Terraform

You are now ready to run this blueprint solution for your organization.

1. Change to the blueprints/terraform folder and issue these commands:

- `terraform plan` - This executes a trial run against your Genesys Cloud organization and shows you a list of all Genesys Cloud resources created. Review this list and make sure you are comfortable with the activity being undertake before continuing to the second step.

- `terraform apply --auto-approve` - This does the actual object creation and deployment against your Genesys Cloud account. The --auto--approve flag steps the approval step required before creating the objects.

After the `terraform apply --auto-approve` command has completed, you should see the output of the entire run along with the number of objects successfully created by Terraform. Keep these points in mind:

- This project assumes you are running using a local Terraform backing state. This means that the `tfstate` files will be created in the same folder where you ran the project. Terraform does not recommend using local Terraform backing state files unless you run from a desktop and are comfortable with the deleted files.

- As long as your local Terraform backing state projects are kept, you can tear down the blueprint in question by changing to the `blueprint/terraform` folder and issuing a `terraform destroy --auto-approve` command. This destroys all objects currently managed by the local Terraform backing state.

### Test your deployment

After the chatbot is deployed to your environment, use the Genesys Cloud Web Messenger feature to test it.

![Test your deployed web messenger](images/testWebMessenger.png 'Test yoour deployed web messenger')

1. Go to the [Web chat messenger developer tool](https://developer.genesys.cloud/devapps/web-chat-messenger) in the Genesys Cloud Developer Center.
2. From the **Deployment** list, select your chat deployment. In the diagram above, the sample deployment would appear as `dev-ice_webmessenge_deployment`. If you do not see your deployment, the web chat widget did not deploy correctly.
3. Click **Start Chat**. This button initiated a chat with which may be directed to your agent (the userId provided) or a chatbot depending on the time of day, evaluated by the schedule resource created. If the chat is answered by a bot, it will ask "Ask me aquestion about your order".
4. Respond by entering a question.
5. When prompted for your 5-digit order number, enter a 5-digit number.

Your agent should receive a webmessage, with the information provided to the bot in a script. If you receive this, the chat bot succesfully fetched information from the customer and routed the conversation to the agent.

## Additional resources

- [About widgets for web chat](https://help.mypurecloud.com/articles/about-widgets-for-web-chat/ 'Goes to the About widgets for web chat article') in the Genesys Cloud Resource Center
- [Genesys Cloud Web messaging and messenger](https://developer.genesys.cloud/commdigital/digital/webmessaging/ 'Goes to the Web messaging and Messenger page')
- [About Web messaging](https://help.mypurecloud.com/?p=228564 'Goes to the About Web messaging article') in the Genesys Cloud Resource Center
- [Genesys Cloud Terraform provider documentation](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest/docs 'Goes to the Genesys Cloud provider page') in the Terraform documentation
- [webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules](https://github.com/GenesysCloudBlueprints/webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules) in Github
