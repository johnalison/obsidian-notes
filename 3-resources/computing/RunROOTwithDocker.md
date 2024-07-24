https://hub.docker.com/r/rootproject/root


Can get an interactive session with

`docker run -it rootproject/root:latest bash`

Does not do the x11 forwarding


Tried with the instructions above... but cant seem to get the browser to show up..

`docker run --rm -it -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=$ip:0 rootproject/root root`

seeing errors about batch mode

## Follow-ups


## Links: 
[[Docker]]


202407231930
