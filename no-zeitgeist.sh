#! /bin/bash
zeitgeist-daemon --quit
sudo apt-get purge -y activity-log-manager-common activity-log-manager-control-center zeitgeist zeitgeist-core zeitgeist-datahub
sudo rm -fr {/root,/home/*}/.local/share/zeitgeist
