require 'minitest/spec'
require "minitest/autorun"
require 'minitest/reporters'
require 'turn'
require 'growl'
require_relative '../lib/querinator'
require_relative 'querinator/importer_spec'
require_relative 'querinator/query_spec'

module Querinator

MiniTest::Reporters.use!

end