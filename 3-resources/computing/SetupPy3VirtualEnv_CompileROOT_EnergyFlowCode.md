[[computing]]

> python3 -m venv OT-metric-virtualenv

> source OT-metric-virtualenv/bin/activate

> python -m pip install numpy scipy matplotlib ipython jupyter pandas sympy nose

> python -m pip  install Cython

> python -m pip  install POT

> wget https://root.cern.ch/download/root_v6.16.00.source.tar.gz

> tar -zxf root_v6.16.00.source.tar.gz

> mkdir root-6.16.00_builddir

> cd root-6.16.00_builddir

> cmake ../root-6.16.00

> cmake --build  .

> source bin/thisroot.sh

> python -m pip install energyflow		  


#  LAter...
> python -m pip install seaborn

> python -m pip install root_numpy

> python -m pip install torch

> python -m pip install sklearn

> python -m pip install tables



# Round 2
```python
  python3 -m venv OT-metric-virtualenv-v2
  source OT-metric-virtualenv-v2/bin/activate
  python -m pip install numpy scipy matplotlib ipython jupyter pandas sympy nose Cython POT
  wget https://root.cern.ch/download/root_v6.22.02.source.tar.gz
  tar -zxf root_v6.22.02.source.tar.gz 
  mkdir root-6.22.02_builddir
  cd root-6.22.02_builddir/
  cmake ../root-6.22.02
  cmake --build  .
  source bin/thisroot.sh 
  python -m pip install energyflow
  python -m pip install seaborn root_numpy torch sklearn tables
```

# Round 3
> python3 -m ensurepip
> python3 -m pip install jupyter
> Reinatalled root
> python3 -m pip install numpy

# Round 4

>  python3 -m venv OT-metric-virtualenv-v3
> source OT-metric-virtualenv-v3/bin/activate
> python -m pip install numpy scipy matplotlib ipython jupyter pandas sympy nose Cython POT
> setupROOT
> python -m pip install energyflow

> Edit ~/OT-metric-virtualenv-v3/lib/python3.9/site-packages/energyflow/emd.py  [Made emd_c(pTs0/rescale, pTs1/rescale, thetas, n_iter_max) -> emd_c(pTs0/rescale, pTs1/rescale, thetas, n_iter_max, 1)