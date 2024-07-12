
# There are instructions about getting started.  
Once you have a PSC user name Ill have to send a mail to add you to the project.

> to logon Every time  
alias vera='ssh [](mailto:alison@vera.psc.edu "‌")[alison@vera.psc.edu](mailto:alison@vera.psc.edu)'

> Setup sw (once)

`git clone https://github.com/patrickbryant/ZZ4b.git`

> Example job script  
cat /hildafs/home/alison/hh4b/main_job.sh

 Need to change seeds

 checks running jobs  
squeue

 Submit  
> sbatch main_job.sh


## ssh key
[https://grants.psc.edu/cgi-bin/ssh/listKeys.pl](https://grants.psc.edu/cgi-bin/ssh/listKeys.pl)


## scp

`scp .aliases  alison@vera.psc.edu: scp .bashrc alison@data.vera.psc.edu:TestTransfer (Password`

## Project numbers

`> id -gn phy210037p`

## Sign on

 `ssh alison@vera.psc.edu`

### Test interactively 
‘''srun -N 1 -p TWIG --gpus=a100-40:1 --pty bash -i’''

### Slides to intro to vera    
[https://vera-doc.psc.edu/img/vera.pdf](https://vera-doc.psc.edu/img/vera.pdf)


## Links: 

[[computing]]


202407112053
