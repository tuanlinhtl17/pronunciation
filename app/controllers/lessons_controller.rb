# frozen_string_literal: true

class LessonsController < ApplicationController
  def show
    @lesson = Lesson.find_by id: params[:id]
  end
end
