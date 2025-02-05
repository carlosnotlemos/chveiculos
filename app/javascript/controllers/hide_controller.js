import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebarContainer", "content", "form",
    "formProjetos", "formFormacoes"]

  connect() {
    console.log("🚀 Hide Controller carregado!")
    this.showProjetos()
  }
  
  toggleSidebar() {  
    setTimeout(() => {
      this.sidebarContainerTarget.classList.toggle("collapsed")
    }, 10)  // Pequeno atraso de 10ms
  }

  showForm() {
    console.log("📝 Exibindo formulário!")
    this.formTarget.classList.remove("hidden")
  }

  // Função para mostrar o formulário de Projetos
  showProjetos() {
    this.hideAllForms(); // Esconde todos os formulários
    this.formProjetosTarget.style.display = "block"; // Exibe o formulário de Projetos
  }

  // Função para mostrar o formulário de Formações
  showFormacoes() {
    this.hideAllForms(); // Esconde todos os formulários
    this.formFormacoesTarget.style.display = "block"; // Exibe o formulário de Formações
  }

  // Função para esconder todos os formulários
  hideAllForms() {
    this.formProjetosTarget.style.display = "none";
    this.formFormacoesTarget.style.display = "none";
  }
}
