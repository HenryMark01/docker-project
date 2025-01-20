FROM ubuntu

# Install nginx
RUN apt-get update && apt-get install -y nginx

# Set up a simple HTML page
RUN echo "<html><body><h1>Welcome BOIS</h1></body></html>" > /var/www/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
