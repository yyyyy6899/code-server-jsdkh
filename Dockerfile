FROM lscr.io/linuxserver/code-server:latest

# Set environment variables
ENV PUID=1000 \
    PGID=1000 \
    TZ=Etc/UTC \
    PASSWORD=password \
    SUDO_PASSWORD=password \
    DEFAULT_WORKSPACE=/config/workspace \
    PWA_APPNAME=code-server

# Expose port
EXPOSE 8443

# Volume for persistent data
VOLUME ["/config"]
