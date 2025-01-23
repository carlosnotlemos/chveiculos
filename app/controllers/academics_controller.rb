class AcademicsController < ApplicationController
  def index
    # Código importante para get no banco de dados!
    @courses = [
      { title: "Tecnólogo Superior em Ciência de Dados", platform: "Gran Faculdade", date: "Previsão: 12/2025" },
      { title: "Análise e Ciência de Dados Pleno", platform: "Plataforma Udemy", date: "Previsão: 02/2025" },
      { title: "Python 3 Básico", platform: "Plataforma Udemy", date: "Concluído: 2025" },
      { title: "Ruby on Rails 5.x do início ao fim!", platform: "Plataforma Udemy", date: "Previsão: 03/2025" },
      { title: "Programador Jr - C#", platform: "Profissionalizante SENAP", date: "Concluído: 03/2015", extra: "Bonus: Banco de dados SQL - Básico / Lógica de Programação" }
    ]
  end
end
