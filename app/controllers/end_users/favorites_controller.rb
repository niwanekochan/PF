class EndUsers::FavoritesController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    favorite = current_user.favorites.new(item_id: @item.id)
    favorite.save
    #redirect_to end_users_item_path(item.id)
  end

  def destroy
    @item = Item.find(params[:item_id])
    favorite = current_user.favorites.find_by(item_id: @item.id)
    favorite.destroy
    @favorite_items = Item.where(id: current_user.favorites.pluck('item_id'))
    #redirect_to end_users_item_path(item.id)
  end
end
