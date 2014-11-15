# encoding: UTF-8

require 'spec_helper'


###
# NOTE: This spec will actually hit LinkedIn's servers
###

describe 'LinkedIn::Endpoints::People' do
  context "Test integration of people endpoint" do

    # Skip if the creds aren't setup
    if defined?(TEST_ACCESS_TOKEN)

      before :each do
        @client = LinkedIn::Client.create(:oauth2_access_token => TEST_ACCESS_TOKEN)
      end

      it 'get my profile' do
        response = @client.v1.get_profile('ARz7eS698N')
        response.should be_a(Hash)
        response['firstName'].should_not be_nil
      end

      it 'gets default fields' do
        response = @client.v1.get_info_by_fields()
        response.should be_a(Hash)
        response['threeCurrentPositions'].should_not be_nil
      end

    else
      puts "You should put valid creds in _creds.rb"
    end

  end
end
