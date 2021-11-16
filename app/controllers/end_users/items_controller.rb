class EndUsers::ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @item_comment = Comment.new
  end
end
