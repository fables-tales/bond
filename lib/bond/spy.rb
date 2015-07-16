module Bond
  class Spy
    def initialize(name)

    end

    def respond_to?(method_name, private_method?)
      true
    end
  end
end
