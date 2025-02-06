import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebarContainer", "formProjetos",
     "formFormacoes", "tabela", "tabelaf"]

  connect() {
    //chama o controle de abas, se ñ tiver chama projetos
    this.show(localStorage.getItem("activeTab") || "projetos");
  }

  toggleSidebar() {  
    //timeout para não crashar a barra lateral
    setTimeout(() => {
      this.sidebarContainerTarget.classList.toggle("collapsed");
    }, 10);  // Pequeno atraso de 10ms
  }
  show(event) {
    //controle para identar abas
    const tab = typeof event === "string" ? event : event.params.tab;
    this.formProjetosTarget.style.display = tab === "projetos" ? "block" : "none";
    //this.formFormacoesTarget.style.display = tab === "formacoes" ? "block" : "none";
    localStorage.setItem("activeTab", tab);
    //controle para bloquear tabela
    this.tabelaTarget.style.display = tab === "projetos" ? "block" : "none";
    //this.tabelafTarget.style.display = tab === "formacoes" ? "block" : "none";

  }
}
