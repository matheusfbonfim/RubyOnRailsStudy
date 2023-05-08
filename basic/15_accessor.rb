class Pessoa
  # Atributo declarado como attr_accessor -> Getters e setters automaticos
  attr_accessor :nome

  # def initialize(nome = "teste")
  #   @nome = nome
  # end 

  # def nome(nome)
  #     @nome = nome
  # end 

  # def nome
  #   @nome
  # end 
end

p1 = Pessoa.new
p1.nome = "Jackson" # Setter
puts p1.nome # Getter

p1.nome = "Matheus" # Setter
puts p1.nome # Getter