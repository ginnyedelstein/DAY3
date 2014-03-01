json.array!(@spacecats) do |spacecat|
  json.extract! spacecat, :id, :name, :personality, :planets_visited
  json.url spacecat_url(spacecat, format: :json)
end
