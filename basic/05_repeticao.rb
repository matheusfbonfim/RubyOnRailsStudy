#########################################
# WHILE

i = 0
num = 5

while i <= num do
  puts "Contando... " + i.to_s
  i += 1
end

#########################################
# EACH

['A', 'B', 'C', 'D'].each do |i|
    puts "O valor lido foi: " + i.to_s
end 