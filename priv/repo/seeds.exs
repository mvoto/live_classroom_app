# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LiveClassroomApp.Repo.insert!(%LiveClassroomApp.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias LiveClassroomApp.Thinkific.AdminApi
alias LiveClassroomApp.Repo
alias LiveClassroomApp.ChatRoom

courses = AdminApi.courses

for c <- courses do
  image_url = if String.starts_with?(c["course_card_image_url"], "/assets/") do
    "https://assets.thinkific.com/assets/defaults/default-product-card.png"
  else
    c["course_card_image_url"]
  end

  url = "http://localhost:4000/#{c["slug"]}"
  attrs = %{course_id: c["id"], name: c["name"], slug: c["slug"], course_image_url: image_url, url: url}

  %ChatRoom{}
  |> ChatRoom.changeset(attrs)
  |> Repo.insert()
end
