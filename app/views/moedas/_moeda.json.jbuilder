json.extract! moeda, :id, :nome, :sigla, :imagem, :created_at, :updated_at
json.url moeda_url(moeda, format: :json)
