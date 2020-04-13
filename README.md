# ARCHIVED

This project has moved to [this repo](https://github.com/AaronNBrock/terraform-aws-s3-backend-resources)

# s3-backend-resources

This terraform module provisions the resources needed for using the [terraform s3 backend](https://www.terraform.io/docs/backends/types/s3.html).

# Documentation

## Providers

| Name | Version |
| ---- | ------- |
| aws  | ~> 2.0  |

## Inputs

| Name              | Description                                                                                        | Type     | Default | Required |
| ----------------- | -------------------------------------------------------------------------------------------------- | -------- | ------- | :------: |
| backend_name      | The name used to create both the bucket & the DynamoDB table. (Note: This must be globally unique) | `string` | n/a     |   yes    |
| bucket_mfa_delete | Enable bucket MFA delete.                                                                          | `bool`   | `false` |    no    |
| bucket_versioning | Enable s3 bucket versioning.                                                                       | `bool`   | `true`  |    no    |

## Outputs

No output.
