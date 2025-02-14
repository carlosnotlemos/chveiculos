class ProjectsController  < ApplicationController
  def index
    @projetos = Project.order(date_p: :asc).limit(3)
  end
end
