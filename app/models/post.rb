class Post < ApplicationRecord
  enum status: { submitted: 0, approved: 1, rejected: 2 }
  belongs_to :user, optional: true
  validates_presence_of :date, :rationale

  scope :posts_by, ->(user) { where(user_id: user.id) }
  scope :posts_by_starting_at, ->(user, index) { where(["user_id = ? and id > ?", user, index]) }

  # after_initialize :set_defaults

  # private
  #
  # def set_defaults
  #   self.status = 'submitted' if self.new_record?
  # end
end
