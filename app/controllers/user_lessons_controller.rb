# frozen_string_literal: true

class UserLessonsController < ApplicationController
  before_action :user_authenticated?

  def index
    @pagy, @lessons = pagy Lesson.where(id: current_user.user_lessons.map(&:lesson_id)), limit: 10
  end

  def create
    user_lesson = UserLesson.new(
      lesson_id: params[:lesson_id],
      user_id: current_user.id,
      point: params[:total_point]
    )

    if user_lesson.save
      flash[:success] = 'Submit successfully'
    else
      flash[:danger] = 'Something wrong, please try again'
    end
    redirect_back_or root_path
  end
end
