

set -ex
cd $(dirname $0)

# Build docker images & push them to container registry
docker build -t greeter_client -f ../greeter-client/Dockerfile .
docker build -t greeter_server -f ../greeter-server/Dockerfile .
# docker build -t greeter_server_balancer ../grpclb-server
docker build -t greeter_envoy_static ../greeter-envoy-static

