FROM bitnami/spark:3.2.3-debian-11-r18

USER 1001

# Delete
RUN rm /opt/bitnami/spark/jars/htrace-core4-4.1.0-incubating.jar
RUN rm /opt/bitnami/spark/jars/mesos-1.4.0-shaded-protobuf.jar

# Delete to replace with a newer version
RUN rm /opt/bitnami/spark/jars/hadoop-aws-3.3.1.jar
RUN rm /opt/bitnami/spark/jars/hadoop-client-api-3.3.1.jar
RUN rm /opt/bitnami/spark/jars/hadoop-client-runtime-3.3.1.jar
RUN rm /opt/bitnami/spark/jars/hadoop-yarn-server-web-proxy-3.3.1.jar
RUN rm /opt/bitnami/spark/jars/aws-java-sdk-bundle-1.11.901.jar
RUN rm /opt/bitnami/spark/jars/ivy-2.5.0.jar

# Replace deleted
COPY hadoop-aws-3.3.4.jar /opt/bitnami/spark/jars/
COPY hadoop-client-api-3.3.4.jar /opt/bitnami/spark/jars/
COPY hadoop-client-runtime-3.3.4.jar /opt/bitnami/spark/jars/
COPY hadoop-yarn-server-web-proxy-3.3.4.jar /opt/bitnami/spark/jars/
COPY aws-java-sdk-bundle-1.12.387.jar /opt/bitnami/spark/jars/
COPY ivy-2.5.1.jar /opt/bitnami/spark/jars/
