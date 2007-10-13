ENV["RAILS_ENV"] ||= "test"
dir = File.dirname(__FILE__)
RAILS_GEM_VERSION = '1.2.3'
$LOAD_PATH.unshift("#{dir}/../../../lib")
require "#{dir}/../config/environment"

require "action_controller/test_process"
require "spec"
require "ruby-debug"
require "rr"
require "rr/adapters/rspec"

require "#{dir}/spec_helpers/remove_project_constants_helper"

Spec::Runner.configure do |config|
  config.mock_with RR::Adapters::Rspec
end
