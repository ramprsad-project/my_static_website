# Use a lightweight web server as the base image
FROM nginx:alpine

# Copy the content of the "my_static_website" directory to the web server's default directory
COPY my_static_website /usr/share/nginx/html

# Expose the default port used by the web server (80)
EXPOSE 80

# Command to start the web server when a container based on this image is run
CMD ["nginx", "-g", "daemon off;"]
