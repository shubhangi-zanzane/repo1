# Use the official httpd image as a base
FROM httpd:latest

# Expose port 80 to the outside world
EXPOSE 80

# Default command to run when the container starts
CMD ["httpd-foreground"]
