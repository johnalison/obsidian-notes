Following instructions here:
[Give Your Raspberry Pi a Static IP Address](https://blog.richardkeller.net/how-to-give-your-raspberry-pi-a-static-ip-address-so-that-you-can-access-it-from-anywhere-2/)


# First connect pi to network and find its dynamically assigned IP address. 

I did it from the eero app, can also get a list of all the devices connected to the local network by running the following command on the MAC terminal

```bash
arp -a
```

once you have the current ip connect to the pi eg:

```bash
ssh pi@192.168.0.7
```

# Edit /etc/dhcpcd.conf

Uncomment the following lines.  I then set the static ip_address (in the 2nd line below) to be the one that was dynamically assigned.
```bash
# Example static IP configuration:                                          
interface eth0
static ip_address=192.168.4.38/24
static ip6_address=fd51:42f8:caae:d92e::ff/64
static routers=192.168.0.1
static domain_name_servers=192.168.0.1 8.8.8.8 fd51:42f8:caae:d92e::1

```

Restart the raspberry pi

```bash
sudo reboot
```
# Setup up port fowarding

I was able to do this on the eero app.

Set the port range to: 222-2222
Use both TCP & UDP

# Edit /etc/ssh/sshd_config

Adding the line 

```bash
Port 2222
```
save the file and reload with

```bash
service ssh reload
```

# Get your public IP

https://www.whatsmyip.org/
mine is: 24.3.217.26
## Links: 

[[RaspberryPi720]]


202407201059
