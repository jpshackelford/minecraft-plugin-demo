# Version 0.0.5
FROM registry-ice.ng.bluemix.net/ibmliberty:latest
MAINTAINER Kyle Brown “brownkyl@us.ibm.com”
RUN mkdir minecraft
RUN cd minecraft
RUN echo "eula=true" > eula.txt
ADD spigot-1.8.3.jar ./spigot-1.8.3.jar
ADD craftbukkit-1.8.3.jar ./craftbukkit-1.8.3.jar
ADD server.properties ./server.properties
RUN mkdir plugins
ADD Tutorial.jar /plugins/Tutorial.jar
CMD ["java -XX:MaxPermSize=128M -Xms512m -Xmx1024m -Djava.net.preferIPv4Stack=true -jar spigot-1.8.3.jar nogui"]
EXPOSE 9085
