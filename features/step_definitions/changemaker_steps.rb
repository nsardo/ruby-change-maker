# Nicholas Sardo <ruby.code.artist@gmail.com>

Given(/^I have started the program$/) do
  @c = ChangeMaker::Change.new
end

# all current USD Bills
Then(/^available for use should be all current usd (\d+) and <coins>$/) do |arg1|
  ChangeMaker::Change::BILLS.include?(arg1)
end

# all current USD Coins
Then(/^available for use should be all current usd <bills> and (\d+)$/) do |arg1|
  ChangeMaker::Change::COINS.include?(arg1)
end

#BILLS: 2, COINS: 0
Then(/^If I enter an amount of (\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5|
  @c.make_change(arg1.to_i) == {arg2=>arg3, arg4=>arg5}
end

#BILLS: 2, COINS: 1
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6}, {arg7=>arg8}]
end

#BILLS: 2, COINS: 2
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6}, {arg7=>arg8, arg9=>arg10}]
end

#BILLS: 2, COINS: 3
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6}, {arg7=>arg8, arg9=>arg10, arg11=>arg12}]
end

#BILLS: 2, COINS: 4
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6}, {arg7=>arg8, arg9=>arg10, arg11=>arg12, arg13=>arg14}]
end

#BILLS: 2, COINS: 5
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6}, {arg7=>arg8, arg9=>arg10, arg11=>arg12, arg13=>arg14, arg15=>arg16}]
end

#BILLS: 3, COINS: 0
Then(/^If I enter an amount of (\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7|
  @c.make_change(arg1.to_i) == {arg2=>arg3, arg4=>arg5, arg6=>arg7}
end

#BILLS: 3, COINS: 1
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8}, {arg9=>arg10}]
end

#BILLS: 3, COINS: 2
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8}, {arg9=>arg10, arg11=>arg12}]
end

#BILLS: 3, COINS: 3
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14| 
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8}, {arg9=>arg10, arg11=>arg12, arg13=>arg14}]
end

#BILLS: 3, COINS: 4
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8}, {arg9=>arg10, arg11=>arg12, arg13=>arg14, arg15=>arg16}]
end

#BILLS: 3, COINS: 5
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8}, {arg9=>arg10, arg11=>arg12, arg13=>arg14, arg15=>arg16, arg17=>arg18}]
end

#BILLS: 4, COINS: 0
Then(/^If I enter an amount of (\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9| 
  @c.make_change(arg1.to_i) == {arg2=>arg3, arg4=>arg5, arg6=>arg7, arg8=>arg9}
end

#BILLS: 4, COINS: 1
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10}, {arg11=>arg12}]
end

#BILLS: 4, COINS: 2
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10}, {arg11=>arg12, arg13=>arg14}]
end

#BILLS: 4, COINS: 3
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\},\{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16| 
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10}, {arg11=>arg12, arg13=>arg14, arg15=>arg16}]
end

#BILLS: 4, COINS: 4
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10}, {arg11=>arg12, arg13=>arg14, arg15=>arg16, arg17=>arg18}]
end

#BILLS: 4, COINS: 5
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10}, {arg11=>arg12, arg13=>arg14, arg15=>arg16, arg17=>arg18, arg19=>arg20}]
end

#BILLS: 5, COINS: 1
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14| 
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10, arg11=>arg12}, {arg13=>arg14}]
end

#BILLS: 5, COINS: 2
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10, arg11=>arg12}, {arg13=>arg14, arg15=>arg16}]
end

#BILLS: 5, COINS: 3
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10, arg11=>arg12}, {arg13=>arg14, arg15=>arg16, arg17=>arg18}]
end

#BILLS: 5, COINS: 4
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10, arg11=>arg12}, {arg13=>arg14, arg15=>arg16, arg17=>arg18, arg19=>arg20}]
end

#BILLS: 5, COINS: 5
Then(/^If I enter an amount of (\d+)\.(\d+) I should receive the minimum currency necessary as \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}, \{(\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+), (\d+)=>(\d+)\}$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10, arg11, arg12, arg13, arg14, arg15, arg16, arg17, arg18, arg19, arg20, arg21, arg22|
  @c.make_change(Float("#{arg1}.#{arg2}")) == [{arg3=>arg4, arg5=>arg6, arg7=>arg8, arg9=>arg10, arg11=>arg12}, {arg13=>arg14, arg15=>arg16, arg17=>arg18, arg19=>arg20, arg21=>arg22}]
end