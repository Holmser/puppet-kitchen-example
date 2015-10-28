require 'serverspec'
#require 'spec-helper'

#include Serverspec::Helper::Exec
#include Serverspec::Helper::DetectOS

set :backend, :exec
set :path, '/sbin:/usr/local/sbin:$PATH'

# RSpec.configure do |c|
#   c.before :all do
#     c.path = '/sbin:/usr/sbin'
#   end
# end

describe package('ntp') do
  it { should be_installed }
end

describe service('ntp') do
  it { should be_running }
end
