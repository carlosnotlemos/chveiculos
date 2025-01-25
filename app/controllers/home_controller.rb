class HomeController < ApplicationController
  def index
    @cards = [
      { cardicon: "devicon-ruby-plain", cardtitle: "Ruby", carddesc: "Utilizado para front e back end. 41%" },
      { cardicon: "devicon-html5-plain", cardtitle: "Html", carddesc: "Criação das páginas de forma dinámica. 45%" },
      { cardicon: "devicon-css3-plain", cardtitle: "CSS", carddesc: "Estilização das páginas junto com Hotwire. 12%" },
      { cardicon: "devicon-docker-plain", cardtitle: "Docker", carddesc: "Virtualização do sistema para minimizar erros. 2%" }
    ]
  end
end
