require "bond/version"
require "bond/spy"

module Bond
  def bond(name)
    Bond::Spy.new(name)
  end
end
