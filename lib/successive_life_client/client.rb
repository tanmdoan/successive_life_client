require 'json'
require 'faraday'
require './lib/successive_life_client/github_goal'
require './lib/successive_life_client/user'

module SuccessiveLifeClient
  class Client

    attr_reader :conn
    def initialize(host)
      @conn = Faraday.new(url: host)
    end


    def find_github_goals
      data = JSON.parse(@conn.get("/api/v1/github_goals").body)
      GithubGoal.new(data)
    end

    def find_github_goal(user_id)
      data = JSON.parse(@conn.get("/api/v1/github_goals/#{user_id}").body)
      GithubGoal.new(data)
    end

    def find_users
      data = JSON.parse(@conn.get("/api/v1/users").body)
      User.new(data)
    end

    def find_user(id)
      data = JSON.parse(@conn.get("/api/v1/users/#{id}").body)
      User.new(data)
    end
  end
end
