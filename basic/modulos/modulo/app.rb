require_relative "pagamento"

include Pagamento::Master

puts Pagamento::Master::pagando

p = Pagamento::Master::Teste.new
puts p.funcao