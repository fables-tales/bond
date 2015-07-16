module Bond
  class Spy
    def initialize(name, proxy_callback)
      @proxy = proxy_callback.call
      p @proxy
    end

    private

    def respond_to_missing?(name, _)
      true
    end

    def method_missing(name, *args, &blk)
      __record_message_sent_to_proxy(name)
      self
    end

    def __record_message_sent_to_proxy(name)
      @proxy.record_message_received(name)
    end
  end
end
