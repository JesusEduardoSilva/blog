class Produto < ActiveRecord::Base	
	has_attached_file :cover, styles:  { medium: "300x300>", thumb: "100x100>" }, default_url: ""
	validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
	has_many :avaliacaos
	validates_presence_of :cover, :titulo 
end
