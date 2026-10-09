# provides: the vertex endpoint resource name and the runtime service account
resource "google_vertex_ai_endpoint" "scorer" {
  name     = "projects/847561/locations/europe-west2/endpoints/4482913776"          # [T11]
}
resource "google_service_account" "runtime" {
  email    = "scorer-runtime@acme-ml.iam.gserviceaccount.com"           # [T12]
}
