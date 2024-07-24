
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
cmake -DCMAKE_INSTALL_PREFIX=../root_install ../root_src
cmake --build . -- install -j4
```




## Follow-ups

More details here:
https://root.cern/install/build_from_source/
## Links: 
[[ROOT]]



202407241115
