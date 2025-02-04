import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["sidebarContainer", "content", "form"]

  connect() {
    console.log("🚀 Hide Controller carregado!")
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

  hideForm() {
    console.log("❌ Ocultando formulário!")
    this.formTarget.classList.add("hidden")
  }
}
