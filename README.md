# EKS-practical-challenge
# Flask + PostgreSQL + EKS with Terraform

## Steps
1.create vpc,eks,s3 in terraform using HCL
commands to execute

cd terraform
terraform init
terraform apply -auto-approve

2.update the kube-config
 aws eks update-kubeconfig --region us-east-1 --name my-eks-cluster

3.Docker push
   cd app
   docker build -t <dockerhub-username>/flask-app:latest .
   docker push <dockerhub-username>/flask-app:latest

4.Deploy Kubernetes objects
   kubectl apply -f kubernetes/


5.Test endpoints
Flask Microservice API

This Flask microservice provides endpoints for health checks, database testing, file upload to S3, and file retrieval.

Endpoints
1. Health Check

Endpoint: /up

Method: GET

Description: Checks if the service is running.

Example (curl):

curl http://localhost:8080/up


Response:

{
  "status": "ok"
}

2. Database Test

Endpoint: /dbtest

Method: GET

Description: Creates a test table if it doesn’t exist, inserts a row, and returns all records.

Example (curl):

curl http://localhost:8080/dbtest


Response:

{
  "records": [
    [1, "hello from flask"],
    [2, "hello from flask"]
  ]
}


Each call inserts a new row "hello from flask".

3. File Upload

Endpoint: /upload

Method: POST

Description: Uploads a file to S3 bucket <yourname>-uploads. Returns a confirmation message or a pre-signed URL.

Form-data: Key = file, Value = file to upload

Example (curl):

curl -X POST -F "file=@/home/harsha/file.txt" http://localhost:8080/upload


Response (message):

{
  "message": "file.txt uploaded to S3"
}


Response (pre-signed URL):

{
  "url": "https://<bucket>.s3.amazonaws.com/file.txt?AWSAccessKeyId=...&Expires=..."
}

4. File Download

Endpoint: /file/<name>

Method: GET

Description: Streams the uploaded file from S3.

<name> = filename uploaded via /upload.

Example (curl from Linux VM):

curl -O http://localhost:8080/file/file.txt


Example (browser):

http://localhost:8080/file/file.txt


Downloads the file to your machine.


