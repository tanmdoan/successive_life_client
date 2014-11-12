module SuccessiveLifeClient
  class GithubGoal
    attr_reader :data
    def initialize(data)
      @data = data
    end

    def all
      data
    end
  end
end
