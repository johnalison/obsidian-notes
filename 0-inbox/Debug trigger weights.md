Need to run in an el7 container:
**cmssw-el7 -p --bind `readlink $HOME` --bind `readlink -f ${HOME}/nobackup/` --bind /uscms_data --bind /cvmfs -- /bin/bash -l**

Seems to work

## Follow-ups


## Links: 



202409171150
