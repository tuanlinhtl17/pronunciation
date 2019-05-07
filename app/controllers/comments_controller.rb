# frozen_string_literal: true

class CommentsController < ApplicationController
  before_action :correct_user, only: %i[edit update]

  def create
    @lesson = Lesson.find(params[:comment][:lesson_id])
    if logged_in?
      @comment = @lesson.comments.create comment_params
      @comment.user_id = current_user.id
      if @comment.save
        respond_to do |format|
          format.html { redirect_to @lesson }
          format.js
        end
      else
        flash.now[:danger] = 'Error'
        redirect_to @lesson
      end
    else
      flash[:danger] = 'You must log in first'
      redirect_to @lesson
    end
  end

  def edit
    @comment = Comment.find_by id: params[:id]
    @lesson = @comment.lesson
    respond_to do |format|
      format.js
    end
  end

  def update
    @comment = Comment.find_by id: params[:id]
    if @comment.update_attributes(comment_params)
      respond_to do |format|
        format.js
      end
    else
      flash[:danger] = 'Cannot edit comment'
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @comment_id = params[:id]
    Comment.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.js
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :lesson_id).merge(user_id: current_user.id)
  end

  def correct_user
    @user = User.find_by id: current_user.id
    @comment = Comment.find_by id: params[:id]
    redirect_to root_url unless (@comment.user_id == current_user.id) || is_admin?
  end
end
