class SalesController < ApplicationController
	 attr_accessor :total
		def new
			@sale = Sale.new
		end

		def create
  			@sale = Sale.new(sale_params)			

  			if @sale.save
    			flash[:notice] = "A venda foi salva com sucesso!"
		  	 	redirect_to @sale
		  	else
		  		render 'new'
		  	end
		end

		def show

			@sale = Sale.find(params[:id])
				
		end

		def index
  			@sales = Sale.all
		end

		def edit
			@sale = Sale.find(params[:id])
		end

		def update
			@sale = Sale.find(params[:id])

			if @sale.update(sale_params)
    			flash[:notice] = "A venda foi salva com sucesso!"
				redirect_to @sale
			else
			    render 'edit'
			end
		end

		def destroy
			@sale = Sale.find(params[:id])
			@sale.destroy
    		flash[:notice] = "A venda foi excluída com sucesso!"

  			redirect_to sales_path
		end

		private 
			def sale_params
				params.require(:sale).permit(:customer, :item, :value, :quantity, :address, :salesperson)
			end
end
