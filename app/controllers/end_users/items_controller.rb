class EndUsers::ItemsController < ApplicationController
  before_action :authenticate_user!, only: [:favorite_index, :show]

  def favorite_index
    @favorite_items =  Item.where(id: current_user.favorites.pluck('item_id'))
  end

  def index
    @items = Item.all
    @genres = Genre.all
  end

  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
    @item_comment = Comment.new
    @all_ranks = Item.find(Favorite.group(:item_id).order('count(item_id) desc').limit(3).pluck(:item_id))
  end

  def search
    @items = Item.search(params[:keyword])
    @keyword = params[:keyword]
    @genres = Genre.all
    render :index
  end
end
