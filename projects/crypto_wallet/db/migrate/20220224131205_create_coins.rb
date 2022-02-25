class CreateCoins < ActiveRecord::Migration[7.0]
  # Mudança no banco de dados
  def change
    create_table :coins do |t|
      t.string :description
      t.string :acronym
      t.string :url_image

      t.timestamps
    end
  end
end