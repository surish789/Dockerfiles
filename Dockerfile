FROM ubuntu:latest

# Update the package list and install required packages
RUN apt-get update -y && apt-get install -y bash

# Add the script to the image
ADD log.sh /

# Make the script executable
RUN chmod +x /log.sh

# Run the script
RUN /bin/bash /log.sh

# Set environment variable
ENV name="suri surish"

# Command to keep the container running
CMD ["nginx", "-g", "daemon off;"]

