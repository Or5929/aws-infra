
 variable vpc_id {
    description = "define vpc_id for lb"
    type = string
 }

 variable lb_cidr {
    description = "define lb_cidr for lb"
    type = string
 }

 variable ingress_port {
   description = "define ingress_port for lb"
    type = number
 }