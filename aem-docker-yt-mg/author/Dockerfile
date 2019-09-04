# Use our custom AEM image as base image
FROM aem

# Expose the default port for the author instance
EXPOSE 4502

# Define the entry command so that this container will always start AEM in Author Mode
ENTRYPOINT [ "java", "-Xmx1024M", "-jar", "cq-quickstart.jar", "-Dsling.run.modes=author", "-p", "4502" ]