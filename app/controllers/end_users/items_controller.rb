class EndUsers::ItemsController < ApplicationController

  def favorite_index

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
