string = false
piece1 = false
piece2 = false
shaft = false
fletchings = false
arrowhead = false

for item in $player1.inventory
  if item == "Decimator Piece 1"
    piece1 = true
  elsif item == "Decimator Piece 2"
    piece2 = true
  elsif item == "Pure String of the Elves"
    string = true
  elsif item == "Shaft"
    shaft = true
  elsif item == "Fletchings"
    fletchings = true
  elsif item == "Broad head"
    arrowhead = true
  end
end

if arrowhead == true and fletchings == true and shaft == true and piece1 == true and piece2 == true and string == true
  Dir.chdir("Create")
  f = File.open("create.txt", "r")
  puts f.read
  require "./create.rb"
else
  Dir.chdir("Can't create")
  f = File.open("cantCreate.txt", "r")
  puts f.read
end