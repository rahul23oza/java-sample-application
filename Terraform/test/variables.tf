# variable "access_key" {}
# variable "secret_key" {}

variable "regions" {
  type        = list(string)
  default     = ["us-east-1", "ap-south-1", "us-west-1"]
  description = "The AWS region where all resources will be provisioned."
}


variable "container_definitions" {
  description = "A list of container definitions to be used in the TD."
  default = {
    name  = "web-Container"
    image = "398412653278.dkr.ecr.us-west-1.amazonaws.com/java_aws:latest"
    portMappings = [
      {
        containerPort = 8080
        hostPort      = 8080
        appProtocol   = "http"
        name          = "encoding-server-8080-tcp"
        protocol      = "tcp"
      }
    ]
  }
}
