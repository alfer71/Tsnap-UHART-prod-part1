variable "vsphere_server" {
  description = "vCenter server"
  type        = string
  default     = "vx-hillyer-vcenter.hartford.edu"
}

variable "vsphere_user" {
  description = "vCenter username"
  type        = string
  sensitive   = true
}

variable "vsphere_password" {
  description = "vCenter password"
  type        = string
  sensitive   = true
}

variable "serverlist" {
  description = "Map of FQDN to VM UUID"
  type        = map(string)
  default = {
    "uhart-pssba-001.hartford.edu" = "421a5980-bf4a-9905-ba3e-3be73a9c7932"
    "uhart-pwkfa-001.hartford.edu" = "421a5f13-70d8-7559-19b7-e9990bdb36c7"
    "dw-java-prod-01.hartford.edu" = "421aba01-4977-505b-eabc-4caa5409c630"
#    "dw-db-prod-01.hartford.edu" = "421af5f7-f5d5-ab52-6bee-69f866b21eaf"
    "dw-app-prod-01.hartford.edu" = "421a7619-b342-6574-6b9d-60e14785e8a1"
  }
}

# Example: Output the server list
output "server_uuids" {
  value = var.serverlist
}
