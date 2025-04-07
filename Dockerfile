FROM nginxinc/nginx-unprivileged

# Copy the entire src directory, including assets, to the Nginx HTML directory
COPY src/ /usr/share/nginx/html/

# Expose port 8080 (default for nginx-unprivileged)
EXPOSE 8080

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
