####################################################
puts "Digite seu nome:"

# Chomp -> Remove o \n inserido automaticamente com gets
nome = gets.chomp

puts "O nome da pessoa é #{nome}"
puts "####################################################"

puts "O tipo de nome é #{nome.class}"

# Consegue-se verificar todos os detalhes a variavel
puts "Com o inspect >> " + nome.inspect

puts "####################################################"

puts "Digite seu salario: "

# Scanf da entrada, remove o \n e transforma para float
sal = gets.chomp.to_f

puts "Seu salario é R$#{sal * 1.10}"
