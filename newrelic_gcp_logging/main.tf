resource "google_project_iam_member" "newrelic_viewer" {
	project = var.project_id
	role    = "roles/viewer"
	member  = "serviceAccount:wnr00v58or2@newrelic-gcp.iam.gserviceaccount.com"
}

resource "google_project_iam_member" "newrelic_service_usage_consumer" {
	project = var.project_id
	role    = "roles/serviceusage.serviceUsageConsumer"
	member  = "serviceAccount:wnr00v58or2@newrelic-gcp.iam.gserviceaccount.com"
}
