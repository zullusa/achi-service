# achi-service

1. Open new terminal
```
git clone https://github.com/zullusa/achi-service.git
cd achi-service
python -m venv venv
. activate
python -m pip install --upgrade pip
pip install -r requirements.txt
sudo mkdir -p /var/log/achi
sudo chmod 777 /var/log/achi
touch /var/log/achi/log.log
```
2. Copy `start.ext.sh` to `achi-blockchain` directory
3. Copy `create_plot.ext.sh` to `achi-blockchain/venv/bin/` directory
4. Change `achi-blockchain/venv/bin/create_plot.ext.sh`:
* `<PATH_TO>` - path to achi-service directory
* `<ssd2>` - your disk for tmp files
* `<ram>` - your tmp2 dir, if you use -2 parameter for achi_plot
* change `achi_plot` parameters, according to your system and preferences

5. Copy `achi.service` to `/etc/systemd/system` directory

6. Change in `/etc/systemd/system/achi.service` <PATH_TO>
```
sudo vim /etc/systemd/system/achi.service
```
7. Save `/etc/systemd/system/achi.service`
```
sudo systemctl daemon-reload
sudo systemctl enable achi
sudo service achi start
```