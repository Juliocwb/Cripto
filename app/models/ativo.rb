class Ativo < ApplicationRecord
    before_create :media
    def media
      self.media = self.qtd.to_f*self.valor.to_f
    end 

    def Total
    end
end