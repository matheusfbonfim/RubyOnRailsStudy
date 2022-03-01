class Coin < ApplicationRecord
  # Pertence a 
  # A tabela de Coin vai conversar com outra tabela -> Mining Type
  # Id de uma tabela estrangeira na tabela de coin -> Pertence a mining type
  # Existe um id que relaciona com outra tabela
  belongs_to :mining_type
end
