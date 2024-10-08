


# Mail from AE

Hey  
  
The skim code for Run3 is ready, but it works only for 2023 datasets.  
For 2022, I am getting a weird error, but I have already pinged  
Chuyuan; hopefully, he can help.  
  
In any case, you can start with 2023 datasets. Here are some instructions:  
- Pull the latest code from master.  
- Change the config['base_path'] folder in python/skimmer/metadata/HH4b.yml.  
- Use tmux or screen before submitting the jobs. Running skims will  
take a while.  
- If you want to monitor the jobs using the dashboard, you should  
forward the 10200 port when you do ssh, like: ssh -XY -L  
10200:localhost:10200 @[cmslpc-el9.fnal.gov](http://cmslpc-el9.fnal.gov/)  
- After you open a tmux window, run the container  
- Go to python/ and then run:  
  
python runner.py -s -p skimmer/processor/skimmer_4b.py -c  
skimmer/metadata/HH4b.yml -y 2023_preBPix  -d data -e A B C D E F -op  
skimmer/metadata/ -o picoaod_datasets_data_2023_preBPix.yml -m  
metadata/datasets_HH4b_Run3.yml --condor  
  
python runner.py -s -p skimmer/processor/skimmer_4b.py -c  
skimmer/metadata/HH4b.yml -y 2023_BPix  -d data -e D E -op  
skimmer/metadata/ -o picoaod_datasets_data_2023_BPix.yml -m  
metadata/datasets_HH4b_Run3.yml --condor  
  
Now, in my experience, this will not work, but you can give it a try.  
It can work if you submit one job at a time for different eras (-e  
option). If you do this, don't forget to change the name of the output  
in picoaod_datasets_data_XXXXX.yml  
  
If you want to monitor the jobs in the dashboard while you are  
connected through ssh, you can open a browser and open  
[http://localhost:10200](http://localhost:10200/)  
  
If you have problems with files not getting located, you can play with  
the runner['rucio_regex_sites"] or runner['allowlist_sites"] in  
python/skimmer/metadata/HH4b.yml  
  
Let me know if you have any questions  
cheers,


## Follow-ups


## Links: 



202410081033
