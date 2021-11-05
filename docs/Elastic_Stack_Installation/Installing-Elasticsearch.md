# Installing Elasticsearch

## Ensuring Linux is up to date

First of all, you should [make sure Linux is up to date](Ensuring-Linux-is-up-to-date.md).

## Downloading Installation Files
The next step is [downloading installation files](Downloading-installation-files.md).

## Installing Elasticsearch
Jump into the chosen installation folder:

`cd /var/opt/elastic/install`  

Execute the installation file.

Ubuntu/Debian:

`sudo dpkg -i elasticsearch-X.X.X-amd64.deb`

Red Hat/CentOS:

`sudo rpm -i elasticsearch-X.X.X-x86_64.rpm`

## Setting up the service for automatic start

Now the information about services must be **reloaded** and the new service must be **enabled**.

`sudo /bin/systemctl daemon-reload`  

`sudo /bin/systemctl enable elasticsearch.service`  

## Starting the service

After the installation is done, the service must be started.  

Ubuntu/Debian:

`sudo service elasticsearch start`  

Red Hat/CentOS:

`sudo systemctl start elasticsearch`  

## Checking the service

During troubleshooting, it can be necessary to check the status of the service.

Ubuntu/Debian:

`sudo service elasticsearch status`

Red Hat/CentOS:

`sudo systemctl status elasticsearch`

Using CURL:

`sudo curl -XGET "localhost:9200"`  

## Stopping the service  

In case of maintenance, it can be necessary to stop the service.

Ubuntu/Debian:

`sudo service elasticsearch stop`

Red Hat/CentOS:

`sudo systemctl stop elasticsearch`
