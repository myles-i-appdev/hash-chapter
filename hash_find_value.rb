# Write a program that:
#   Asks the user for an Integer, then checks to see if that integer is
#   a value of any of the keys in sample_hash.
#   If you find the number, print out "100 is under the key: a."
#   If you don't find the number print out "Could not find the integer 100"

sample_hash = {:a => 100, :b => 200, :c => 300, :d => 400, :e => rand(200), :f => 600, :g => 0 }

p "Enter an integer to find:"
input_int = gets.chomp.to_i

found_int = false
sample_hash.keys.each do |key_symbol|
    if sample_hash.fetch(key_symbol) == input_int
        p input_int.to_s + " is under the key: " + key_symbol.to_s + "."
        found_int = true
    end
end

if !found_int
    p "Could not find the integer " + input_int.to_s
end

