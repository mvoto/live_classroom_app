defmodule LiveClassroomApp.ChatRoom do
  use Ecto.Schema
  import Ecto.Changeset

  schema "chat_rooms" do
    field :course_id, :integer
    field :name, :string
    field :slug, :string
    field :course_image_url, :string
    field :url, :string

    timestamps()
  end

  @doc false
  def changeset(chat_room, attrs) do
    chat_room
    |> cast(attrs, [:slug, :name, :course_id, :course_image_url, :url])
    |> validate_required([:slug, :name, :course_id, :course_image_url, :url])
  end
end
