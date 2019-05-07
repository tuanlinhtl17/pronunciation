# frozen_string_literal: true

module ApplicationHelper
  include Pagy::Frontend

  def categories
    Category.all
  end

  def top_users
    User.all.order('point DESC').limit(10)
  end
end
