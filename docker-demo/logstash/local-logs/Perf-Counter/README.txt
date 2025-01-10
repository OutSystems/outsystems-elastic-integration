Insert all Performance Monitor logs here in .csv format

First column should be "Hostname", and should be the name of the machine from where the logs originated
Second column should be the timestamp, and renamed to "timestamp"

Currently, this pipeline only ingests the following field, which should be next columns, in order:

"\LogicalDisk(_Total)\Avg. Disk Bytes/Read"
"\LogicalDisk(_Total)\Avg. Disk Bytes/Write"
"\Memory\% Committed Bytes In Use"
"Processor(_Total)\% Processor Time"

Please note that Performance Monitor, by default, is including the hostname in the column headers. This part needs to be removed prior to ingestion.