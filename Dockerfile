# Use the official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configurations
RUN rm -rf /usr/share/nginx/html/*

# Copy the static HTML files from your local directory to the container's Nginx HTML folder
COPY . /usr/share/nginx/html

# Copy the custom Nginx configuration
# COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Command to start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
