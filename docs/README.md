# This section goal
Capture other relevant information for the usage of this repository assets/artifacts that should act like maintenance.

:warning: **Important Note(s)**
* Although OutSystems does is best on providing good documentation, this comes without any warranty associated and OutSystems welcome all feedback to improve it.

<br>


# Types of contents covered
## 1. How to setup Elastic stack to be able to then use the artifacts OutSystems shares in this repository
Elastic can be used in several ways.
* Installing it on premises. We have some instructions [here](../docs/Elastic_Stack_Installation/README.md)
* Using Elastic Cloud (https://www.elastic.co/cloud/)
* Using other Elasticsearch providers like:
  * [Amazon Elasticsearch](https://aws.amazon.com/elasticsearch-service/)
  * [logz.io](logz.io/)

<br>

:warning: **Important Note(s)**
* If you decide to use an Elasticsearh service like ones stated above, you still need to install and configure an Logstash instance to ship the OutSystems monitoring data to the Elasticsearh service. See how at: [Installing and configuring Logstash](../docs/Elastic_Stack_Installation/Installing-Logstash.md)

<br>



## 2. Examples of metrics that can be built on top of the OutSystems monitoring data
:warning: **Important Note(s)**
* The metrics shared are baseline recommendations that OutSystems thinks can be used by anyone. But they aren't mandatory neither the recommended ones to everyone. It will depend of the customer/partner use cases.

Layers
* Infrastructure/Operating System
* Database Management Systems(DBMS)
* Web Server (Frontend servers)
* OutSystems Platform
* OutSystems Applications

:warning: **Important Note(s)**
* The visualizations and dashboards provided on this repository are all, for now, to cover only the OutSystems layers.
