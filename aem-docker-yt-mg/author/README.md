# Whats Here?
This directory defines an AEM Author image.

We simply:
* Build an author image from the base AEM container image defined [here](../aem/Dockerfile)
* Expose a port (4502) so we connect our browser to the running instance.
* Launch the jar file in author run mode using the following commands:

`$ java -Xmx1024M -jar cq-quickstart.jar -Dsling.run.modes=author -p 4502`