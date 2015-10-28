require 'serverspec'

set :backend, :exec
set :path, '/sbin:/usr/local/sbin:$PATH'

describe package('ntp') do
  it { should be_installed }
end

describe service('ntp') do
  it { should be_running }
end
