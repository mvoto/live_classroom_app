defmodule LiveClassroomApp.Thinkific.AdminApi do

  defp base_url do
    "https://api.thinkific-staging.com/api/public/v1"
  end

  defp headers do
    ["X-Auth-Subdomain": "mauricio-s-school", "X-Auth-API-Key": "fe0607c8befbd7421cf7ea7316e04dc9" , "Accept": "Application/json"]
  end

  def courses do
    {:ok, response} = HTTPoison.get("#{base_url()}/courses", headers(), [])
    result = Poison.decode!(response.body)
    result["items"]
  end
end
