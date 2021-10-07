defmodule LiveClassroomAppWeb.PageController do
  use LiveClassroomAppWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
