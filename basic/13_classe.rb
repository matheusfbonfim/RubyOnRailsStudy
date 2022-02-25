class Pessoa
  # Construtor 
  def initialize(cont = 0)
      cont.times do |i|
          puts "Contando #{i}........"
      end 
      puts "Ta saindo da jaula o monstro........"
  end 

  def meu_id
      "Meu id é o #{self.object_id}"
  end

  # Não coloca a saida, a ultima saida é o retorno do método
  def falar(name = "Fulano", idade = 0)
      "Ola, #{name}, tu é top! Ta novinho em com #{idade} anos"
  end 
end

p1 = Pessoa.new
puts p1.meu_id
puts p1.meu_id

p2 = Pessoa.new
puts p2.meu_id
puts p2.meu_id