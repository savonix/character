require 'spec_helper'

describe Character do
  it "should be valid" do
    Character.should be_a(Module)
  end
end