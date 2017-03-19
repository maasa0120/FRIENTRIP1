class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], frientrip_id: comment_params[:frientrip_id], user_id: current_user.id)
    redirect_to "/frientrips/#{@}"   #コメントと結びつくプランの詳細画面に遷移する
  end

 private
  def comment_params
    params.permit(:text, :frientrip_id)
  end

end
