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
    assert 1000, github_goals.all.count
  end

end
