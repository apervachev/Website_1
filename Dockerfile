# Use lightweight Nginx base image
FROM nginx:stable-alpine

# Remove the default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy your static HTML content to Nginx's web root
COPY . /usr/share/nginx/html

# Expose port 80 to access the web server
EXPOSE 80

# Nginx will automatically start using the default CMD
