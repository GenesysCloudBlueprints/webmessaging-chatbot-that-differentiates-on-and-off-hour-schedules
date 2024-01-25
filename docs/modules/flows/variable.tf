variable "prefix" {
  type        = string
  description = "A name that is to be used as the resource name prefix. Usually it's the project name."
}

variable "environment" {
  type        = string
  description = "Name of the environment, e.g., dev, test, stable, staging, uat, prod etc."
}

variable "queueName" {
  type = string 
  description= "Name of queue of which bot transfers customer to"
}

variable "scheduleName" {
  type = string 
  description= "Name of schedule to evaluate routing"
}