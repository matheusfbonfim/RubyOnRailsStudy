class MiningType < ApplicationRecord
  # MiningType possui muitas moedas ligadas em coins
  # No entanto na tabela Mining type não existe ligação com coins, como por exemplo alguma coluna
  # É possivel ligar a Mining Type e saber seu uso dentro de coins
  # Na teoria temos MUITOS tipos de mineração dentro da tabela coins -> Se liga a muitas moedas
  # Vai na tabela MiningType e procura na tabela Coin o mining_type_id para fazer a associação inversa
  has_many :coins

  # Pertence a tabela que faz referencia a outra
end
