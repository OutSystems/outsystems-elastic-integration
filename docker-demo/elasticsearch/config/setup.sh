apk add curl && \
	echo '=====Waiting for ElasticSearch to come online=====' && sleep 10 && \
	echo '=====Adding Index Lifecycle Policy=====' && \
    curl -d @./ilm.json -H 'Content-Type: application/json' -X PUT "http://elasticsearch:9200/_ilm/policy/os-mon-log-ilm-policy" && \
	echo '=====Adding Index Template=====' && \
	curl -d @./index_template.json -H 'Content-Type: application/json' -X PUT "http://elasticsearch:9200/_template/os-mon-log-request-breakdown" && \
	echo '=====Adding Transform=====' && \
	curl -d @./transform.json -H 'Content-Type: application/json' -X PUT "http://elasticsearch:9200/_transform/request-breakdown" && \
	echo '=====Bootstrapping Transform=====' && \
	curl -d @./index_bootstrap.json -H 'Content-Type: application/json' -X PUT "http://elasticsearch:9200/os-mon-log-request-breakdown-000001" && \
	echo '=====Starting Transform=====' && \
	curl -X POST "http://elasticsearch:9200/_transform/request-breakdown/_start" && \
	echo '=====Setup Finished====='