docker run -d --name intellij ^
    -e LIBGL_ALWAYS_INDIRECT=1 ^
    -e DISPLAY=172.17.87.116:0 ^
    -v C:\Users\rbber\docker\intellij:/home/developer ^
    -v C:\Users\rbber\.m2:/home/developer/.m2 ^
    --network docker_net ^
    rbbernabeu/intellij