# Elasticsearch ILM Policies

## How to apply the ILM policies

You can do it with any HTTP client that can make REST API calls and understand JSON.

Following next, are 2 examples of how to do so, one using `curl`, and the other one using Kibana's `Dev Tools`.

Using `curl`:
```
curl -d @all.json -H 'Content-Type: application/json' -X PUT http://localhost:9200/_ilm/policy/os-mon-log-ilm-policy
```

Using Kibana's `Dev Tools`:
```
PUT _ilm/policy/os-mon-log-ilm-policy
${contents of all.json file goes here}
```
