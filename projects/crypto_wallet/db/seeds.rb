# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

################################
# SEEDS
# Arquivo para popular e preencher os dados iniciais da aplicação - banco de dados

puts "[SEED] Cadastrando moedas..."

# create! -> Caso ocorra um erro na criação, o ! possibilita ser mostrado, pois senão não vai ser mostrado nada
Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://logos-world.net/wp-content/uploads/2020/08/Bitcoin-Emblem.png"
)

Coin.create!(
  description: "Ethereum",
  acronym: "ETH",
  url_image: "https://logosmarcas.net/wp-content/uploads/2020/12/Ethereum-Logo.png"
)

Coin.create!(
  description: "Dash",
  acronym: "DASH",
  url_image: "https://cryptologos.cc/logos/dash-dash-logo.png"
)


puts "[SEED] Moedas cadastradas com sucess"