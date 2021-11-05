# How to set up the necessary Elastic stack

The following are instructions on how to prepare the very basic Elastic stack to start monitoring your OutSystems applications and the platform.

:warning: **Important note(s)**
* It can be all installed in one server. Or in several servers. The sizing needed will depend of volume of data to be saved, analyzed, security, etc;
* It's recommended to follow Elastic sizing best practices that the several Elasticsearch providers make available;
* OutSystems provides instructions in how to set up everything in the same machine. It's a good starting point.

## Steps to follow
1. [Preparing an Elastic Stack Virtual Machine](Preparing-an-Elastic-Stack-Virtual-Machine.md)
2. [Installing and setup Elasticsearch](Installing-Elasticsearch.md)
3. [Installing and setup Kibana](Installing-Kibana.md)
4. [Installing Logstash](Installing-Logstash.md)
   1. [Installing MSSQL Driver for JDBC](Installing-MSSQL-Driver-for-JDBC.md)