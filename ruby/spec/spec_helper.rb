# spec/spec_helper.rb

require 'debug_me'
include DebugMe

require 'rspec'
require 'pathname'

RR = Pathname.new ENV.fetch('RR', Pathname.pwd + '..')

$: << RR
$: << RR + 'lib'
$: << RR + 'lib' + 'category'
