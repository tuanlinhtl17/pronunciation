# frozen_string_literal: true

class UserLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  after_commit :update_user_score

  private

  def update_user_score
    user = User.find_by(id: user_id)
    old_point = user.point
    new_point = old_point + point
    user.update point: new_point
  end
end
