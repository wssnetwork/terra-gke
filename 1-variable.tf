variable "project" {
  type        = string
  description = "gcp project code"
  default     = "<gcp-proj-id>"
}

variable "region" {
  type        = string
  description = "selected region"
  default     = "asia-southeast1"
}

variable "zone-a" {
  type        = string
  description = "selected zone"
  default     = "asia-southeast1-a"
}

variable "zone-b" {
  type        = string
  description = "selected zone"
  default     = "asia-southeast1-b"
}

variable "zone-c" {
  type        = string
  description = "selected zone"
  default     = "asia-southeast1-c"
}

variable "bucket_tfstate" {
  type        = string
  description = "location to store tfstate"
  default     = "<put-your-bucket-name"
}

variable "proj_name" {
  type        = string
  description = "project name to reuse all over project"
  default     = "wss-terra-gke"

}

variable "k8s_namespace" {
  type        = string
  description = "k8s namespace for workload identity - must define in deploy pods"
  default     = "staging"
}