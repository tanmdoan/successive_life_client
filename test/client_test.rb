require 'vcr'
require 'webmock'
require 'minitest/pride'
require 'minitest/autorun'
require './lib/successive_life_client/client'

VCR.configure do |c|
  c.cassette_library_dir = 'test/cassettes'
  c.hook_into :webmock
end

class ClientTest < Minitest::Test

  def test_it_exists
    assert SuccessiveLifeClient::Client
  end


  def test_it_finds_all_github_goals
    VCR.use_cassette('all-github') do
      client = SuccessiveLifeClient::Client.new('http://localhost:3000')
      github_goals = client.find_github_goals
      assert_equal 8, github_goals.all.first["streak"]
    end
  end

  def test_it_finds_a_single_github_goal
    VCR.use_cassette('one-github') do
      client = SuccessiveLifeClient::Client.new('http://localhost:3000')
      github_goal = client.find_github_goal('1')
      assert_equal 8, github_goal.streak
    end
  end

  def test_it_find_all_users
    VCR.use_cassette('all-users') do
      client = SuccessiveLifeClient::Client.new('http://localhost:3000')
      users = client.find_users
      assert_equal 'Tan the maaaan', users.all.first["name"]
      assert_equal 'tan@example.com', users.all.first["email"]
    end
  end

  def test_it_finds_a_single_user
    VCR.use_cassette('one-user') do
      client = SuccessiveLifeClient::Client.new('http://localhost:3000')
      github_goal = client.find_user('1')
      assert_equal 'Tan the maaaan', github_goal.name
    end
  end

end
