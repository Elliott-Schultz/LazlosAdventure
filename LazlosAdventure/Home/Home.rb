choice = gets
choice = choice.chomp

if choice == "2"
  Dir.chdir("Fields")
  f = File.open("Choice.txt", "r")
  puts f.read
elsif choice == "1"
  Dir.chdir("Library")
  f = (File.open("Choice.txt", "r"))
  puts f.read
  require "./Library.rb"
  Dir.chdir("..")
end