print "Digite um numero: "
x = gets.chomp.to_i   # Converte para inteiro

# ===============================================
# Estrutura IF
if x > 2
  puts "O x é maior que dois sendo #{x}"
end

# ===============================================
# Estrutura unless (If invertido) -> A menos que 
unless x >= 2
  puts "x é menor que 2"
else
  puts "x é maior que 2"
end 

# ===============================================
# Case
print "Digite sua idade: "
idade = gets.chomp.to_i

case idade
when 0..2
  puts "bebê"
when 3..12
  puts "criança"
when 13..18
  puts "adolescente"
else
  puts "adulto"
end 

# ===============================================
# Condicional ternário
sexo = 'F'

sexo == 'M' ? (puts "Masculino") : (puts "Feminino") 