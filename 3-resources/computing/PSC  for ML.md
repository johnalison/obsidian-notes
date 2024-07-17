[[computing]]

Testing on PSC:
module load anaconda3

Can then create a new conda enviroment using the provided template as above:
conda env create --file pytorch.yml

To activate the environment,

conda activate pytorch

(Note: I had to add the following to my .bashrc)

. /opt/packages/anaconda/anaconda3-5.2.0/etc/profile.d/conda.sh

To transfer data need to use the data.bridges path

> scp test_jets_BJetsAll.hdf5.tgz alison@data.bridges.psc.edu:/pylon5/ph5fpep/alison/BTaggingML/QCD_Glu_Quark/IMG

To run an interactive node (eg: used to convert to Parquet)
> interact -p GPU-shared --gres=gpu:k80:1 -N 1 -t 30:00
> interact -p GPU-small --gres=gpu:p100:1 -N 1 -t 30:00
> interact -p GPU --gres=gpu:k80:4 -N 1 -t 30:00
> interact -p GPU-AI --gres=gpu:volta16:1  (Running out of memory)

For testing training: 
The GPU-shared pool looks like it does not have enough memory per job (7GB/node) to deal with what we need.  So we have to use either GPU-SMALL or the regular GPU nodes.

> time py jet_trainer_bjets.py -c 0 -e 1 

Wall time comparisons:  4 detector layers (Muons/Tracks/ECAL/HCAL) / 1-epoch / 3 blocks
K80:       “Train time:776.08s in 11595 steps”  Wall Time: 15m39.123s
T1080:  “Train time:729.10s in 11595 steps”  Wall Time: 13m37.764s
P100  :  “Train time:674.21s in 11595 steps”  Wall Time: 14m14.386s
v100 :    “Train time:520.92s in 11595 steps”  Wall Time: 9m44.620s



Running on with singularity 
> interact -p GPU-AI --gres=gpu:volta16:1
> cd /pylon5/ph5fpep/alison/BTaggingML/QCD_Glu_Quark
> module load singularity/3.0.0
> singularity shell --nv /pylon5/containers/ngc/pytorch/18.10-py3.simg
> . /opt/conda/etc/profile.d/conda.sh
conda activate pytorch
python jet_trainer_bjets.py -c 0 -e 1 

On GPU AI with no singularity shell:
interact -p GPU-AI --gres=gpu:volta16:4
module load AI/anaconda3-5.1.0_gpu
cd Pylon/Allison/
source activate pytorch
time python jet_trainer_bjets.py -c 0 -e 1

