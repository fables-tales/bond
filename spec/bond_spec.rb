require "spec_helper"

RSpec.describe Bond do
  include Bond

  describe "#bond" do
    it "returns a Bond::Spy" do
      expect(bond(:arbitrary)).to be_a_kind_of(Bond::Spy)
    end
  end
end
