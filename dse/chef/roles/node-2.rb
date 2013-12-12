name "node-2"
description "Node 2 config"
run_list(
   "recipe[cassandra-config]"
)
default_attributes(
   "dse" => { "token" => "",
                 "seed" => "192.168.33.21",
                   "ip" => "192.168.33.22"}
)

