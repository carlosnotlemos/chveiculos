class Admin::DashboardController < ApplicationController
  before_action :authenticate_user!
  def index
    @projetos = [ { id: 1, name: "nome", description: "testsetset" },
                { id: 12, name: "nome", description: "testsetsetsetsetsetssetse" },
                { id: 13, name: "nome", description: "testsetsetsetsetsetsetseetsetse" }
  ]

    @formacoes = [ { id: 2, name: "formaco", description: "tsetsetsetsetset" },
                  { id: 25, name: "formaco", description: "tsetsetsetsetset" },
                  { id: 61, name: "formaco", description: "tsetsetsetsetset" }
    ]
  end
end
