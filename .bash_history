export PROJECT_ID="devops-iam-demo-$(date +%s)"
gcloud projects create $PROJECT_ID
gcloud config set project $PROJECT_ID
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="user:sandhya.vasikarla36@gmail.com"   --role="roles/viewer"
clear
docker run -p 8080:80 nginx:latest
clear
docker run  -d -p 8080:80 nginx:latest  
docker ps 
docker cp index.html [container-id]:/usr/share/nginx/html/
https://8080-cs-d71b0896-6234-4b15-b08b-c4f516825673.cs-asia-southeast1-fork.cloudshell.dev/
docker cp indeex.html c8f542006c7b:/usr/share/nginx/html
echo "<h1>Hello from GKE 🚀</h1>" > index.html
docker build -t myapp:v1 .
ls
nano Dockerfile
ls
docker build -t myapp:v1 .
docker tag myapp:v1 gcr.io/$(gcloud config get-value project)/myapp:v1
docker push gcr.io/$(gcloud config get-value project)/myapp:v1
gcloud container clusters create my-cluster --num-nodes=1
gcloud container clusters get-credentials my-cluster
gcloud auth configure-docker
docker push gcr.io/$(gcloud config get-value project)/myapp:v1
gcloud config set compute/zone us-central1-a
y
gcloud services enable compute.googleapis.com
gcloud config set compute/zone us-central1-a
gcloud container clusters create my-cluster --num-nodes=1
gcloud container clusters get-credentials my-cluster
ls
git init
git add .
git rm --cached -r .gemini
