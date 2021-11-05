# This document goal
Provide some guidance when for any reason you aren't able to correctly use this repository artifacts

:warning:
This is not still to be shared.


# Do the troubleshooting

## 1. Do basic checks
### 1.1 Start by assuring you and the user you are using can access the OutSystems monitoring data

#### 1.1.1 When using *Monitor Probe* it can be done

##### Assure Monitor Probe is working correctly
In the browser open Monitor Probe.
``https://<env domain>/MonitorProbe/``

:warning: Adapt the <env domain> to the domain name of environment you are trying to access.

You should see something similar to the below screen.
<Add picture with example here>

##### Assure there is data on the environment
It can done by doing by using the below URL and again adapt to the environment you want to test 
``https://<env domain>/MonitorProbe/rest/PlatformLogs/Errors?MinutesBefore=5``

See if there is any values. If so, Monitor Probe is working correcly.

You should see something similar to the below screen.
<Add picture with example here>


#### 1.1.2 When using *Logs tables direct database access* it can be done
With a tool like Microsoft SQL Management studio and with:
* Connection string
* User credentials

Provided by your database owner, execute a query like:
``SELECT
  Top 5 *         
  FROM OSADMIN_LOG.oslog_Error``


## Clean current configurations
<See Baker Hughes Elastic support session and see David Guidance >

# Other
(see David support to Baker Hughes)


Files to check and/or changes
* /etc/logstash/logstash.yml
* /etc/logstash/pipelines.yml
* /etc/sysconfig/logstash


- Logstash Pipelines file checks
Assure in Logstash machine the files are configured.
<Add image later>







