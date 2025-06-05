# Use official Nginx image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Clear default content
RUN rm -rf ./*

# Copy static site files to Nginx HTML folder
COPY . .

# Expose port
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
