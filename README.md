# setup_my_laptop
## Got a brand new laptop with Ubuntu 18.04 on board?! Here is magic script to setup all the stuff!

### What this script do:

* Updates Ubuntu with the latest software
* Installs Google Chrome, Docker, docker-compose, Telegram, Slack
* Installs VSCode or PHPStorm (depends on your choice)

### Prerequisites:

* Open terminal
* Type ```sudo visudo``` and enter your password
* Find the string ```%sudo   ALL=(ALL:ALL) ALL``` and replace it with ```%sudo   ALL=(ALL:ALL) NOPASSWD:ALL```

### How to:

1. Clone this repo
2. Open terminal emulator (CTRL + Alt + t key shortcut)
3. ```cd``` to cloned directory
4. Run ```./provisioning.sh```
5. Make some choice (e. g. choose your favourite IDE)
6. ???
7. PROFIT!!!

### Something missing?
Feel free to create Feature request, our operations team will add requested feature ASAP
