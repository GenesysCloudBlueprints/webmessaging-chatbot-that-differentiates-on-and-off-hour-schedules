---
title: Build a web messaging chat bot that differentiates between chats depending on whether agents are offline or not
author: zino.onokpise
indextype: blueprint
icon: blueprint
category: 4
summary: |
  This Genesys Cloud Developer Blueprint builds an Architect flow that evaluates a schedule, builds a chat bot and routes customer interactions to it when agents are offline. The chat bot stores relevant customer information and transfers the information to an agent using a script. You deploy all the components in this solution with Terraform, and the Terraform Genesys Cloud CX as Code provider.
---
:::{"alert":"primary","title":"About Genesys Cloud Blueprints","autoCollapse":false} 
Genesys Cloud blueprints were built to help you jump-start building an application or integrating with a third-party partner. 
Blueprints are meant to outline how to build and deploy your solutions, not a production-ready turnkey solution.
 
For more information about Genesys Cloud blueprint support and practices, 
see our Genesys Cloud blueprint [FAQ](https://developer.genesys.cloud/blueprints/faq) sheet.
:::

This Genesys Cloud Developer Blueprint builds an Architect flow that evaluates a schedule, builds a chat bot and routes customer interactions to it when agents are offline. The chat bot stores relevant customer information and transfers the information to an agent using a script. You deploy all the components in this solution with Terraform, and the Genesys Cloud Terraform provider CX as Code.

### Scenario

An organization wants to improve the customer's experience with product orders. The organization provides a chat bot that the customer can reach out to when agents are out of office. The chat bot must be able to:

- Retrieve any question or order request that the customer might have.
- Transfer the retrieved information to an agent after the bot has processed the customer's request.

### Solution

This blueprint explains how to use the following Genesys Cloud capabilities:

- **Architect inbound message flow** - provides the integration and routing layer that routes the customer to the chat bot and eventually to an agent.
- **Architect bot flow** - tracks key customer information through the use of slots associated with the context of the chat bot.
- **Web Messenger** - allows developers to create and configure a JavaScript web messenger snippet that deploys to their organization's website where customers can interact with it.

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

- A Genesys Cloud license. For more information, see [Genesys Cloud Pricing](https://www.genesys.com/pricing 'Opens the Genesys Cloud pricing page') in the Genesys Cloud website. For this project, you need at least a Genesys Cloud CX 3 license and a Genesys Dialog Engine Bot Flow product for your organization.
- Master Admin role. For more information, see [Roles and permissions overview](https://help.mypurecloud.com/?p=24360 'Opens the Roles and permissions overview article') in the Genesys Cloud Resource Center.
- Archy. For more information, see [Welcome to Archy](https://developer.genesys.cloud/devapps/archy/ 'Goes to the Welcome to Archy page') in the Genesys Cloud Developer Center.
- CX as Code. For more information, see [CX as Code](https://developer.genesys.cloud/devapps/cx-as-code/ 'Goes to the CX as Code page') in the Genesys Cloud Developer Center.

### Development tools that run in your local environment

- Terraform (the latest binary). For more information, see [Download Terraform](https://www.terraform.io/downloads.html 'Goes to the Download Terraform page') on the Terraform website.
- Archy (the latest version). Archy is Genesys Cloud's command-line tool to deploy Genesys Cloud Architect flows. For more information, see:

  - [Archy Documentation](https://developer.genesys.cloud/devapps/archy/ 'Goes to the Welcome to Archy page')
  - [Installing and Configuring Archy - Video](https://www.youtube.com/watch?v=fOI_vq3PnM8 'Opens the DevDrop 8a: Installing and configuring Archy video on YouTube')
  - [Exporting flows with Archy - Video](https://www.youtube.com/watch?v=QAmkM_agsrY 'Opens the DevDrop 8b: Exporting flows with Archy video on YouTube')
  - [Importing flows with Archy - Video](https://www.youtube.com/watch?v=3NwGJ9X1O0s 'Opens the DevDrop 8c: Importing an Architect flow using Archy video on YouTube')

## Implementation steps

### Clone the Github repository

Clone the [webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules](https://github.com/GenesysCloudBlueprints/webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules "Opens the webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules repository in GitHub") Github repository on your local machine.

### Configure your Terraform build

In the `blueprint/terraform.tfvars` file in the root folder, set the following values, which are specific to your AWS region and Genesys Cloud organization:

- `divisionId` - Your Genesys Cloud division ID.
- `awsRegion` - The AWS region (for example, `us-east-1`, `us-west-2`).
- `environment` - This is a free-form field that combines with the `prefix` value to define the name of various Genesys Cloud artifacts. For example, if you set the value of `environment` to `test` and the value of `prefix` to `project1`, the name of your Genesys Cloud queue, Messenger deployment, configuration and script will begin with `test-project1`.
- `prefix` - This is a free-form field that combines with the `environment` value to define the name of various Genesys Cloud artifacts.
- `userId` - The user ID that you want to associate with the queue that Terraform creates. The user associated with the user ID will receive the inbound messages from your customer.
- `oauthClientId` - The Genesys Cloud client credential grant ID that CX as Code executes against.
- `oauthClientSecret` - The Genesys Cloud client credential secret that CX as Code executes against.

The following is an example of the `terraform.tfvars` file:

```
divisionId = "4a7e4f4b-e734-40b6-838e-557c5eedd49a"
awsRegion              = "us-east-1"
environment            = "dev"
prefix                 = "ice"
```

### Run Terraform

You are now ready to run this blueprint solution for your organization.

1. Change to the `blueprints/terraform` folder.
2. Issue the following commands:

- `terraform plan` - This command executes a trial run against your Genesys Cloud organization and shows you a list of all the Genesys Cloud resources it creates. Review this list and make sure that you agree with the plan before you continue to the second step.

- `terraform apply --auto-approve` - This command creates and deploys the necessary objects in your Genesys Cloud account. The `--auto-approve` flag completes the required approval step before the command creates the objects.

After the `terraform apply --auto-approve` command successfully completes, you see the output of the entire run along with the number of objects that Terraform successfully created. Keep the following points in mind:

* This project assumes that you run this blueprint solution with a local Terraform backing state, which means that the `tfstate` files are created in the same folder where you run the project. Terraform recommends that you use local Terraform backing state files only if you run from a desktop and are comfortable with the deleted files.

* As long as you keep your local Terraform backing state projects, you can tear down this blueprint solution. To tear down the solution, change to the `docs/terraform` folder and issue the `terraform destroy --auto-approve` command. This command destroys all objects that the local Terraform backing state currently manages.

### Test your deployment

After the chat bot is deployed to your environment, use the Genesys Cloud Web chat/messaging developer tool to test it.

![Test your deployed web messenger](images/testWebMessenger.png 'Test your deployed web messenger')

1. Go to the [Web chat/messaging developer tool](https://developer.genesys.cloud/devapps/web-chat-messenger) in the Genesys Cloud Developer Center.
2. From the **Deployment** list, select your web messenger deployment. The sample deployment appears as `dev-ice_webmessage_deployment`. If you do not see your deployment, Messenger did not deploy correctly.
3. Click **Start Chat**. Genesys Cloud routes the interaction to an agent or a chat bot depending on the time of day and based on the schedule resource that Terraform created. If Genesys Cloud routes the interaction to a chat bot, the bot responds with "Ask me a question about your order".
4. Enter your question.
5. When prompted, enter your five-digit order number.

The agent receives the information that you provided to the chat bot in a script. If you receive this information, the chat bot successfully fetched it from the customer and routed the conversation to the agent.

## Additional resources

- [Genesys Cloud Web messaging and Messenger](https://developer.genesys.cloud/commdigital/digital/webmessaging/ "Opens the Web messaging and Messenger page in the Genesys Cloud Developer Center")
- [About Web messaging](https://help.mypurecloud.com/articles/about-web-messaging/ "Opens the About Web messaging article in the Genesys Cloud Resource Center")
- [Genesys Cloud Terraform provider documentation](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest/docs 'Goes to the Genesys Cloud provider page in the Terraform documentation')
- [Github repository for the Build a web messaging chat bot that differentiates between chats depending on whether agents are offline or not Blueprint](https://github.com/GenesysCloudBlueprints/webmessaging-chatbot-that-differentiates-on-and-off-hour-schedules/ "Opens the Github repository for the Build a web messaging chat bot that differentiates between chats depending on whether agents are offline or not Blueprint")
