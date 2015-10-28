require 'serverspec'

set :backend, :exec
set :path, '/sbin:/usr/local/sbin:$PATH'

describe file('/usr/local/bin/consul') do
  it { should exist }
end

describe service('consul') do
  it { should be_running }
end

describe file ('/etc/consul/config.json') do
  it { should exist }
end

describe port(8500) do
  it { should be_listening.with('tcp') }
end

describe command('/usr/local/bin/consul keyring -list') do
  its(:stdout) { should contain('biplZ72rssbDS4zACRQU4w==') }
end

describe process('consul') do
  its(:user) { should eq "consul" }
end
