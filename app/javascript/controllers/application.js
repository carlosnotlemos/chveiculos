import { Application } from "@hotwired/stimulus"
import { eagerLoadControllersFrom } from "@hotwired/stimulus-loading"

const application = Application.start()

// Configuração do Stimulus
application.debug = true
window.Stimulus = application

// Carrega automaticamente os controllers
eagerLoadControllersFrom("controllers", application)

export { application }