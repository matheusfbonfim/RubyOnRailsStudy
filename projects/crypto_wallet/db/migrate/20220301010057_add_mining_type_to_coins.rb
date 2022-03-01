class AddMiningTypeToCoins < ActiveRecord::Migration[7.0]
  def change
    # Adiciona uma referencia na tabela coin - Nome da tabela que vai ficar o campo
    # Campo mining type -> Nome do campo a ser adicionado
    # Chave estrangeira -> Por convenção o Rails vai procurar um nome de tabela "Mining Types" e faz a referência
    # Tudo isso devido a padronização do nome
    add_reference :coins, :mining_type, foreign_key: true
  end
end
