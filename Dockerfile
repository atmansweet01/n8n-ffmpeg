FROM n8nio/n8n:latest

USER root

# Install ffmpeg, python3, pip and yt-dlp on Alpine
RUN apk add --no-cache ffmpeg python3 py3-pip curl && \
    pip3 install --no-cache-dir yt-dlp

USER node

EXPOSE 5678

CMD ["n8n", "start"]
