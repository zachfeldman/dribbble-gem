require_relative 'spec_helper'

describe "#shot" do

  it "#shots" do
    VCR.use_cassette("shots") do
      CLIENT.stub!(:gets) { 0 }
      CLIENT.shots.should include("page" => "1")
    end
  end

  it "#shots_type" do
    VCR.use_cassette("shots_type") do
      CLIENT.shots_type("debuts").should include("page" => "1")
    end
  end

  it "#shot" do
    VCR.use_cassette("shot") do
      some_shots = CLIENT.shots_type("debuts")
      id = some_shots["shots"][0]["id"]
      CLIENT.shot(id).should include("id" => id)
    end
  end

end