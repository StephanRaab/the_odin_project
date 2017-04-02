puts 'I like ' + 'rhubarb pie'
puts 'I love Natalie! ' * 10
var1 = 2
var2 = '5'

puts var1.to_s + var2
puts var1 + var2.to_i

puts 'Hello there, what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you ' + name + '!'

puts "Hello there, what\'s your firstname?"
firstName = gets.chomp
puts "What about a middle name, do you have one of those?"
middleName = gets.chomp
puts "Finally, how do you spell your last name?"
lastName = gets.chomp
puts "Fantastic! Nice to meet you " + firstName + " " + middleName + " " + lastName + "!"
total_name_chars = firstName + middleName + lastName
puts 'Did you know there are ' + total_name_chars.length.to_s + ' characters in your full name!?'

puts "What's your favorite Number:"
fav_num = gets.chomp
puts "Perhaps you should go with a better number, like " + rand(100).to_s + "!"

str1 = "I love Natalie"
puts str1.reverse

puts 'What do you want Ricky?'
request = gets.chomp
upcase_request = 'what do you mean "' + request +'"?!? You are fired!!!'
puts upcase_request.upcase

linewidth = 30
title = "Table of contents"
chap1 = "Chapter 1: Numbers"
chap1_page = "Page 1"
chap2 = "Chapter 2: Letters"
chap2_page = "Page 72"
chap3 = "Chapter 3: Variables"
chap3_page = "Page 118"

puts title.center(linewidth)
puts chap1.ljust(linewidth) + chap1_page.rjust(linewidth)
puts chap2.ljust(linewidth) + chap2_page.rjust(linewidth)
puts chap3.ljust(linewidth) + chap3_page.rjust(linewidth)

command = ''
while command != 'bye'
  puts command
  command = gets.chomp
end

puts 'Come again soon!'

bottle_count = 99
while bottle_count > 0
  puts bottle_count.to_s + ' bottles of beer on the wall, ' + bottle_count.to_s + ' bottles of beer. You take one down, pass it around..'
  bottle_count = bottle_count - 1
  puts bottle_count.to_s + ' bottles of beer on the wall.'
end

puts "Please enter a beginning year: "
start_year = gets.chomp
puts "Thanks, please enter the ending year: "
end_year = gets.chomp


while start_year.to_i < end_year.to_i
  if ((start_year % 4) == 0 and (start_year % 100) != 0 and (start_year % 400) == 0)
    puts "There's a leap year in: " + start_year.to_s
  end
start_year += start_year
end 

languages = ['Dutch', 'English', 'French']
languages.each do |lang|
  puts 'I know some ' + lang
end

current_time = Time.new
spank_count = 0
puts "What year were you born in?"
birthday_year = gets.chomp
puts "What month were you born in?"
birthday_month = gets.chomp
puts "What day?"
birthday_day = gets.chomp

birthday = Time.mktime(birthday_year, birthday_month, birthday_day)
spank_count = ((current_time - birthday)/60/60/24/365).to_i
puts 'You are ' + spank_count.to_s + ' years old!'

class Die
  def roll
    1 + rand(6)
  end
end

dice = [Die.new, Die.new, Die.new]
dice.each do |die|
  puts "Random roll of the die " + die.roll
end
