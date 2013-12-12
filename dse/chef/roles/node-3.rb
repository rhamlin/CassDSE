name "node-3"
description "Node 3 config"
run_list(
   "recipe[cassandra-config]"
)
default_attributes(
   "dse" => { "token" => "",
                 "seed" => "192.168.33.21",
                   "ip" => "192.168.33.23"}
)

