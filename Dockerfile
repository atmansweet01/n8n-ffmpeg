FROM n8nio/n8n:latest-debian

USER root

# Install ffmpeg, python3, pip and yt-dlp
RUN apt-get update && \
    apt-get install -y ffmpeg python3 python3-pip curl && \
    pip3 install --no-cache-dir yt-dlp && \
    rm -rf /var/lib/apt/lists/*

USER node

EXPOSE 5678
CMD ["n8n", "start"]
