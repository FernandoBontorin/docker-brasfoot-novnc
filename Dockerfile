FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt update -y && apt install openjdk-8-jre unzip -yqq

ADD bf2021lx.zip bf2021lx.zip
ADD run-brasfoot.sh /root/Desktop/run-brasfoot.sh

RUN chmod +x /root/Desktop/run-brasfoot.sh
RUN unzip bf2021lx
RUN chmod +x bf2021lx/bf2021.jar
RUN rm bf2021lx.zip

ENTRYPOINT ["/startup.sh"]