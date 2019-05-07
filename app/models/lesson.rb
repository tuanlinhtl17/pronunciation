# frozen_string_literal: true

class Lesson < ApplicationRecord
  belongs_to :category
  has_many :user_lessons
  has_many :sentences
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy

  scope :search_by_title, lambda { |title|
    where 'title LIKE ?', "%#{title}%"
  }
end
