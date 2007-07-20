require "rubygems"
dir = File.dirname(__FILE__)
$LOAD_PATH.unshift("#{dir}/../lib")
$LOAD_PATH << "#{dir}/external_files" 

RAILS_ROOT = "#{dir}/rails_root"

require "spec"
require "rr"
require "rr/adapters/rspec"
require "active_support"
require "initializer"
require "component_fu"
require "ruby-debug"
require "spec/spec_helpers/remove_project_constants_helper"
require "spec/spec_helpers/component_manager_fixture"

Spec::Runner.configure do |config|
  config.mock_with RR::Adapters::Rspec
end