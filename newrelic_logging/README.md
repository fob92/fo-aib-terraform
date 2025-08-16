## New Relic Logging Terraform Module

This Terraform module grants the service account `wnr00v58or2@newrelic-gcp.iam.gserviceaccount.com` the following roles in a specified GCP project:

- Viewer (`roles/viewer`)
- Service Usage Consumer (`roles/serviceusage.serviceUsageConsumer`)

The project is specified using the `project_id` variable.

### Usage

```hcl
module "newrelic_logging" {
	source     = "./newrelic_logging"
	project_id = "your-gcp-project-id"
}
```
