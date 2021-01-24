# docker-vue-cli
Docker image with node + vue-cli.

## Building image
```
docker build -t vue-cli .
```

## Use image
Create new Vue project:
```
docker run --rm -it -v $(pwd):/var/www vue-cli vue create hello-world
```

Serve Vue project:
```
docker run --rm -it -p 8080:8080 -v $(pwd):/var/www vue-cli yarn serve
OR
docker run --rm -it -p 8080:8080 -v $(pwd):/var/www vue-cli npm serve
```
Then access it from http://localhost:8080

Build Vue project:
```
docker run --rm -it -v $(pwd):/var/www vue-cli yarn build
OR
docker run --rm -it -v $(pwd):/var/www vue-cli npm build
```
