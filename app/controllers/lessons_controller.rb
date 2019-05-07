# frozen_string_literal: true

class LessonsController < ApplicationController
  def show
    store_location
    @lesson = Lesson.find_by id: params[:id]
    @user_lesson = UserLesson.find_by lesson_id: @lesson.id
    @comments = @lesson.comments
    @comment = Comment.new
    gon.lesson_id = @lesson.id
  end
end
