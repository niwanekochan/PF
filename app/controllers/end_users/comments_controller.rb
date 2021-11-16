class EndUsers::CommentsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.item_id = item.id
    comment.save
    redirect_to end_users_item_path(item.id)
  end

  def destroy
    Comment.find_by(id: params[:id]).destroy
    redirect_to end_users_item_path(params[:item_id])
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end
end
