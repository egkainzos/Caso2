variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_B2ms" # 8 GB, 2 CPU 
}
variable "vm_size1" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_B2s" # 3.5 GB, 2 CPU 
}
variable "vm_size2" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}