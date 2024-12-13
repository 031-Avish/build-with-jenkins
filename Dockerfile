# Dockerfile

# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the local index.html to the Nginx container's HTML directory
COPY index.html /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx in the foreground (required for Docker containers)
CMD ["nginx", "-g", "daemon off;"]

