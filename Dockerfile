FROM dorowu/ubuntu-desktop-lxde-vnc

RUN apt update -y && apt install openjdk-8-jre unzip -yqq

ADD bf2020lx.zip bf2020lx.zip
ADD run-brasfoot.sh /root/Desktop/run-brasfoot.sh

RUN chmod +x /root/Desktop/run-brasfoot.sh
RUN unzip bf2020lx
RUN chmod +x bf2020lx/bf2020.jar
RUN rm bf2020lx.zip

ENTRYPOINT ["/startup.sh"]