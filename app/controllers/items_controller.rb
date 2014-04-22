class ItemsController < ApplicationController

#GET '/items'
	def index
		@items = Item.all
		#redirect_to items_path does not work, but nothing works
	end

#GET '/items/new'
	def new
		@new_item = Item.new
		#redirect_to new_item_path
	end

#POST '/items/new'
	def create
		@new_item = Item.new(items_params)
		if @new_item.save
			redirect_to items_path
		end
	end
#GET '/items/:id/edit'
	def edit
		@updated_item = Item.find(params[:id])
		#redirect_to edit_item_path
	end

#PUT '/items/:id/edit'
	def update
		@updated_item = Item.find(params[:id])
		if @updated_item.update_attributes(items_params)
			#redirect_to item_path
		end
	end
#PUT 'items/:id/sold'
	def update_status
		@updated_status = Item.find(parmas[:id])
		@updated_status.status(false)
		@updated_status.save
	end

#DESTROY 'items/:id'
	def delete
		@deleted_item = Item.find(params[:id])
		@deleted_item.delete
	end

	private

	def items_params
		params.require(:items).permit(:title,:description,:condition,:price)
	end

end
