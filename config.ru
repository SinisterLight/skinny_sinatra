$: << File.dirname(__FILE__)

ENV['RACK_ENV'] ||= 'development'

require 'skinny_sinatra'
run SkinnySinatra::App

