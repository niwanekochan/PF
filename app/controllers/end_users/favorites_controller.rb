class EndUsers::FavoritesController < ApplicationController
  def index
    user = current_user
    @item = Item.find_by(item_id: @item.id)
    @favorites = Favorite.where(user_id: user.id).all
  end

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
    #redirect_to end_users_item_path(item.id)
  end
end
