class Pessoa
  # Construtor 
  def initialize(cont = 0)
      cont.times do |i|
          puts "Contando #{i}........"
      end 
      puts "Ta saindo da jaula o monstro........"
  end 

  # Não coloca a saida, a ultima saida é o retorno do método
  def falar(name = "Fulano", idade = 0)
    "Ola, #{name}, tu é top! Ta novinho em com #{idade} anos"
  end 

  def falar2(name = "Pessoal")
    "Ola, #{name}"
  end
end

p = Pessoa.new(5)
puts p.falar('Matheus', 22)
puts p.falar2('Raimundo')

p1 = Pessoa.new()
puts p.falar("Matheus")