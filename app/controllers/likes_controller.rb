# frozen_string_literal: true

class LikesController < ApplicationController
  before_action :user_authenticated?

  def create
    @lesson = Lesson.find_by id: params[:book_id]
    current_user.like @lesson, current_user
    respond_to do |format|
      format.html { redirect_to @lesson }
      format.js
    end
  end

  def destroy
    @like = Like.find_by id: params[:id]
    @lesson = Lesson.find_by id: @like.lesson_id
    respond_to do |format|
      format.html { redirect_to @lesson }
      format.js
    end
    current_user.unlike @lesson
  end
end
