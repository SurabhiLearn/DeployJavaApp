variable "rg_name"{
    type    = string
    default = "JavaApp"
}

variable "location"{
    type    = string
    default = "South India"
}

variable "acr_sku"{
    type    = string
    default = "Standard"
}
  
variable "appId" {
  type = string
  default = ["f32840eb-7d91-49a0-8822-21510b37361c"]
}

variable "password" {
  type    = string
  default = ["ho-6tgd_~VVtAzwa5jo2iVrwphoQJd01eI"]
}

variable "tenant" {
  type    = string
  default = ["c73e4f3e-4bf8-4739-833e-1eaaabefd2e6"]
}
}

variable "ac_name" {
  type    = string
  default = "SprintBootDeployment"
}

variable "aks_name" {
      type    = string
  default = "JavaApp_AKS"
}

variable "akv_name" {
    type    = string
  default = "JavaApp_AKV"
}

