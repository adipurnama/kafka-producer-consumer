SHELL := /bin/bash

.PHONY: topic alter-topic

topic:
	kafka-topics --create --zookeeper localhost:2181 --replication-factor 2 \
		--partitions 2 --topic "some.event.occured"

alter-topic:
	kafka-topics --zookeeper localhost:2181 --alter --partitions 3 --topic "some.event.occured"

