class Admins::ItemsController < ApplicationController
  def index
    @items = Item.all
    @genres = Genre.all
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.new(item_params)
    if item.save
      tags = Vision.get_image_data(item.image)
      tags.each do |tag|
        item.tags.create(name: tag)
      end
      redirect_to admins_item_path(item.id)
    else
      @item = Item.new
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to admins_item_path(item.id)
    else
      @item = Item.find(params[:id])
      render :edit
    end
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :item_spec, :genre_id, :price)
  end

end
