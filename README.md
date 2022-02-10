# terraform-aws-budget

[![Build Status](https://github.com/JamesWoolfenden/terraform-aws-budget/workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-aws-budget)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-budget.svg)](https://github.com/JamesWoolfenden/terraform-aws-budget/releases/latest)
[![GitHub tag (latest SemVer)](https://img.shields.io/github/tag/JamesWoolfenden/terraform-aws-budget.svg?label=latest)](https://github.com/JamesWoolfenden/terraform-aws-budget/releases/latest)
![Terraform Version](https://img.shields.io/badge/tf-%3E%3D0.14.0-blue.svg)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/JamesWoolfenden/terraform-aws-budget/cis_aws)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-budget&benchmark=CIS+AWS+V1.2)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![checkov](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)
[![Infrastructure Tests](https://www.bridgecrew.cloud/badges/github/jameswoolfenden/terraform-aws-budget/general)](https://www.bridgecrew.cloud/link/badge?vcs=github&fullRepo=JamesWoolfenden%2Fterraform-aws-budget&benchmark=INFRASTRUCTURE+SECURITY)

Terraform module - creates a Budget and a Budget for half as much.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

These are just basic examples, your budget rules should be much more sophisticated.

Include this repository as a module in your existing terraform code:

```terraform
module "budget" {
  source            = "JamesWoolfenden/budget/aws"
  version           = "0.3.32"
  limit             = var.limit
  time_period_start = var.time_period_start
  budget            = var.budget
  notification      = var.notification
}
```

The module reference uses 2 objects, budget and notification, from the example data. This module implements billing alerts on your AWS account,
the provided variables are in **examplea.auto.tfvars**:

```HCL
budget={
    name              = "budget-ec2-monthly"
    budget_type       = "COST"
    time_unit         = "MONTHLY"
    limit_unit        = "Pounds"
   }
notification={
    comparison_operator        = "GREATER_THAN"
    threshold                  = 100
    threshold_type             = "PERCENTAGE"
    notification_type          = "FORECASTED"
    subscriber_email_addresses = ["test@example.com"]
    subscriber_sns_topic_arns  = [""]
  }
```

The variable limit creates 2 sets of alerts one at its setting and another at half.
Additional users or groups can added to _subscriber_email_addresses_.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_budgets_budget.full](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |
| [aws_budgets_budget.half](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/budgets_budget) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_budget"></a> [budget](#input\_budget) | Basic Budget Properties | `map(any)` | <pre>{<br>  "budget_type": "COST",<br>  "limit_unit": "USD",<br>  "name": "budget-ec2-monthly",<br>  "time_unit": "MONTHLY"<br>}</pre> | no |
| <a name="input_cost_filters"></a> [cost\_filters](#input\_cost\_filters) | The Budget filters to use | `map(any)` | `null` | no |
| <a name="input_half_budget_enabled"></a> [half\_budget\_enabled](#input\_half\_budget\_enabled) | Whether to enable or disable the half budget alert | `bool` | `true` | no |
| <a name="input_limit"></a> [limit](#input\_limit) | Budget alarm limit | `number` | n/a | yes |
| <a name="input_notification"></a> [notification](#input\_notification) | Budget notification properties | <pre>object({<br>    comparison_operator        = string<br>    threshold                  = number<br>    threshold_type             = string<br>    notification_type          = string<br>    subscriber_email_addresses = set(any)<br>    subscriber_sns_topic_arns  = set(any)<br>  })</pre> | n/a | yes |
| <a name="input_time_period_start"></a> [time\_period\_start](#input\_time\_period\_start) | Time to start | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_budget"></a> [budget](#output\_budget) | n/a |
| <a name="output_half_budget"></a> [half\_budget](#output\_half\_budget) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-aws-budget/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-aws-budget/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2022 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-budget&url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-budget&url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_email]: mailto:?subject=terraform-aws-budget&body=https://github.com/JamesWoolfenden/terraform-aws-budget
