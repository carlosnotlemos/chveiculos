class ProjectsController  < ApplicationController
  def index
    if Project.all.blank?
      Project.create({language: "Ruby | Rails",
                         description: "Primeiro projeto desenvolvido em ruby com framework em Rails.",
                         image_url: "https://i.postimg.cc/wBkn5RpL/testecard.png" })
    end
    @projetos = Project.order(date_p: :asc).limit(3)
  end
end
