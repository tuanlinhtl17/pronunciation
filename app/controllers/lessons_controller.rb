# frozen_string_literal: true

class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find_by id: params[:id]
    @user_lesson = UserLesson.find_by lesson_id: @lesson.id
    gon.lesson_id = @lesson.id
  end
end
