class Post < ApplicationRecord
  enum status: { submitted: 0, approved: 1, rejected: 2 }
  belongs_to :user, optional: true
  validates_presence_of :date, :work_performed

  validates :daily_hours, numericality: { greater_than: 0.0 }

  scope :posts_by, ->(user) { where(user_id: user.id) }
  scope :posts_by_starting_at, ->(user, index) { where(["user_id = ? and id > ?", user, index]) }

  after_save :confirm_audit_log, if: :submitted?
  after_save :un_confirm_audit_log, if: :rejected?

  private

  def confirm_audit_log
    audit_log = AuditLog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
    audit_log.confirmed! if audit_log
  end

  def un_confirm_audit_log
    audit_log = AuditLog.where(user_id: self.user_id, start_date: (self.date - 7.days..self.date)).last
    audit_log.pending! if audit_log
  end

  # after_initialize :set_defaults

  # private
  #
  # def set_defaults
  #   self.status = 'submitted' if self.new_record?
  # end
end
