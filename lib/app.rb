module SkinnySinatra
  class App < Sinatra::Base
    set :root, File.join(File.dirname(__FILE__), '..')

    use SkinnySinatra::Controllers::Ping
  end
end

