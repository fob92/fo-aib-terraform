locals {
  sa_newrelic_gcp_logging = "wnr00v58or2@newrelic-gcp.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "newrelic_viewer" {
	project = var.project_id
	role    = "roles/viewer"
	member  = "serviceAccount:${local.sa_newrelic_gcp_logging}"
}

resource "google_project_iam_member" "newrelic_service_usage_consumer" {
	project = var.project_id
	role    = "roles/serviceusage.serviceUsageConsumer"
	member  = "serviceAccount:${local.sa_newrelic_gcp_logging}"
}
