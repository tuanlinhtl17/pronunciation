# frozen_string_literal: true

class UserLessonsController < ApplicationController
  before_action :user_authenticated?

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
    redirect_to root_path
  end
end
