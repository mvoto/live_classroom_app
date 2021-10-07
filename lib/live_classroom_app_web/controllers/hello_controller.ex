defmodule LiveClassroomAppWeb.HelloController do
  use LiveClassroomAppWeb, :controller

  def world(conn, %{"name" => name}) do
    render(conn, "world.html", name: name)
  end
end
