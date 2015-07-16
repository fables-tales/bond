require "spec_helper"
require "bond/proxy"

module Bond
  RSpec.describe Proxy do
    subject(:proxy) { Proxy.new }

    let(:method_name) { double(:method_name) }

    describe "#message_received?" do
      it "returns false when no message has been received" do
        expect(proxy.message_received?(method_name)).to be false
      end
    end
  end
end

