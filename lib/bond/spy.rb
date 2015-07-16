module Bond
  class Spy
    def initialize(name, proxy_callback)

    end

    private

    def respond_to_missing?(name, _)
      true
    end

    def method_missing(name, *args, &blk)
      self
    end
  end
end
