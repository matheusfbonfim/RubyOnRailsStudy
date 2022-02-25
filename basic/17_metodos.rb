class Pessoa
  # Métodos de instância -> Precisa instanciar
  def falar(name = "Fulano", idade = 0)
      "Ola, #{name}, tu é top! Ta novinho em com #{idade} anos"
  end 

  # Método de classe -> Não precisa instanciar
  def self.gritar(texto)
      "#{texto}!!!!"
  end
end

p1 = Pessoa.new
puts p1.falar

Pessoa.gritar("Hello")