# How to use the Logstash accelerators

⚠️ **Requirements to do the configurations available on this page**
* You need to Set up Elasticsearch (using the respective accelerators) before doing anything with the Logstash accelerators;


## About
These Logstash accelerators are in fact data pipelines that fetch monitoring data from an OutSystems environment, make a few transformations and enrichments, and load the OutSystems monitoring data into Elasticsearch. Setting each monitoring data type as index(Elasticsearch "table")

This is possible, for now, using one of 3 ways:
1. Getting the OutSystems monitoring data directly from OutSystems logs tables of each environment through direct query (for now only usable for Microsoft SQL RDBMSs);
2. Getting the monitoring data by using the built-in [OutSystems Performance Monitoring API](https://success.outsystems.com/Documentation/11/Reference/OutSystems_APIs/PerformanceMonitoring_API);
3. Getting the OutSystems monitoring data by using Forge components like the [MonitorProbe](https://www.outsystems.com/forge/component-overview/4559/monitorprobe)


## Configure Logstash
⚠️ **Important Note(s)**
* You need assure you already [installed Logstash](/docs/Elastic_Stack_Installation/Installing-Logstash.md)
* And you already configured and/or updated the needed [Logastash plugins](/docs/Elastic_Stack_Installation/Installing-Logstash.md#other-plugins-that-might-be-needed)

<br>

So, if both conditions stated in above **Important Note(s)** section are assured, first and foremost, you need to rename the file [logstash-config.txt](config/logstash-config.txt) to:
* For _Red Hat_ based distros: `/etc/sysconfig/logstash`
* For _Debian_ based distros: `/etc/default/logstash`

<br>

**Review very carefully** all the environment variables in that file, and make the necessary adjustments if needed.


## Run one pipeline at a time
If you want or need, you can run each pipeline at a time:
1. Stop the Logstash service with the command `sudo service logstash stop`.
2. Run the command `/usr/share/logstash/bin/logstash -f <logstash_pipelines_folder>/<pipeline_to_run>`, where `<logstash_pipelines_folder>` is the folder where you've placed the pipelines from this repository, and `<pipeline_to_run>` the pipeline from this repository that you would like to run (like for instance `request-event.conf`).


## Run all pipelines at the same time
You can have all pipelines running at the same time, but for that you need to edit configuration file `/etc/logstash/pipelines.yml` and add the following lines:

```
- pipeline.id: devops-dev-error
  path.config: "<logstash_pipelines_folder>/error.conf"
- pipeline.id: devops-dev-extension
  path.config: "<logstash_pipelines_folder>/extension.conf"
- pipeline.id: devops-dev-integration
  path.config: "<logstash_pipelines_folder>/integration.conf"
- pipeline.id: devops-dev-mobile-request
  path.config: "<logstash_pipelines_folder>/mobile-request.conf"
- pipeline.id: devops-dev-timer
  path.config: "<logstash_pipelines_folder>/timer.conf"
- pipeline.id: devops-dev-web-reference
  path.config: "<logstash_pipelines_folder>/web-reference.conf"
- pipeline.id: devops-dev-web-request
  path.config: "<logstash_pipelines_folder>/web-request.conf"
- pipeline.id: devops-dev-web-service
  path.config: "<logstash_pipelines_folder>/web-service.conf"
- pipeline.id: devops-general
  path.config: "<logstash_pipelines_folder>/general.conf"
- pipeline.id: devops-request-events
  path.config: "<logstash_pipelines_folder>/request-event.conf"
```

where `<logstash_pipelines_folder>` is the folder where you've placed the pipelines from this repository.

> You'll need to restart the service for these changes to take effect.
