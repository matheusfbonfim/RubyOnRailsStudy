require_relative ("pagamento")

include Pagamento

# Instanciando um objeto da classe Visa atraves do modulo
# Visa é uma classe que está dentro do modulo
p = Pagamento::Visa.new
puts p.pagando