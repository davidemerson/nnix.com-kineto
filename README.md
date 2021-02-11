# nnix.com kineto
This is a Docker container build definition for the Kineto gemini-to-web proxy (https://git.sr.ht/~sircmpwn/kineto).

## To redeploy the website:
```
docker pull nnix/kineto
docker container run --rm --detach --name nnix.com-kineto --publish 8080:8080 nnix/kineto:latest
```

## Things coming up:
- git filesystem for the static content, to get the index and other pages into a repo site.