class SalesController < ApplicationController
	 attr_accessor :total
		def new
			
		end

		def create
  			@sale = Sale.new(sale_params)
  			@sale.save
  			redirect_to @sale
		end

		def show

			@sale = Sale.find(params[:id])
				
		end

		def index
  			@sales = Sale.all
		end

		private 
			def sale_params
				params.require(:sale).permit(:customer, :item, :value, :quantity, :address, :salesperson)
			end
end
