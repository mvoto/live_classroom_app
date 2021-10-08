defmodule LiveClassroomAppWeb.ChatRoomController do
  use LiveClassroomAppWeb, :controller

  alias LiveClassroomApp.Repo
  alias LiveClassroomApp.ChatRoom

  def index(conn, _params) do
    chat_rooms = Repo.all(ChatRoom)
    render(conn, "index.html", chat_rooms: chat_rooms)
  end
end
