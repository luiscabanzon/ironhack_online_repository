class LaptopsController < ApplicationController
	def index
		@laptops = Laptop.all
	end

	def show
		@laptop = Laptop.find(params[:id])
	end

	def new
		@laptop = Laptop.new
	end

	def edit
		@laptop = Laptop.find(params[:id])
	end

	def create
		@laptop = Laptop.new(laptop_params)
		@laptop.save
		redirect_to laptop_path(@laptop)
	end

	def update
		@laptop = Laptop.find(params[:id])
		@laptop.update(laptop_params)
		redirect_to laptops_path
	end

	def destroy
		@laptop = Laptop.find(params[:id])
		@laptop.destroy

		redirect_to laptops #?
	end


	 #PRIVATE PARAMS
	 private
	 def laptop_params
	 	params.require(:laptop).permit(:brand, :model, :processor_brand, :RAM, :price,:image)
	 end

end
