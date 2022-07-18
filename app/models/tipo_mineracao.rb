class TipoMineracao < ApplicationRecord
    has_many :moedas

    validates_presence_of :nome, message: 'não pode ser deixado em branco'
    validates_presence_of :sigla, message: 'não pode ser deixado em branco'

end
