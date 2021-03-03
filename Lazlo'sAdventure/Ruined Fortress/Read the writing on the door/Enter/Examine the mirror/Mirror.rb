key = false

for elem in $player1.inventory
  if elem == "Key"
    key = true
  end
end

if key == false
  Dir.chdir("No Key")
  f = File.open("Next.txt", "r")
  puts f.read
  load "./Next.rb"
  Dir.chdir("..")
elsif key == true
  Dir.chdir("Key")
  f = File.open("Next.txt", "r")
  puts f.read
  require "./Next.rb"
end


