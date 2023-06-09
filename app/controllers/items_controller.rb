class ItemsController < ApplicationController

def index
   @items = Item.all

   
end

def new
  @item = Item.new
end



def create
  @item = Item.new(item_params)

  if @item.save

    redirect_to root_path

  else
    render :new

  end
  
end

def show
  @item = Item.find(params[:id])
end

def edit
  @item = Item.find(params[:id])
end

private

def item_params
  params.require(:item).permit(:description, :recipes, :image).merge(user_id: current_user.id)
end





end
