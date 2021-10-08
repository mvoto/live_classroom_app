defmodule LiveClassroomApp.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :text, :string
    belongs_to :chat_room, LiveClassroomApp.ChatRoom

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:text])
    |> validate_required([:text])
  end
end
