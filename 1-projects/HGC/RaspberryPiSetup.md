[[computing]]
# Format microSD card
  -> Applications / SD Card formatter 

  Select card 
  Check that card info is as expected
  Select Quick format
  Give volume name eg: NOOBS


# Download NOOBS:

https://www.raspberrypi.org/downloads/noobs/


# open ~/Downloads/NOOBS_v3_3_1.zip 

# cp -r  NOOBS_v3_3_1/* /Volumes/NOOBS/


--> DONEZO


# To get root to complie

sudo apt-get install libxpm-dev

sudo apt-get install -y libxft-dev

sudo apt-get install libxext-dev

cmake ../root-6.20.04  -DCMAKE_SHARED_LINKER_FLAGS=-latomic