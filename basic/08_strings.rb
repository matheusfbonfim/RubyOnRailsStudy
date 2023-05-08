#################################
# ASPAS SIMPLES E DUPLAS

x = "Matheus"
y = 'Marcela'

puts x 
puts x.class
puts y
puts y.class

puts "#################################"
# CONCATENANDO
a = 'Curso'
b = "Rails"

puts a + b
puts a << b  # Pega o valor de 'b' e joga dentro de 'a' -> Modifica o a

puts "#################################"
# Ao concatenar com + é criado um novo objeto em memória 
x = "curso"
puts x
puts x.object_id

x = x + "rails"
puts x 
puts x.object_id

puts "#################################"
# INTERPOLAÇÃO
y = "Jackson"
puts "Seu nome é #{y}"