[![Slalom][logo]](https://slalom.com)

# terraform-aws-budget [![Build Status](https://travis-ci.com/JamesWoolfenden/terraform-aws-budget.svg?branch=master)](https://travis-ci.com/JamesWoolfenden/terraform-aws-budget) [![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-aws-budget.svg)](https://github.com/JamesWoolfenden/terraform-aws-budget/releases/latest)

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
  }
```

The variable limit creates 2 sets of alerts one at its setting and another at half.
Additional users or groups can added to *subscriber_email_addresses*.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| budget | Basic Budget Properties | map | `{ "budget_type": "COST", "limit_unit": "USD", "name": "budget-ec2-monthly", "time_unit": "MONTHLY" }` | no |
| cost\_filters | The Budget filters to use | map | `"null"` | no |
| limit | Budget alarm limit | number | n/a | yes |
| notification | Budget notification properties | string | n/a | yes |
| time\_period\_start | Time to start | string | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| ec2\_budget |  |
| ec2\_half\_budget |  |

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

Copyright © 2019-2020 [Slalom, LLC](https://slalom.com)

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

  [![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage]

  [jameswoolfenden_homepage]: https://github.com/jameswoolfenden
  [jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150

[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/company/slalom-consulting/
[twitter]: https://twitter.com/Slalom

[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-aws-budget&url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-aws-budget&url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-aws-budget
[share_email]: mailto:?subject=terraform-aws-budget&body=https://github.com/JamesWoolfenden/terraform-aws-budget
