# Data Extraction

⚠️ **Currently the data extraction approach available on this repository is done through the [Logstash](https://www.elastic.co/logstash/) tool**

There are other approaches that can be used, even from the Elastic stack, in particular, through *Elastic Beats*.

But for now the only it was only developed was with Logstash. With it you can extract to Elastic, the OutSystems monitoring data of the environment(s) by:
* Pulling data directly from OutSystems DB, in particular from [Log Tables](https://success.outsystems.com/Documentation/11_x_platform/Managing_the_Applications_Lifecycle/Monitor_and_Troubleshoot/Logging_database_and_architecture)
  * See more at: [Logstash data pipelines/Monitor Probe](logstash/pipelines/devops/database)
* Pulling data through an OutSystem application that exposes the majority of the data was REST endpoints that then can be consumed.
  * The application it's available in [OutSystems Forge](https://www.outsystems.com/forge/), it's [Monitor Probe](https://www.outsystems.com/forge/component-overview/4559/monitorprobe)
    * See more at: [Logstash data pipelines/Monitor Probe](logstash/pipelines/devops/monitor-probe)