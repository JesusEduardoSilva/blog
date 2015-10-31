class Avaliacao < ActiveRecord::Base
	  belongs_to :usuario
      belongs_to :produto
end
