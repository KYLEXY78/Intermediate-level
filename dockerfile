# Use the official Nginx image
FROM nginx:alpine

# Copy all contents of the current folder to Nginx's HTML directory
COPY ./ /usr/share/nginx/html

# Expose port 80 for the Nginx server
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
