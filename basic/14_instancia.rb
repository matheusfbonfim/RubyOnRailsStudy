class Pessoa
  # Construtor 
  def initialize(nome_fornecido = "indigente")
      @nome = nome_fornecido
  end 

  def imprimir_nome
      @nome
  end

  # Não coloca a saida, a ultima saida é o retorno do método
  def falar(name = "Fulano", idade = 0)
      "Ola, #{name}, tu é top! Ta novinho em com #{idade} anos"
  end 
end


p1 = Pessoa.new
puts p1.imprimir_nome

p2 = Pessoa.new("Jackson")
puts p2.imprimir_nome