defmodule LiveClassroomApp.Repo.Migrations.CreateMessages do
  use Ecto.Migration

  def change do
    create table(:messages) do
      add :text, :text
      add :chat_room_id, references(:chat_rooms)

      timestamps()
    end

    create index(:messages, [:chat_room_id])
  end
end
