prerequisites:
[httpie](https://httpie.io/)

_it doesn't work with curl for some reason, you can also do it manually (4 requests with keys to 6 nodes, which is 4*6=24)_

# CD to docker directory
```bash
cd ./docker
```

# Run nodes
```bash
docker-compose -f ./docker-compose-6.yml up -d
``` 

# Upload keys
```bash
./upload-keys.sh
```