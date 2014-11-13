module SuccessiveLifeClient
  class User
    attr_reader :data
    def initialize(data)
      @data = data
    end

    def all
      data
    end

    def name
      data["name"]
    end

  end
end
