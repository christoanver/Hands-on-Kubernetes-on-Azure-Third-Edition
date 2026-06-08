FROM christo/whalesay:main

# Install dependencies and clean up cache
RUN apt-get -y -qq update && \
    apt-get install -qq -y fortunes lolcat && \
    rm -rf /var/lib/apt/lists/*

# 1. Copy the script from your local machine into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# 2. Give the container permission to execute the script
RUN chmod +x /usr/local/bin/entrypoint.sh

# 3. Set the script as the entrypoint using Exec form
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
