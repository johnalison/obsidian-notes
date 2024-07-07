[[CMS]]
[[Docker]]

# To compile a CMS Note

> cd ~/papers/BTV-22-001/
> docker run -it --rm -v "$PWD":/workspace gitlab-registry.cern.ch/tdr/containers/tdrlatex
> source complile


To remove stopped containers
> docker container prune

To list all containers (running and stoped)
> docker container ls -a 



# Old
docker build -f DockerfileOT -t example-ot:fixPlotting .


docker tag b0c65fb6301d johnalison/example-ot:fixPlotting
docker push johnalison/example-ot


