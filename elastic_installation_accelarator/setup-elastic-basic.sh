#!/bin/sh

# Author: urbano.freitas@outsystems.com, version date: August 12, 2021
# This script only works for Debian based systems


# --> Became root
sudo su - 

# --> Create Folder/Directory to download files
mkdir /var/opt/elastic
mkdir /var/opt/elastic/install

# Put Shell on that Directory
cd /var/opt/elastic/install

# --> Download all Elastic Stack Assets
# Elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.1.14-amd64.deb

# Kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.1.14-amd64.deb

# Logstash
wget https://artifacts.elastic.co/downloads/logstash/logstash-7.1.14.deb


#--> Install Elasticsearch

# Start service

# Confirm it's running

# Put it running as service

#--> Install Kibana

# Confirm it's running

# Put it running as service


