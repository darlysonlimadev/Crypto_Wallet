# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin

puts "Cadastrando Moedas....."

coins = [
    {
        nome: "Bitcoin",
        sigla: "BTC",
        imagem: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png"
    },

    {
        nome: "Ethereum",
        sigla: "ETH",
        imagem: "https://w7.pngwing.com/pngs/368/176/png-transparent-ethereum-cryptocurrency-blockchain-bitcoin-logo-bitcoin-angle-triangle-logo-thumbnail.png"
    },   

    {
        nome: "Dash",
        sigla: "DASH",
        imagem: "https://cryptologos.cc/logos/dash-dash-logo.png"
    }
]

coins.each do |coin|
    Moeda.find_or_create_by!(coin)
end

puts "Cadastro Finalizado!"









