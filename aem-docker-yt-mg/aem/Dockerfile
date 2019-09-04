# Start from an ubuntu image
FROM ubuntu

# Create default/working directory
WORKDIR /opt/aem

# Get Java 8
RUN apt-get update && \
    apt-get install -y curl && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:openjdk-r/ppa && \
    apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /var/cache/oracle-jdk8-installer

# Copy license and jar file into the image
ADD license.properties ./
ADD cq-quickstart.jar cq-quickstart.jar

# Unpack the jar for future use on other images
RUN java -jar cq-quickstart.jar -unpack