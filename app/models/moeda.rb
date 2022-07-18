class Moeda < ApplicationRecord
    belongs_to :tipo_mineracao #, optional: true


    validates_presence_of :nome, message: 'não pode ser deixado em branco'
    validates_presence_of :sigla, message: 'não pode ser deixado em branco'
    validates_presence_of :imagem, message: 'não pode ser deixado em branco'

end
