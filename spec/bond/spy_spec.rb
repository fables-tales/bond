require "spec_helper"
require "securerandom"
require "bond/spy"

module Bond
  RSpec.describe Spy do
    subject(:spy) {
      Spy.new(:arbitrary, proxy_callback)
    }

    let(:proxy_callback) {
      lambda { proxy }
    }

    let(:proxy) {
      double(:proxy, :record_message_received => nil)
    }

    describe "responding to everything" do
      let(:method_name) { SecureRandom.hex }

      describe "#respond_to?" do
        it "returns true" do
          expect(spy.respond_to?(method_name)).to be true
        end
      end

      it "returns self" do
        expect(spy.public_send(method_name)).to be spy
      end

      it "records the method call on the proxy" do
        spy.public_send(method_name)
        expect(proxy).to have_received(:record_message_received).with(method_name)
      end
    end
  end
end
