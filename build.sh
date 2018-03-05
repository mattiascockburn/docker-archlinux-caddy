VER=${1-0.10.11}

docker build --build-arg "VERSION=${VER}" -t "caddyarch:$VER" .
