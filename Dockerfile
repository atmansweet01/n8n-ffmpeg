# Use n8n official image as base
FROM n8nio/n8n:latest

# Install ffmpeg and yt-dlp
USER root
RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip && \
    pip3 install --no-cache-dir -U yt-dlp && \
    rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Start n8n
CMD ["n8n"]
