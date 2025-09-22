# Start from official n8n image
FROM n8nio/n8n:latest

# Switch to root to install extra packages
USER root

# Install ffmpeg + python3 + pip, then yt-dlp
RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip curl && \
    pip3 install --no-cache-dir yt-dlp && \
    rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Expose n8n port
EXPOSE 5678

# Default start command
CMD ["n8n", "start"]
