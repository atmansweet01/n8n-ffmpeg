# Use n8n official image as base
FROM n8nio/n8n:latest

# Install ffmpeg, python3, pip, and yt-dlp
USER root
RUN apk add --no-cache ffmpeg python3 py3-pip && \
    pip3 install --no-cache-dir -U yt-dlp

# Switch back to n8n user
USER node

# Start n8n
CMD ["n8n"]
