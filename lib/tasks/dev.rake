namespace :dev do
  desc "Configura ambiente de Desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      puts %x(rails db:drop db:create db:migrate dev:add_mineracao dev:add_coins)
    else
      puts"Você não está em ambiente de desenvolvimento"
    end
  end

  desc "Cadastra Moedas"
  task add_coins: :environment do

    puts "Cadastrando Moedas!"

    coins = [
    {
        nome: "Bitcoin",
        sigla: "BTC",
        imagem: "https://imagensemoldes.com.br/wp-content/uploads/2020/09/Logo-Bitcoin-PNG.png",
        tipo_mineracao: TipoMineracao.find_by(sigla: "PoW")
    },

    {
        nome: "Ethereum",
        sigla: "ETH",
        imagem: "https://w7.pngwing.com/pngs/368/176/png-transparent-ethereum-cryptocurrency-blockchain-bitcoin-logo-bitcoin-angle-triangle-logo-thumbnail.png",
        tipo_mineracao: TipoMineracao.all.sample
    },   

    {
        nome: "Dash",
        sigla: "DASH",
        imagem: "https://cryptologos.cc/logos/dash-dash-logo.png",
        tipo_mineracao: TipoMineracao.all.sample
    }
]

coins.each do |coin|
    Moeda.find_or_create_by!(coin)
  end
  puts "Cadastro Finalizado!"
 end


 desc "Cadastra Tipos de Mineração"
 task add_mineracao: :environment do
 
   puts "Cadastrando Minerações!"
 
   tipos_mineracao = [
     {
         nome: "Proof of Work",
         sigla: "PoW"
     },
 
     {
         nome: "Proof of Stake",
         sigla: "PoS"
     },
 
     {
         nome: "Proof of Capacity",
         sigla: "PoC"
     }
 
   ]
 
     tipos_mineracao.each do |mineracao|
       TipoMineracao.find_or_create_by!(mineracao)
     end
     puts "Cadastro Finalizado!"
    end


end


  





