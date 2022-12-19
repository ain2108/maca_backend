defmodule MacaBackendWeb.ResourcesController do
  use MacaBackendWeb, :controller

  def index(conn, %{"category" => category}) do
    resources = [
      %{title: "Disco Elysium", category: "Games"},
      %{title: "Salka Valka", category: "Books"},
      %{title: "Independent People", category: "Books"},
      %{title: "Train to Busan", category: "Films"},
      %{title: "Triangle of Sadness", category: "Films"},
      %{title: "The Worst Person in the World", category: "Films"},
      %{title: "Children of Nature", category: "Films"},
      %{title: "Shrek", category: "Films"},
      %{
        title:
          "https://blog.isquaredsoftware.com/2020/05/blogged-answers-a-mostly-complete-guide-to-react-rendering-behavior/",
        category: "ReactLinks"
      }
    ]

    res = Enum.filter(resources, fn r -> r[:category] == category end)

    json(conn, res)
  end
end
