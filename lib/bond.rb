require "bond/version"
require "bond/spy"

module Bond
  def bond(name)
    Bond::Spy.new(name)
  end

  def bond_did_you_receive?(spy, method_name)
    raise "Expected to receive :#{method_name}"
  end
end
