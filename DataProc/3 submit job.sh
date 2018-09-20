
BUCKET_NAME=$DEVSHELL_PROJECT_ID


gcloud dataproc jobs submit pyspark --cluster hadoop-cluster --region us-central1 gs://$BUCKET_NAME/unstructured/lab2.py