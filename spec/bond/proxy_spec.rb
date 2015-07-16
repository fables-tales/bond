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

      it "returns true when a specifc message has been received" do
        proxy.record_message_received(method_name)
        expect(proxy.message_received?(method_name)).to be true
      end
    end
  end
end

