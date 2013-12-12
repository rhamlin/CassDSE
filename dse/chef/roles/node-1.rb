name "node-1"
description "Node 1 config"
run_list(
   "recipe[cassandra-config]"
)
default_attributes(
   "dse" => { "token" => "0",
                 "seed" => "192.168.33.21",
                   "ip" => "192.168.33.21"}
)

