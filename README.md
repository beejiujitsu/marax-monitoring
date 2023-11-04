# marax-telegraf-agent

A lightweight metrics telegraf docker setup intended for a Raspberry Pi Zero 2 W with zramswap enabled
connected to a Lelit Mara X (PL62X) espresso machine with a UART USB adapter.

Requires `zramswap` due to low memory, which can be installed with the following commands:

1. sudo apt-get install linux-modules-extra-raspi zram-tools
2. sudo sed -i 's/ALGO=.*/ALGO=lz4/;s/PERCENT=.*/PERCENT=50/'
3. sudo systemctl enable zramswap
