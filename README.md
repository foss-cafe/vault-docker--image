# Vault Docker Image

## Build Docker image
```
$ git clone git@github.com:foss-cafe/vault-docker--image.git vault
$ cd vault 
$ docker build -t vault .
```
### Usage
```
$ docker run -p 80:80 --env-file=$PWD/.env vault
```
