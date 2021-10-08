defmodule LiveClassroomApp.Repo.Migrations.CreateChatRooms do
  use Ecto.Migration

  def change do
    create table(:chat_rooms) do
      add :name, :string
      add :slug, :string
      add :course_image_url, :string
      add :course_id, :integer
      add :url, :string

      timestamps()
    end
  end
end
