class Project < ApplicationRecord
  # Validação feita para não passar nenhum valor nulo antes de salvar!
  validates :language, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :date_p, presence: true

  before_save :remover_space

  private

  def remover_space
    self.language = language.rstrip
    self.description = description.rstrip
    self.image_url = image_url.rstrip
  end
end
