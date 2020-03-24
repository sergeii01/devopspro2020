# Start from the Ubuntu image
FROM ubuntu:18.04
# Update the package list
RUN apt update
# Install MC
#RUN apt install -y mc
# Set MC to run by default
#CMD mc
# Set an environment variable
#ENV MC_SKIN=darkfar
RUN apt install -y nginx
#COPY index.html /var/www/html/index.html
COPY default /etc/nginx/sites-available/default
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
