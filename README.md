# Netem Docker Test

If you are using Windows, it is important to disable the option "Use the WSL 2 based engine" in Docker Desktop settings.

Step by step to run the example:
```sh
# Build the image
docker compose build

# Run the containers
docker compose up -d

# Check the logs of svc1
docker logs -f svc1

# Adding 100ms delay to eth0
docker exec -it svc1 tc qdisc add dev eth0 root netem delay 100ms

# Remove existing delay
docker exec -it svc1 tc qdisc del dev eth0 root
```
