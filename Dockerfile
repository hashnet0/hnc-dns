FROM hnc-base:latest
LABEL name="hnc-dns"
LABEL description="HashNet Container for a bind DNS server"
LABEL maintainer="hashsploit <hashsploit@protonmail.com>"

# Install dependencies
RUN echo "Updating system ..." \
	&& apt-get update >/dev/null 2>&1 \
	&& echo "Installing dependencies ..." \
	&& apt-get install -y \
	bind9 \
	dnsutils \
	>/dev/null 2>&1

# Copy file system
COPY fs/ /

# Make entrypoint executable
RUN chmod +x /srv/start.sh

# Expose service
EXPOSE 53/udp 53/tcp

# Set image starting point
CMD ["bash", "/srv/start.sh"]
