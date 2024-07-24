
# Start with a clean python env

python3 -m venv ROOTenv
source ROOTenv/bin/activate



# Build root

https://root.cern/install/#build-from-source



``` bash
git clone --branch latest-stable --depth=1 https://github.com/root-project/root.git root_src
mkdir root_build root_install && cd root_build
```

Need to install cmake `brew install cmake`

``` bash
cat ~/setupROOT.sh
cmake -DCMAKE_INSTALL_PREFIX=../root_install ../root_src
cmake --build . -- install -j4
```

Then

`source ../root_install/bin/thisroot.sh`

Now works!

# Setup script

Run this each time after login

```bash
source python-environments/ROOTenv/bin/activate
source python-environments/ROOTenv/root_install/bin/thisroot.sh
```


## Follow-ups

More details here:
https://root.cern/install/build_from_source/
## Links: 
[[ROOT]]



202407241115
