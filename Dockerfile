# Use the official Amazon Linux image as a base
FROM amazonlinux:latest

# Maintainer information
LABEL maintainer="CHAITAN"

# Install nginx
RUN yum -y install nginx

# Copy index.html file to the image
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Command to start the nginx container
CMD ["nginx", "-g", "daemon off;"]

