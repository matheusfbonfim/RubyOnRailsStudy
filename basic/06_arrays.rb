################################
# FORMA 01
v = [1,3,5,6,7,9]

v.each do |item|
    puts item
end

################################
# FORMA 02
v1 = Array.new
v1.push(4)
v1.push("Matheus")
v1.push(7)

puts "VETOR V1"
puts v1.size

v1.each do |item|
    puts item
end 

################################
# FORMA 03
v2 = []
puts "V1 é do tipo #{v1.class} e V2 é do tipo #{v2.class}"

v3 = [1,3,4]
v3[3] = 5

################################
# ARRAYS - DIVERSOS

puts "#####################"
v3.each do |item|
  puts item
end 

puts "#####################"
vector = [[1, 2, 3, 4],[5, 6, 7, 8],[9, 10, 11, 12]]

vector.each do |item|
  puts item
  puts 
end 