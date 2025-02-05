import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebarContainer", "formProjetos",
     "formFormacoes", "tabela", "tabelaf"]

  connect() {
    this.show(localStorage.getItem("activeTab") || "projetos")
  }
/*
  // Função para mostrar/ocultar barra lateral 
  toggleSidebar() {  
    setTimeout(() => {
      this.sidebarContainerTarget.classList.toggle("collapsed")
    }, 10)  // Pequeno atraso de 10ms
  }
  // Função para mostrar/ocultar tabela de projetos
  toggleTabela() {
    this.tabelaTarget.classList.toggle("hidden")
  }

  // Função para mostrar/ocultar tabela de formacoes
  toggleTabelaf() {
    this.tabelafTarget.classList.toggle("hidden")
  }

  // Função para mostrar o formulário de Projetos
  showProjetos() {
    this.tabelafTarget.style.display = "none"
    this.hideAllForms() // Esconde todos os formulários
    this.formProjetosTarget.style.display = "block" // Exibe o formulário de Projetos
  }

  // Função para mostrar o formulário de Formações
  showFormacoes() {
    this.tabelaTarget.style.display = "none"
    this.hideAllForms() // Esconde todos os formulários
    this.formFormacoesTarget.style.display = "block" // Exibe o formulário de Formações
  }

  // Função para esconder todos os formulários
  hideAllForms() {
    this.formProjetosTarget.style.display = "none"
    this.formFormacoesTarget.style.display = "none"
  }*/
  toggleSidebar() {  
    setTimeout(() => {
      this.sidebarContainerTarget.classList.toggle("collapsed")
    }, 10)  // Pequeno atraso de 10ms
  }

  toggleTabela() {
    this.tabelaTarget.classList.toggle("hidden")
  }

  toggleTabelaf() {
    this.tabelafTarget.classList.toggle("hidden")
  }

  show(event) {
    const tab = typeof event === "string" ? event : event.params.tab
    this.formProjetosTarget.style.display = tab === "projetos" ? "block" : "none"
    this.formFormacoesTarget.style.display = tab === "formacoes" ? "block" : "none"
    localStorage.setItem("activeTab", tab)
  }
}
