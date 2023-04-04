variable "name" {
  type = string
  description = "the cluster name"
}
variable "cluster_version" {
  type = string
  description = "the cluster version"
}
/**variable "iam_role_arn" {
  description = "the iam role arn with EKS credentials"
}*/
variable "instance_types" {
  description = "the instance type"
  type = list(string)
  default = null
}
variable "disk_size" {
  description = "the disk size"
}
variable "nodes_num" {
  description = "how many nodes in a group"
}
variable "vpc_id" {
  description = "the vpc id"
}
variable "vpc_private_subnet" {
  description = "the vpc private subnet"
  type = list(string)
  default = []
}