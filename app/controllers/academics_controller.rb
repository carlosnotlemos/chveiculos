class AcademicsController < ApplicationController
  def index
    if Academic.all.blank?
      Academic.create([{title: "Tecnólogo Superior em Ciência de Dados", description: "Gran Faculdade", due_date: "2025-12-24 00:00:00.000000000 +0000", active: false},
                      {title: "Análise e Ciência de Dados Pleno", description: "Plataforma Udemy", due_date: "2025-03-31 23:00:00.000000000 +0000", active: false},
                      {title: "Python 3 Básico", description: "Plataforma Udemy", due_date: "2025-01-15 00:10:00.000000000 +0000", active: true},
                      {title: "Ruby on Rails 5.x do início ao fim!", description: "Plataforma Udemy", due_date: "2025-04-16 00:00:00.000000000 +0000", active: false},
                      {title: "Programador Jr - C#", description: "Profissionalizante SENAP", due_date: "2015-02-26 00:00:00.000000000 +0000", active: true}])
    end

    @formacoes = Academic.order(active: :desc, due_date: :desc)
  end
end
