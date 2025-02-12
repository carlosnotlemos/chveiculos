class Academic < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :active, presence: true

  before_save :remover_space

  private

  def remover_space
    self.title = title.rstrip
    self.description = description.rstrip
  end
end
