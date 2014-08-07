$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'rspec'
require 'dribbble'
require_relative 'vcr_setup'

RSpec.configure do |config|

end

CLIENT = Dribbble::Client.new