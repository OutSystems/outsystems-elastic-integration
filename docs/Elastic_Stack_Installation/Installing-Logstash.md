# Installing Logstash

## Ensuring Linux is up to date

First of all, you should [make sure Linux is up to date](Ensuring-Linux-is-up-to-date.md).

## Downloading Installation Files
The next step is [downloading installation files](Downloading-installation-files.md).

## Installing Logstash
Jump into the chosen installation folder:

`cd /var/opt/elastic/install`  

Execute the installation file.

Ubuntu/Debian:

`sudo dpkg -i logstash-X.X.X.deb`

Red Hat/CentOS:

`sudo rpm -i logstash-X.X.X.rpm`  

## Setting up the service for automatic start

Now the information about services must be **reloaded** and the new service must be **enabled**.

`sudo /bin/systemctl daemon-reload`  

`sudo /bin/systemctl enable logstash.service`  

## Starting the service

After the installation is done, the service must be started.  

Ubuntu/Debian:

`sudo service logstash start`  

Red Hat/CentOS:

`sudo systemctl start logstash`  

## Checking the service

During troubleshooting, it can be necessary to check the status of the service.

Ubuntu/Debian:

`sudo service logstash status`

Red Hat/CentOS:

`sudo systemctl status logstash`

Using CURL:

`sudo curl -XGET "localhost:9600"`  

## Stopping the service

In case of maintenance, it can be necessary to stop the service.

Ubuntu/Debian:

`sudo service logstash stop`

Red Hat/CentOS:

`sudo systemctl stop logstash`  

## Installing Logstash Plugins

There are 4 kinds of Logstash plugins:
* Input Plugins
* Filter Plugins
* Output Plugins
* Codec Plugins

Installed Logstash plugins should be up to date before installing new ones.

### Update existing plugins
Run the following command (as root):
**Debian based systems**
`/etc/default/logstash/bin/logstash-plugin update`  


**Red Hat based systems**
`/usr/share/logstash/bin/logstash-plugin update`  

:warning:**Important Notes**
* Sometimes as new versions of Logstash are released the directory changes. Currently, August 16, 2021 for Logstash 7.14.0, the full command is this one: `/usr/share/logstash/bin/logstash-plugin update`
* If you don't know where the file is located, you can run: `find / -name logstash-plugin`

<br>


### Installing other need plugins
It is mandatory to install Filter-Range plugin. 

To do so run the following command (as root):
**Debian based systems**
`/etc/default/logstash/bin/logstash-plugin install logstash-filter-range`  

**Red Hat based systems**
`/usr/share/logstash/bin/logstash-plugin install logstash-filter-range`  

### Other plugins that might be needed
In some cases, like when using Elasticsearch is in AWS environments, __output-amazon_es__ plugin must also be installed:

To do so run the following command (as root):
**Debian based systems**
`/etc/default/logstash/bin/logstash-plugin install logstash-output-amazon_es`  

**Red Hat based systems**
`/usr/share/logstash/bin/logstash-plugin install logstash-output-amazon_es`  


## Relevant information
Everything you need to know about Logstash Plugins can be found in [Logstash Official Page](https://www.elastic.co/guide/en/logstash/current/index.html).
