# Use aem as the base image
FROM aem

# Expose the default port for the pub instance
EXPOSE 4503

# Define entry cmd
ENTRYPOINT [ "java", "-Xmx1024M", "-jar", "cq-quickstart.jar", "-Dsling.run.modes=publish", "-p", "4503" ]