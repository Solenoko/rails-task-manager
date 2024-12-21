class Task < ApplicationRecord
  validates :title, presence: true
  validates :completed, inclusion: { in: [true, false] }

  after_initialize :set_default_completed, if: :new_record?

  private

  def set_default_completed
    self.completed ||= false
  end
end
