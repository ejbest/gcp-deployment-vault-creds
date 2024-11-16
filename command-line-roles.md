
# service account terraform-gcp
# or
# gcloud auth application-default login
# gcloud auth list 

# To get the role needed the GUI sucked!
# Used command line 
#  gcloud projects add-iam-policy-binding gcp-terraform-udemy-course \
#  --member="serviceAccount:terraform-gcp@gcp-terraform-udemy-course.iam.gserviceaccount.com" \
#  --role="roles/storage.admin"
#
# gcloud projects add-iam-policy-binding gcp-terraform-udemy-course \
#   --member="serviceAccount:terraform-gcp@gcp-terraform-udemy-course.iam.gserviceaccount.com" \
#   --role="projects/gcp-terraform-udemy-course/roles/ej-all"

# gcloud projects add-iam-policy-binding <PROJECT_ID> \
#  --member="serviceAccount:<SERVICE_ACCOUNT_EMAIL>" \
#  --role="projects/<PROJECT_ID>/roles/<CUSTOM_ROLE_NAME>"


# gcloud projects add-iam-policy-binding gcp-terraform-udemy-course \
#   --member="serviceAccount:terraform-gcp@gcp-terraform-udemy-course.iam.gserviceaccount.com" \
#   --role="projects/gcp-terraform-udemy-course/roles/ej-all"

# gcloud projects get-iam-policy gcp-terraform-udemy-course \
#   --flatten="bindings[].members" \
#   --filter="bindings.members:serviceAccount:terraform-gcp@gcp-terraform-udemy-course.iam.gserviceaccount.com" \
#   --format="table(bindings.role)"