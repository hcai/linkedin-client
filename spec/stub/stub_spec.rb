# encoding: UTF-8

require 'spec_helper'

describe LinkedIn::Stub do
  context "can stub out calls" do

    let (:client) { LinkedIn::Client.create }

    before :each do
      LinkedIn::Client.stub!
    end

    describe "and return test data" do

      it "for client.people.profile_basic" do
        client.poeple.get_profile.should == LinkedIn::Stub::Data::PROFILE
      end

    end

  end
end
