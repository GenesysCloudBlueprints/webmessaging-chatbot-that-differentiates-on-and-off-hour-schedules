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
- **Scripts** - A Genesys Cloud tool used to customize contact center behavior with scripting capabilities
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
