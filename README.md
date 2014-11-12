# SuccessiveLifeClient

Successive life client is used to simplify queries to the Successive Life Api.

## Installation

Add this line to your application's Gemfile:

    gem 'successive_life_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install successive_life_client

## Usage

```
client = SuccessiveLifeClient::Client.new(https://104.131.83.243)

client.find_github_goals.all
```



## Contributing

1. Fork it ( https://github.com/[my-github-username]/successive_life_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
