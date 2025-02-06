class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @projeto = Project.new  # Lista todos os projetos (padrão RESTful para index)
    @projetos = Project.all
  end

  def create
    @projeto = Project.new(projeto_params)
    if @projeto.save
      redirect_to admin_dashboard_index_path, notice: "Projeto criado com sucesso!"
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def projeto_params
    params.require(:project).permit(:language, :description, :image_url, :date_p)
  end
end
