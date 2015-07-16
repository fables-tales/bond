require "spec_helper"
require "bond/spy"

module Bond
  RSpec.describe Spy do
    subject(:spy) {
      Spy.new(:arbitrary)
    }

    describe "responding to everything" do
      let(:method_name) { :method_name }

      describe "#respond_to?" do
        it "returns true" do
          expect(spy.respond_to?(method_name)).to be true
        end
      end
    end
  end
end
