# nnix.com kineto
This is a Docker container build definition for the Kineto gemini-to-web proxy (https://git.sr.ht/~sircmpwn/kineto). Note that this publishes the web version on :8080. I use nginx to proxy 443 to this port.

## Status
I no longer run this, since it was just a pain in the neck to manage the bots. Check me out on Gemini instead. It's bot-free!

gemini://nnix.com

## To re/deploy the service:
```
docker pull nnix/kineto
docker container run --rm --detach --name nnix.com-kineto --publish 8080:8080 nnix/kineto:latest
```