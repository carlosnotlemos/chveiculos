class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @tab = params[:tab] ||= "projetos"

    @projeto = params[:project_id] ? Project.find(params[:project_id]) : Project.new  # Se project_id estiver presente, carrega o projeto para editar.
    @formacao = params[:academic_id] ? Academic.find(params[:academic_id]) : Academic.new # Se academic_id estiver presente, carrega o projeto para editar.

    @formacoes = Academic.all
    @projetos = Project.all
  end

  def create
    if params[:project].present? && params[:project][:formP] == "projeto"
      @projeto = Project.new(projeto_params)
      if @projeto.save
        redirect_to admin_dashboard_index_path, notice: "Projeto criado com sucesso!"
      else
        @formacoes = Academic.all
        @projetos = Project.all
        render :index, status: :unprocessable_entity
      end
    elsif params[:academic].present? && params[:academic][:formF] == "formacao"
      @formacao = Academic.new(formacao_params)
      if @formacao.save
        redirect_to admin_dashboard_index_path, notice: "Formação criada com sucesso!"
      else
        @formacoes = Academic.all
        @projetos = Project.all
        render :index, status: :unprocessable_entity
      end
    end
  end

  def update
    if params[:project].present? && params[:project][:formP] == "projeto"
      @projeto = Project.find(params[:id])
      if @projeto.update(projeto_params)
        redirect_to admin_dashboard_index_path, notice: "Projeto atualizado com sucesso!"
      else
        @formacoes = Academic.all
        @projetos = Project.all
        render :index, status: :unprocessable_entity
      end
    elsif params[:academic].present? && params[:academic][:formF] == "formacao"
      @formacao = Academic.find(params[:id])
      if @formacao.update(formacao_params)
        redirect_to admin_dashboard_index_path, notice: "Formação atualizada com sucesso!"
      else
        @formacoes = Academic.all
        @projetos = Project.all
        render :index, status: :unprocessable_entity
      end
    end
  end

  def destroy
    if params[:id].present?
      if Project.exists?(params[:id]) && params[:format] == "projeto"
        @projeto = Project.find(params[:id])
        @projeto.destroy
        redirect_to admin_dashboard_index_path
      elsif Academic.exists?(params[:id]) && params[:format] == "formacao"
        @formacao = Academic.find(params[:id])
        @formacao.destroy
        redirect_to admin_dashboard_index_path
      end
    else
      redirect_to admin_dashboard_index_path, alert: "ID não enviado."
    end
  end

  private

  def projeto_params
    params.require(:project).permit(:language, :description, :image_url, :date_p)
  end

  def formacao_params
    params.require(:academic).permit(:title, :description, :due_date, :active)
  end
end
