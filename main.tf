# provides: the vertex endpoint resource name and the runtime service account
resource "google_vertex_ai_endpoint" "scorer" {
  name         = "projects/847561/locations/europe-west2/endpoints/4482913776"          # [T11]
  display_name = "credit-risk-scorer"
  description  = "Serves the credit risk XGBoost model and sends each decision to gemini-1.5-pro for a plain-language explanation"
}
resource "google_service_account" "runtime" {
  email    = "scorer-runtime@acme-ml.iam.gserviceaccount.com"           # [T12]
}
