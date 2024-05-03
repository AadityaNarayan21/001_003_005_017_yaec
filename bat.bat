# IN root folder

docker build -t uc1 ./uc1
docker build -t uc2 ./uc2
docker build -t uc3 ./uc3

#only this in frontend folder
docker build -t frontend .

#backt to root

docker tag uc1 aaditya21/uc1:latest
docker tag uc2 aaditya21/uc2:latest
docker tag uc3 aaditya21/uc3:latest
docker tag frontend aaditya21/frontend:latest

docker push aaditya21/uc1:latest
docker push aaditya21/uc2:latest
docker push aaditya21/uc3:latest
docker push  aaditya21/frontend:latest

kubectl apply -f kubernetes.yaml