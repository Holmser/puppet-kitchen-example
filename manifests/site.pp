class { '::ntp':
  servers => [ '0.pool.ntp.org', '1.pool.ntp.org' ],
}

class { '::consul':
  user => 'consul',
  config_hash => {
    'bootstrap_expect' => 1,
    'client_addr'      => '0.0.0.0',
    'data_dir'         => '/opt/consul',
    'datacenter'       => 'test',
    'log_level'        => 'INFO',
    'node_name'        => 'test-kitchen-server',
    'server'           => true,
    'ui_dir'           => '/opt/consul/ui',
    'encrypt'          => "biplZ72rssbDS4zACRQU4w==",
  }
}
