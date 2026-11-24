
FROM nginx:alpine

# Copy website files into Nginx web directory
COPY app/ /usr/share/nginx/html/

# Allow Nginx to read website files
RUN chmod 755 /usr/share/nginx/html && \
    chmod 644 /usr/share/nginx/html/*

# Expose HTTP port
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]

