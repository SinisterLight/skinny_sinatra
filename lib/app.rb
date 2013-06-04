module SkinnySinatra
  class App < Sinatra::Base
    set :root, File.join(File.dirname(__FILE__), '..')
    set :public_folder, File.join(File.dirname(__FILE__), '../public')

    use SkinnySinatra::Controllers::Ping

    register Sinatra::ActiveRecordExtension
    configure :development do
      register Sinatra::Reloader
    end
  end
end
