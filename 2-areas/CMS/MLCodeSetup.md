In the auton cluster, add the ff. to your ~/.bashrc

if [ -e /opt/miniconda3/etc/profile.d/conda.sh ]; then
    . /opt/miniconda3/etc/profile.d/conda.sh
 

Elsewhere, download and install miniconda (https://conda.io/docs/user-guide/install/index.html).
Create a new conda environment using the provided template

conda env create --file pytorch.yml

To activate the environment,

conda activate pytorch


# Tensorflow CMU

Source: https://docs.anaconda.com/anaconda/user-guide/tasks/tensorflow/

> conda create -n tf tensorflow
> conda activate tf


pip install --upgrade tensorflow-probability
pip install --upgrade tensorflow
