defmodule Cheval.PageView do
  use Cheval.Web, :view

  def services, do: [
    "Producción de eventos",
    "Desarrollo de software a la medida",
    "Soluciones de hardware",
    "Shared-economy engine",
    "Diseño web",
    "Desarrollo móvil",
    "UI/UX",
    "Chatbots"
  ]

  def budgets, do: [
    "< $30,000",
    "$30,000 - $50,000",
    "$50,000 - $150,000",
    "$150,000 - $300,000",
    "> $300,000"
  ]

end
