# To compile CMS papers
https://twiki.cern.ch/twiki/bin/view/CMS/Internal/TdrProcessing

```bash
docker login gitlab-registry.cern.ch
docker pull gitlab-registry.cern.ch/tdr/containers/tdrlatex
```

then 

```bash
docker run --rm -v /Users/johnda/papers/HIG-22-011:/workspace gitlab-registry.cern.ch/tdr/containers/tdrlatex compile.sh
```

with
```
```bash
 > cat compile.sh 
###################################
#### To clone package:
#### git clone --recursive ssh://git@gitlab.cern.ch:7999/tdr/papers/HIG-22-011.git
eval `utils/tdr runtime -sh`
tdr --style=paper --temp_dir=tmp b HIG-22-011
```



## Links: 



202407231911
