# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_lessons
  has_many :likes, dependent: :destroy
  has_many :like_lessons, through: :likes, class_name: 'Lesson', source: :lesson

  def like(lesson, _user)
    return unless lesson

    like_lessons << lesson
  end

  def unlike(lesson)
    return unless lesson

    like_lessons.delete lesson
  end

  def liking?(lesson)
    return unless lesson

    like_lessons.include? lesson
  end
end
