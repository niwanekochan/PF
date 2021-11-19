class EndUsers::ItemsController < ApplicationController
  def index
    @items = Item.all
    @genres = Genre.all
  end

  def show
    @item = Item.find(params[:id])
    @item_comment = Comment.new
  end

  def search
    @items = Item.search(params[:keyword])
    @keyword = params[:keyword]
    render :index
  end
end
