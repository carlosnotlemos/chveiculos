class Project < ApplicationRecord
  #Validação feita para não passar nenhum valor nulo antes de salvar!
  validates :language, presence: true
  validates :description, presence: true
  validates :image_url, presence: true
  validates :date_p, presence: true
end
