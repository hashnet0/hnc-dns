# HashNet Container for a bind DNS server

This Docker image generates a DNS server.

### 1. Configure image

Configure the container settings in the `settings.sh` file.
You should also add your config files in the `fs/etc/bind/` directory.

### 2. Build the image

Run the `build.sh` file to generate the Docker image `hnc-dns`.

### 2. Deploy the container

To spawn a temporary container run `test.sh`.

To spawn a dedicated container run `run.sh`.

