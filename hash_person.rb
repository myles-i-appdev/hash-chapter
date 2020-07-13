# Ask for a name, age, and occupation; store the values in a Hash; display the Hash.
p "Enter a name, age, and occupation separated by spaces:"
data =gets.chomp.split
p f ={:name=>data[0], :age=>data[1].to_i, :occupation =>data[2]}
