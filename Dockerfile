# Use a lightweight web server
FROM nginx:alpine

# Copy all frontend files into NGINX's root folder
COPY . /usr/share/nginx/html

