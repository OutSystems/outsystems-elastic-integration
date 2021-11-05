# Installing Kibana

## Ensuring Linux is up to date

First of all, you should [make sure Linux is up to date](Ensuring-Linux-is-up-to-date.md).

## Downloading Installation Files
The next step is [downloading installation files](Downloading-installation-files.md).

## Installing Kibana

Jump into the chosen installation folder:

`cd /var/opt/elastic/install`  

Execute the installation file.

Ubuntu/Debian:

`sudo dpkg -i kibana-X.X.X-amd64.deb`

Red Hat/CentOS:

`sudo rpm -i kibana-X.X.X-x86_64.rpm`  

## Setting up the service for automatic start

Now the information about services must be **reloaded** and the new service must be **enabled**.

`sudo /bin/systemctl daemon-reload`

`sudo /bin/systemctl enable kibana.service`  

## Starting the service

After the installation is done, the service must be started.

Ubuntu/Debian:

`sudo service kibana start`  

Red Hat/CentOS:

`sudo systemctl start kibana`  

## Checking the service

During troubleshooting, it can be necessary to check the status of the service.

Ubuntu/Debian:

`sudo service kibana status`

Red Hat/CentOS:

`sudo systemctl status kibana`

Using CURL:

`sudo curl -XGET "localhost:5601/status" -I`  

## Stopping the service  

In case of maintenance, it can be necessary to stop the service.

Ubuntu/Debian:

`sudo service kibana stop`

Red Hat/CentOS:

`sudo systemctl stop kibana`

## Enabling external access to Kibana  

If there is no "text editor for humans" in your Linux, install "nano".

Ubuntu/Debian:

`sudo apt -y install nano`

Red Hat/CentOS:

`sudo yum -y install nano`

Now, in order to enable external access, the kibana.yml file must be changed.  

`sudo nano /etc/kibana/kibana.yml`  

Change this `# server.host = "localhost"` to this `server.host = 0.0.0.0`.

> Beside changing the host, the character # must also be removed in order to apply this configuration.
> The host IP, in this case, 0.0.0.0, must not have any quotes (0.0.0.0, not “0.0.0.0”).

To exit nano and save changes, type `CTRL+X`, then `Y` and then press `ENTER`.
