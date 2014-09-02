# LetUsHide

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'let_us_hide'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install let_us_hide

## Usage

First, you need to set your API key.  If you don't have one, you can sign up here, http://letushide.com/subscribe/. 

    LetUsHide::API.configure api_key: 'bf5ce4ad84774d4817a83aad'
    
Then you can get a list of proxy servers:

    LetUsHide::API.list
    
You can filter the list by passing an options hash:

    options = {
        num: 100, # number of results to return
        as: %w[tp ap dp hap], # anonymity selector 
        ps: %w[http https socks4 socks5], # protocol selector
        cs: %w[us ca] # country selector 
    }
    
    LetUsHide::API.list(options)
    
For more information on these options, check out the parameters section on the official API site - http://letushide.com/api/

## Contributing

1. Fork it ( https://github.com/[my-github-username]/let_us_hide/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
