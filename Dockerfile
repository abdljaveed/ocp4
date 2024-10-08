# Use the official Nginx base image
FROM default-route-openshift-image-registry.apps.mp-dev.bluvalt.com/javeed/nginx:javeed_latest1
 
# Create the directory for S2I scripts
RUN mkdir -p /usr/libexec/s2i
 
# Copy S2I scripts into the image
COPY assemble /usr/libexec/s2i/assemble
COPY run /usr/libexec/s2i/run
 
# Make sure the scripts are executable
RUN chmod +x /usr/libexec/s2i/*
 
# Expose the default Nginx port
EXPOSE 80
 
# Set the default CMD to the S2I run script
CMD ["/usr/libexec/s2i/run"]
 