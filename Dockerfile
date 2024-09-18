FROM default-route-openshift-image-registry.apps.mp-dev.bluvalt.com/javeed/nginx:javeed_latest1

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080


