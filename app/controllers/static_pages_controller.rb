# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @pagy, @lessons = pagy Lesson.all, items: 10
  end
end
