class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  def new
    @comment = Comment.new
  end

  def create
    gram = Gram.find_by_id(params[:gram_id])
    return render_not_found if gram.blank?

    @comment = gram.comments.create(comment_params.merge(user: current_user))
    if @comment.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  
  def comment_params
    params.require(:comment).permit(:message)
  end

  def render_not_found(status = :not_found)
    render plain: "#{status.to_s.titleize} :(", status: status
  end
end
