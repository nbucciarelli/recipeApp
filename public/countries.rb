counter = 1
file = File.new("countries.txt", "r")
  while(line = file.gets.chomp)
    print "['#{line}'], "
    counter += 1
  end
file.close