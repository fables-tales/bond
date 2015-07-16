module Bond
  class Proxy
    def initialize
      @received_messages = []
    end

    def record_message_received(method_name)
      received_messages << method_name
    end

    def message_received?(method_name)
      received_messages.include?(method_name)
    end

    protected

    attr_reader :received_messages
  end
end
