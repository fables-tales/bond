require "bond/version"
require "bond/spy"

module Bond
  def bond(name)
    Bond::Spy.new(name, proxy_callback)
  end

  def bond_did_you_receive?(spy, method_name)
    unless spy_received_method?(spy)
      raise "Expected to receive :#{method_name}"
    end
  end

  private

  def proxy_callback
    lambda { |the_spy|
      Bond::Proxy.new.tap { |proxy|
        registered_proxies[the_spy] = proxy
      }
    }
  end

  def spy_received_method?(spy)

  end

  def registered_proxies
    @registered_proxies ||= {}
  end
end
