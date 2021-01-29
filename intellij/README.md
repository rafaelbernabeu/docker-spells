# IntellJ IDEA

Run:
```
docker run -d --name intellij \
    -e DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v ~/.m2:/home/developer/.m2 \
    --device=/dev/snd:/dev/snd \
    rbbernabeu/intellij
```
