class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :lockable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, uniqueness: true
	validates :cpf, length: { is: 11 }
	validates_presence_of :nome, :cpf

	scope :por_nome, ->(nome) {
		where("nome LIKE ?", "%#{nome}%")
	}

end
