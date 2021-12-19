# docker-brasfoot-novnc

### RUN

Prepare AWS ubuntu OS
```sh
sudo apt update -y
sudo apt  install docker.io
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
```


Build docker image
```sh
git clone https://github.com/FernandoBontorin/docker-brasfoot-novnc.git
cd docker-brasfoot-novnc
docker build --tag fernandobontorin/docker-brasfoot-novnc:latest .
```

Create sav dir
```sh
cd
mkdir sav
```

Run docker
```sh
docker run -d -p 80:80 -v $PWD/sav:/root/bf2021lx/sav fernandobontorin/docker-brasfoot-novnc
```
Open browser in page

http://127.0.0.1:8080/#/