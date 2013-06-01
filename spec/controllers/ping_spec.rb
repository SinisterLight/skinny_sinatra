require 'spec_helper'

describe  SkinnySinatra::Controllers::Ping do	
  def app
    SkinnySinatra::Controllers::Ping
  end

    describe "get /ping" do
      it "should return 200" do
        get :ping
        last_response.body.should == "Ahoy! #{Time.now}"
        last_response.status.should == 200
      end
    end
end

