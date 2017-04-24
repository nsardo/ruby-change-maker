# Nicholas Sardo <ruby.code.artist@gmail.com>

###
# Return the change to be tendered for a given amount in the least denomination of currency
###
module RubyChangeMaker
  
  class Change
    
    #google: common usd denominations
    BILLS = [ 100, 50, 20, 10, 5, 2, 1 ]
    COINS = [ 50, 25, 10, 5, 1         ]
    
    def initialize()
    end
    
    # split the denomination entered into bills and coins
    # then, determine change using least amount of bills and coins
    def make_change( amount )
      #REMOVED IN REFACTOR:  coins = changer( pull_cents( f ), COINS )
      #REMOVED IN REFACTOR:  bills = changer( pull_bills( f ), BILLS )
      coins = changer( pull_currency( amount ){ | s, idx | currency = s[ idx + 1..-1 ] }, COINS )
      bills = changer( pull_currency( amount ){ | s, idx | currency = s[ 0...idx     ] }, BILLS )
      [ bills, coins ]
    end
	
    private
    
    #refactor method to reduce code duplication
    def pull_currency( amount, &block )
      amount_str          = Float( amount ).to_s
      idx                 = amount_str.index( "." )
      currency            = block.call( amount_str, idx )
      currency.to_i
    end
    
    def changer ( amount, arr )
      denominations = Hash.new( 0 )
      
      #run through each standard currency denomination
      for current_denomination in arr
      
        #whole number of times denomination goes into start value
        how_many = Integer( amount / current_denomination )
      
        #new start value is remainder from above
        amount %= current_denomination
      
        #assign currency denomination as key, number of even divisions as value
        denominations[ current_denomination ] = how_many
      end
      change = Hash.new( 0 )
  	  denominations.each { | denomination, quantity | if quantity >= 1 then change[ denomination ] = quantity end }
  	  
      change
    end
    
  end
end


=begin
    ###
    #taken out in refactor
    ###
    
    def pull_cents( amount )
      # sanity cast
      s = Float( amount ).to_s
      
      # move to the dot in the amount and mark it
      idx = s.index( "." )
      
      # move one past the mark, and capture everything to end, i.e. the "cents"
      cents = s[ idx + 1..-1 ]
      
      # send it back
      cents.to_i
    end
	
    def pull_bills( amount )
      # sanity cast
      s = Float( amount ).to_s
      
      # find the dot
      idx = s.index( "." )
      
      # grab everyting up to but not including the dot, i.e. the "bills"
      bill = s[ 0...idx ]
      
      # send it back
      bill.to_i
    end
=end
