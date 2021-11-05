# Downloading Installation Files

## Creating installation folder

`sudo su - `

`mkdir /var/opt/elastic`

`mkdir /var/opt/elastic/install`

`cd /var/opt/elastic/install`

> This is a suggestion for folder name. It could be another name in any folder. 

## Downloading Elastic Stack installation files

### Elasticsearch

Ubuntu/Debian:

`wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-X.X.X-amd64.deb`  

Red Hat/CentOS:

`wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-X.X.X-x86_64.rpm`  

### Kibana

Ubuntu/Debian:

`wget https://artifacts.elastic.co/downloads/kibana/kibana-X.X.X-amd64.deb`  

Red Hat/CentOS:

`wget https://artifacts.elastic.co/downloads/kibana/kibana-X.X.X-x86_64.rpm`  

### Logstash

Ubuntu/Debian:

`wget https://artifacts.elastic.co/downloads/logstash/logstash-X.X.X.deb`  

Red Hat/CentOS:

`wget https://artifacts.elastic.co/downloads/logstash/logstash-X.X.X.rpm`

> "X.X.X" refers to the last version of each application.  
> All files are available for downloading at the [Elastic Stack Download Page](https://www.elastic.co/downloads/). 

## Downloading Microsoft JDBC Drivers for SQL Server
It can be downloaded from [Microsoft JDBC Driver for SQL Server Official Website](https://docs.microsoft.com/en-us/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server?view=sql-server-ver15) and transferred to the Linux server through SFTP/SCP, for instance.

If the Linux server has internet access, it is also possible to get the installation file directly from Microsoft, like this:

`wget https://download.microsoft.com/download/.../sqljdbc_X.X.X.X_enu.tar.gz`  

> "X.X.X.X" refers to the last version of JDBC driver. The correct link/file name can be found in Microsoft link described above.
