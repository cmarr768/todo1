sudo docker build -t todo1-ui .
sudo docker run --name todo1-ui -p 49000:80 -d todo1-ui