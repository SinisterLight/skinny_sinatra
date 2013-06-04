$: << File.dirname(__FILE__)
ENV['RACK_ENV'] ||= 'development'

require 'bundler'
Bundler.require
require 'config/environment'

module SkinnySinatra
  Dir[File.join(File.dirname(__FILE__), 'lib', '*.rb')].each do |f|
    autoload File.basename(f, '.rb').camelize.to_sym, f
  end

  module Controllers
    Dir[File.join(File.dirname(__FILE__), 'lib', 'controllers/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end

  module Models
    Dir[File.join(File.dirname(__FILE__), 'lib', 'models/*.rb')].each do |f|
      autoload File.basename(f, '.rb').camelize.to_sym, f
    end
  end
end
