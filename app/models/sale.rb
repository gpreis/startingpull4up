class Sale < ActiveRecord::Base

	validates :customer, presence: true, length: { 
		minimum: 3, 
		too_short: "Nome do cliente muito curto, tente novamente inserindo o nome completo"}
	validates :item, presence: true, length: { 
		minimum: 3, 
		too_short: "Descrição do item muito curta" }
	validates :salesperson, presence: true, length: { 
		minimum: 3, 
		too_short: "Nome do vendedor muito curto, tente novamente inserindo o nome completo" }
	validates :address, presence: true, length: { 
		minimum: 3, 
		too_short: "Endereço muito curto" }

	validates :value, presence: true
	validates :quantity, presence: true, numericality: {only_integer: true}
	usar_como_dinheiro :value
	usar_como_dinheiro :finalvalue

end