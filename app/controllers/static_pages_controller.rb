# frozen_string_literal: true

class StaticPagesController < ApplicationController
  def home
    @pagy, @lessons = pagy Lesson.all.order(level: :asc), items: 10
  end
end
