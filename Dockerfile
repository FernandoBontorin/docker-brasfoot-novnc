FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt update -y && apt install openjdk-8-jre unzip -yqq

ADD bf2019lx.zip bf2019lx.zip
ADD run-brasfoot.sh /root/Desktop/run-brasfoot.sh

RUN chmod +x /root/Desktop/run-brasfoot.sh
RUN unzip bf2019lx
RUN chmod +x bf2019lx/bf2019.jar
RUN rm bf2019lx.zip

ENTRYPOINT ["/startup.sh"]