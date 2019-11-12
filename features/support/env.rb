#!/usr/local/bin/ruby

require_relative './master'
require 'json'
require 'rest-client'
require 'test/unit/assertions'
include Test::Unit::Assertions

$test_env   =  ENV['TEST_ENV'] || 'sandbox'
$config_file = "./config/#{$test_env}_env.json" #can be parameterized based on argument
demo  = Demo.new
$config_file = demo.filetest($config_file)
$data_hash  =  demo.jsonHash($config_file)
