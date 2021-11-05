# How to access OutSystems monitoring data

Currently, there are 2 possible ways of accessing OutSystems monitoring data, and for which there are Logstash pipelines ready to be used:
* Direct access to the database.
* Using [MonitorProbe](https://www.outsystems.com/forge/component-overview/4559/monitorprobe), a component available on Forge.

## Direct access to the OutSystems database

### Advantages
* It's the most performant type of access.
* Access to **all** data.
* Suited for a high data volume extraction.

### Disadvantages
* Puts load in the DBMS.
* Data structure changes will impact the extraction process.
* Breaks encapsulation in the sense that it opens access to the platform database to 3rd party tools.
* May require special governance rules to access database from the outside.
 
<Put picture with high level arch of the approach here>

### How to get access to the Outsystems database
#### For OutSystems PaaS customers
1. Ask for direct access to the OutSystems log database. Follow the instructions available [here](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Access_the_database_of_your_OutSystems_Cloud). OutSystems will ask you for a static IP address from where the access to the database will done. You'll need to provide the public IP address of the machine running Logstash. Only the machine where Logstash is running will need a public IP address, the rest of the Elastic stack doesn't.
2. When the connection string and the user credentials are provided, go to the Logstash environment variables configuration file and enter:
    * JDBC_USER="given username"
    * JDBC_PASSWORD="given password"
    * JDBC_CONNECTION_STRING="given connection string"
3. Finally, start Logstash and begin putting your data into Elasticsearch.

#### For on-premises or customers using Public Cloud Providers IaaS services
1. Get a read-only user able to access the tables where the OutSystems monitoring data is located (`oslog_*`). You must have the username and password.
2. The connection string to the database.
3. The network access to be able to pull the data from it.
    > If you have your Outsystems factory on IaaS services provided by AWS, you may want to have a look at [this](https://success.outsystems.com/Support/Enterprise_Customers/Maintenance_and_Operations/Connect_to_your_OutSystems_Cloud_using_AWS_Transit_Gateway).

The database can be any of the supported ones:
* SQL Server (on-premises)
* SQL Server on Azure
* SQL Server on AWS
* Oracle (OutSystems supported versions)

If the data volume is very high, we strongly recommend the usage of a replica of the `oslog_*` tables to pull the data from, thus avoiding potential performance impacts in the OutSystems platform and applications.

## Using MonitorProbe

### Advantages
* Easier to implement: Just download application from Forge and deploy it in target environment.
* Higher abstraction level. Normally, data structure changes will not affect data fetching.

### Disadvantages
* Puts load in the Frontends and the DBMS
* Not suited for a high data volume extraction
    > :exclamation: Don't use this approach if you need to get more than 15000 records per minute.

<Put picture with high level arch of the approach here>
