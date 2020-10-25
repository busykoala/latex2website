# busykoala.ch

## Installation & Usage...

Ongoing work...

```
docker build -t latex2website
docker run -e SOURCE=./source STYLES=./styles latex2website:latest

# debug
CMD tail -f /dev/null
docker exec -it <container-id> sh
```
