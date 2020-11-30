# busykoala.ch

## How it is used

The `index.html` is used as the main project file.

Each latex blogpost in `blogposts` is rendered and wrapped in the middle of
`parts/head.part.html` and `parts/bottom.part.html`. The blogposts are mounted
into `out` directory.

## Render templates

Render all blogposts to `./out` using:

```
docker build -t latex2website .
docker run -v `pwd`/out:/out latex2website:latest
```
