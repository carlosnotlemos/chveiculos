class AcademicsController < ApplicationController
  def index
    # Código importante para get no banco de dados!
    @formacoes = Academic.order(active: :desc, due_date: :desc)
  end
end
