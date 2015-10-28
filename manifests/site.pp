class { '::ntp':
  servers => [ '0.pool.ntp.org', '1.pool.ntp.org' ],
}

class { '::consul':
  config_hash => {
    'bootstrap_expect' => 1,
    'data_dir'         => '/opt/consul',
    'datacenter'       => 'test',
    'log_level'        => 'INFO',
    'node_name'        => 'server',
    'server'           => true,
  }
}
