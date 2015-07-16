module Bond
  class Spy
    def initialize(name)

    end

    def respond_to?(method_name, method_is_private)
      true
    end
  end
end
