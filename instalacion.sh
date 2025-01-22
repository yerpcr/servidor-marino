#!/usr/bin/bash
sudo apt update
sudo apt upgrade
pkgs=(mariadb-server python3 python3-pip python3-venv virtualenv python3-virtualenv)
sudo apt-get -y --ignore-missing install "${pkgs[@]}"
python3 -m venv servidor-virtual
ls servidor-virtual
for i in "Flask" "matplotlib" "seaborn" "bokeh" "plotly" "pandas" "gunicorn"
do
	echo "*** Instalando $i ***"
	servidor-virtual/bin/pip install "$i"
done
