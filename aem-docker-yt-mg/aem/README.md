# Whats Here?
This directory defines a base AEM Docker image which we'll call 'aem' in subsequent Author and Publish Dockerfiles. [Example usage](../author/Dockerfile)

We'll use Ubuntu as our OS base, install Java 8 on it, and then install the AEM quickstart and license.properties files on the Ubuntu OS in the container.

NOTE: Put an AEM quickstart.jar and a license.properties file in this folder.