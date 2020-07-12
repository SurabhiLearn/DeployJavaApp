variable "rg_name"{
    type    = string
    default = "javaapp1"
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
  default = "f32840eb-7d91-49a0-8822-21510b37361c"
}

variable "password" {
  type    = string
  default = "ho-6tgd_~VVtAzwa5jo2iVrwphoQJd01eI"
}

variable "object_id"{
  type = string
  default = "9dd3812d-720f-47d7-b195-4e3517e97adf"
}

variable "tenant" {
  type    = string
  default = "c73e4f3e-4bf8-4739-833e-1eaaabefd2e6"
}

variable "ac_name" {
  type    = string
  default = "sprintbootdeployment"
}

variable "aks_name" {
      type    = string
  default = "javaaks"
}

variable "akv_name" {
    type    = string
  default = "javaakv"
}
