# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    if params[:term]
      @pagy, @lessons = pagy Lesson.search_by_title(params[:term])
    elsif params[:category]
      @pagy, @lessons = pagy Category.find_by(id: params[:category]).lessons
    else
      @pagy, @lessons = pagy Lesson.all
    end
  end
end
