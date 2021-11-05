# Installing MSSQL Driver for JDBC

## Ensuring Linux is up to date

First of all, you should [make sure Linux is up to date](Ensuring-Linux-is-up-to-date.md).

## Downloading Installation Files
The next step is [downloading installation files](Downloading-installation-files.md).

## Installing JDBC Drivers

Jump into the chosen installation folder:

`cd /var/opt/elastic`  

`tar -zxf install/sqljdbc_X.X.X.X_enu.tar.gz`

> "X.X.X.X" refers to the version of the downloaded file from Microsoft.

## Loading ".jar" files

In some versions of Logstash there is a bug when loading `.jar` files.
To avoid this problem Elastic recommends to copy these files to a Logstash folder.

`cd /var/opt/elastic/sqljdbc_X.X/enu`

`cp *.jar /usr/share/logstash/logstash-core/lib/jars`

