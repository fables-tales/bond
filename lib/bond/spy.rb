module Bond
  class Spy
    def initialize(name, proxy_callback)
      @proxy = proxy_callback.call(self)
    end

    private

    def respond_to_missing?(name, _)
      true
    end

    def method_missing(name, *args, &blk)
      @proxy.record_message_received(name)
      self
    end
  end
end
