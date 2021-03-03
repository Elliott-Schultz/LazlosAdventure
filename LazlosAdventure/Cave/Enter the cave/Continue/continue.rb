answer = gets
answer = answer.chomp

if answer == "e" or answer == "E"
  Dir.chdir("Correct")
  f = File.open("correct.txt", "r")
  puts f.read
  require "./correct.rb"
else
  Dir.chdir("Incorrect")
  f = File.open("death.txt", "r")
  puts f.read
end