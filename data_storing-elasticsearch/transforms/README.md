# Elasticsearch Transforms

## How to test and create transforms

You can do it with any HTTP client that can make REST API calls and understand JSON.

Following next, are 2 examples of how to do so, one using `curl`, and the other one using Kibana's `Dev Tools`, for each supported type.

### Test Transforms

Using `curl`:
```
curl -d @request-breakdown.json -H 'Content-Type: application/json' -X POST http://localhost:9200/_transform/_preview
```

Using Kibana's `Dev Tools`:
```
POST _transform/_preview
${contents of request-breakdown.json file goes here}
```

### Create Transforms

Using `curl`:
```
curl -d @request-breakdown.json -H 'Content-Type: application/json' -X PUT http://localhost:9200/_transform/request-breakdown
```

Using Kibana's `Dev Tools`:
```
PUT _transform/request-breakdown
${contents of request-breakdown.json file goes here}
```

### Index Template

Apply the index template for the destination index.

Using `curl`:
```
curl -d @../index-templates/with-mappings/request-breakdown.json -H 'Content-Type: application/json' -X PUT http://localhost:9200/_template/os-mon-log-request-breakdown
```

Using Kibana's `Dev Tools`:
```
PUT _template/os-mon-log-request-breakdown
${contents of ../index-templates/with-mappings/request-breakdown.json file goes here}
```

### Index Bootstrap

Bootstrap the Transform destination index.

Using Kibana's `Dev Tools`:
```
PUT os-mon-log-request-breakdown-000001
{
  "aliases": {
    "os-mon-log-request-breakdown": {
      "is_write_index": true
    }
  }
}
```

### Start Transforms

Go to `Stack Management` > `Transforms` > `Actions` and press `Start`.

### Relevant Documentation

* [Elasticsearch Reference: Transforming Data](https://www.elastic.co/guide/en/elasticsearch/reference/current/transforms.html)