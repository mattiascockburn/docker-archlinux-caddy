VER=${1-0.10.11}

docker build --build-arg "VERSION=${VER}" -t "caddyarch:$VER" .
docker build --build-arg "VERSION=${VER}" -f Dockerfile.reposerver -t "reposerver:latest" .

