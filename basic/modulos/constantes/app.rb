# Carrega em memoria
require_relative "pagamento"

# Necessario incluir qual modulo do arquivo é requisitado -> Pode ter varios modulos no arquivo 
include Pagamento

puts Pagamento::PI
puts PI