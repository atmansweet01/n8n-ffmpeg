FROM n8nio/n8n:latest

USER root
RUN apk add --no-cache ffmpeg python3 py3-pip yt-dlp

USER node
CMD ["n8n"]
