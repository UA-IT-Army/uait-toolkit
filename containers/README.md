# Swiss-army-knife

Collected here are most tools that need to be utilized in cyber-warfare against agressor
# Usage

1. **start VPN**

2. get container:

    ```shell
    docker pull droopy4096/uait-tools:latest
    docker run --network=host -it --rm droopy4096/uait-tools:latest
    ```

    Note: we're running docker with `host` mode as there are sizeable [performance gains](https://jtway.co/docker-network-performance-b95bce32b4b9)

3. start the attack using one of the:

   * [DarkFly](https://github.com/Ranginang67/DarkFly-Tool)

     ```shell
     DarkFly
     ```
   * [DDos-Attack-OVH-](https://github.com/HardyTomas/DDos-Attack-OVH-)

     ```shell
     cd /opt/DDos-Attack-OVH-
     python3 443port.py ...
     ```

   * [Limer-Boy-Impulse](https://github.com/LimerBoy/Impulse)

     ```shell
     cd /opt/LimerBoy-Impulse
     python impulse.py ...
     ```

   * [D-Dos_Attack_Script](https://github.com/Hrishikesh7665/D-Dos_Attack_Script)

     ```shell
     cd /opt/D-Dos_Attack_Script
     python D_DosAttack.py
     ```

   * [DDoS-Ripper](https://github.com/palahsu/DDoS-Ripper)

     ```shell
     cd /opt/DDoS-Ripper
     python3 DRipper.py
     ```

    * [disbalancer](https://disbalancer.medium.com/disbalancer-launches-liberator-a6c145cb88e4)

      ```shell
      cd /opt/disbalancer
      ./launcher-disbalancer-go-client-linux-amd64
      ```

    * [db1000n](https://github.com/Arriven/db1000n)

      ```shell
      cd /usr/src/app
      ./main
      ```