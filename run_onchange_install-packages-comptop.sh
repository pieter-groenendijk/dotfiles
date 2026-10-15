#!/bin/bash

echo "installing packages"
echo "installing 'comptop' packages"

echo "installing repos"
sudo xbps-install --sync {{ join " " .packages.comptop.repos }}
if [ $? -ne 0 ]
then
    echo "failed to install packages: failde to install repos"
    exit 1
fi

echo "installing packages"
sudo xbps-install --sync {{ join " " .packages.comptop.packages }}
if [ $? -ne 0 ]
then
    echo "failed to install packages"
    exit 1
fi

echo "done"
