variable "project_id" {
    description = "project_id"
    type = string
    # default = qwiklabs-gcp-04-0643d1ecfa02
}

variable "key_ring" {
    type = string
    # default = rakesh-key-ring
  
}

variable "key_name" {
    type = string
   # default = rakesh-key
  
}

variable "iam_role_member" {
    type = map(list(string))
    default = {}
  
}

variable "use_iam_binding" {
    type = bool
    default = true
  
}

variable "purpose" {
  type = string
  default = "ENCRYPT_DECRYPT"

}

variable "rotation_period" {
    type = string
    default = "7776000s"
  
}

variable "algorithm" {
    type = string
    default = "null"
  
}
variable "protection_level" {
    type = string
    default = "HSM"
  
}

variable "labels" {
    type = map(string)
    default = {}
  
}

variable "destroy_Schedule_Duration" {

    type = number
    default = 14
  
}

variable "default_algorithms" {
    type = string
    default = "GOOGLE_SYMETRIC_ENCRYPTION"
  
}
