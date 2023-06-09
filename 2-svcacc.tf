# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account
# resource "google_service_account" "svc-acc" {
#   account_id = "${var.proj_name}-svc-acc"
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_iam
# resource "google_project_iam_member" "svc-acc" {
#   project = var.project
#   role    = "roles/storage.admin"
#   member  = "serviceAccount:${google_service_account.svc-acc.email}"
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account_iam
# resource "google_service_account_iam_member" "svc-acc" {
#   service_account_id = google_service_account.svc-acc.id
#   role               = "roles/iam.workloadIdentityUser"
#   member             = "serviceAccount:${var.project}.svc.id.goog[${var.k8s_namespace}/${google_service_account.svc-acc.account_id}]"
# }