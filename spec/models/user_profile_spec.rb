require 'spec_helper'

describe Character::UserProfile do
  context "a new profile" do
    p = Character::UserProfile.new
    subject { p }
    it { should be_valid }
  end
end
