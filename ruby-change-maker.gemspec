
Gem::Specification.new do |s|
  s.name	        = 'RubyChangeMaker'
  s.version	      = '1.0.4'
  s.licenses	    = ['MIT']
  s.summary	      = 'Returns the least amount of change for a given amount of US Currency'
  s.description	  = 'Given an amount of US Currency, returns it as the smallest number of bills, coins, or combination'
  s.author	      = 'Nicholas Sardo'
  s.email	        = 'nsardo@aol.com'
  s.files	        = %w[
    README.md
    LICENSE
    lib/rubychangemaker.rb
    lib/rubychangemaker/rubychangemaker.rb
    features/all_usd_denominations.feature
    features/return_minimum_currency_necessary.feature
    features/step_definitions/rubychangemaker_steps.rb
    features/support/env.rb
    bin/changemaker
]
  s.homepage	    = 'https://rubygems.org/gems/RubyChangeMaker'
end
