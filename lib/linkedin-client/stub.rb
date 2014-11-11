# encoding: UTF-8

require 'linkedin-client/endpoints/v1'

# This allows us to stub out live calls when testing from calling projects

module LinkedIn
  module Stub

    # Setup stubbing for all endpoints
    def stub!
      LinkedIn::Endpoints::V1.any_instance.stub(:get_profile).and_return( Stub::Data::PROFILE )
    end

    # Test data for stubs to return
    module Data

      PROFILE = {
        "firstName"=>"Henry",
         "headline"=>"Software Engineer, Growth at Airbnb",
         "lastName"=>"Cai 蔡明航",
         "siteStandardProfileRequest"=> {
            "url"=> "https://www.linkedin.com/profile/view?id=17907854&authType=name&authToken=Y7oQ&trk=api*a4138181*s4202511*"}
        }.freeze
    end

  end
end
