require "spec_helper"
require "bond"

RSpec.describe Bond do
  include Bond

  describe "#bond" do
    it "returns a Bond::Spy" do
      expect(bond(:arbitrary)).to be_a_kind_of(Bond::Spy)
    end

    xit "responds to all method calls and records them" do
      my_spy = bond(:spy)
      my_spy.this_method_name
      bond_did_you_receive?(my_spy, :this_method_name)
    end

    it "fails the test when it didn't receive a method call" do
      expect {
        my_spy = bond(:spy)
        bond_did_you_receive?(my_spy, :this_method_name)
      }.to raise_error
    end
  end
end
