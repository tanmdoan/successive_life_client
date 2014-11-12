module SuccessiveLifeClient
  class User
    attr_reader :data
    def initialize(data)
      @data = data
    end

    def all
      data
    end

  end
end
