class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @projeto = params[:project_id] ? Project.find(params[:project_id]) : Project.new  # Se project_id estiver presente, carrega o projeto para editar.
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

  def edit
    @projeto = Project.find(params[:id])
    respond_to do |format|
      format.js  # Vai buscar o arquivo edit.js.erb
    end
  end

  def update
    @projeto = Project.find(params[:id])
    if @projeto.update(projeto_params)
      redirect_to admin_dashboard_index_path, notice: "Projeto atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @projeto = Project.find(params[:id])
    @projeto.destroy
    redirect_to admin_dashboard_index_path, notice: "Projeto excluído com sucesso!"
  end

  private

  def projeto_params
    params.require(:project).permit(:language, :description, :image_url, :date_p)
  end
end
