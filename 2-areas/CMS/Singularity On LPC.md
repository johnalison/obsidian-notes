

ON LPC 

```
> cd nobackup/
> singularity build --sandbox example-ot docker://johnalison/example-ot:firsttry
> singularity shell -B `readlink $HOME` -B `readlink -f ${HOME}/nobackup/` -B /cvmfs example-ot/
```