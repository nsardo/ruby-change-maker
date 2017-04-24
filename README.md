
[![Gem Version](https://badge.fury.io/rb/RubyChangeMaker.svg)](https://badge.fury.io/rb/RubyChangeMaker)

# Ruby Change Maker
Given a currency amount (assuming US Currency ) expressed as a floating point number ( i.e. 1.25 or 0.75 ) 
returns that amount expressed as the least amount of change using the least number of bills, coins, or combination of bills and coins.

## To use as a gem:

```
gem install RubyChangeMaker
```

Then, in your source file:

```
require 'RubyChangeMaker'

cm = RubyChangeMaker::Change.new
amt = 1.25 # for $1.25, use 0.75 for .75 cents, etc.
dollars, cents = cm.make_change(amt)
```

To see an example program using the Module, look in this repo's **bin/** directory


## To work with the source files:

### To Run:
```      
cd into bin/ and type: './changemaker' (the file is already chmod'd)
```

### To Run Tests:
```
(require's cucumber)
cd into root directory ( 'ruby-change-maker/' ), then type: cucumber
```    

### NOTES:

* Source is in **lib/rubychangemaker/**.
* **lib/rubychangemaker.rb** is just some boot-strapping for cucumber.
* **features/support/** again, boot-strapping for cucumber.
