# Elasticsearch Index Templates

> Warning: You need to apply the ILM Policies before applying the index templates.

## How to apply the index templates

You can do it with any HTTP client that can make REST API calls and understand JSON.

Following next, are 2 examples of how to do so, one using `curl`, and the other one using Kibana's `Dev Tools`, for each supported type.

### Request Breakdown

Using `curl`:
```
curl -d @with-mappings/request-breakdown.json -H 'Content-Type: application/json' -X PUT http://localhost:9200/_template/os-mon-log-request-breakdown
```

Using Kibana's `Dev Tools`:
```
PUT _template/os-mon-log-request-breakdown
${contents of with-mappings/request-breakdown.json file goes here}
```
