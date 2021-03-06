cluster.name: ${cluster_name}
cluster.initial_master_nodes: ${cluster_initial_master_nodes}
  
bootstrap.memory_lock: ${bootstrap_memory_lock}
discovery.seed_hosts:
%{ for seed in discovery_seed_hosts ~}
  - ${seed}
%{ endfor ~}

# http.compression: true
# http.compression_level: 3

node.data: ${node_data}
node.master: ${node_master}
node.ingest: ${node_ingest}
node.name: ${hostname}
network.host: 0.0.0.0

#path.data: /path/to/data
#path.logs: /path/to/logs

xpack.security.enabled: false
xpack.security.transport.ssl.enabled: false
# xpack.security.transport.ssl.verification_mode: certificate 
# xpack.security.transport.ssl.key: /usr/share/elasticsearch/config/node.key
# xpack.security.transport.ssl.certificate: /usr/share/elasticsearch/config/node.crt
# xpack.security.transport.ssl.certificate_authorities: [ "/usr/share/elasticsearch/config/ca.crt" ]

xpack.security.http.ssl.enabled: false
# xpack.security.http.ssl.verification_mode: certificate
# xpack.security.http.ssl.key: /usr/share/elasticsearch/config/node.key
# xpack.security.http.ssl.certificate: /usr/share/elasticsearch/config/node.crt
# xpack.security.http.ssl.certificate_authorities: ["/usr/share/elasticsearch/config/ca.crt" ]

xpack.ml.enabled: false
xpack.monitoring.collection.enabled: false
xpack.monitoring.elasticsearch.collection.enabled: false
# xpack.monitoring.history.duration: 14d
