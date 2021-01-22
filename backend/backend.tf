terraform {
  backend "s3" {
    bucket = "su-remote-backend"
    key    = "remotedemo.tfstate"
    region = "us-east-1"
    access_key = "AKIASIOXR6J43LTNHGZH"
    secret_key = "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"
    #dynamodb_table = "s3-state-lock"
  }
}
