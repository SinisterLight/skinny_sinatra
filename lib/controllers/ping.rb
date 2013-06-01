class SkinnySinatra::Controllers::Ping < Sinatra::Base
  get '/ping' do
    body "Ahoy! #{Time.now}"
  end
end
