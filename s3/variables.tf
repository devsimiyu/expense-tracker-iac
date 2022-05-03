variable "props" {
  type = map(string)
  default = {
    profile    = "devsimiyu"
    region     = "us-east-1"
    bucket     = "expense-tracker-file-uploads"
    acl        = "public-read"
  }
}
