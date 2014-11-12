require 'minitest/pride'
require 'minitest/autorun'
require './lib/successive_life_client/client'

class ClientTest < Minitest::Test

  def test_it_exists
    assert SuccessiveLifeClient::Client
  end

  def test_it_finds_all_github_goals
    client = SuccessiveLifeClient::Client.new('http://localhost:3000')
    github_goals = client.find_github_goals
    assert_equal 8, github_goals.all.first["streak"]
  end

  def test_it_finds_a_single_github_goal
    client = SuccessiveLifeClient::Client.new('http://localhost:3000')
    github_goal = client.find_github_goal('1001')
    assert_equal 1200, github_goal.streak
  end

end
