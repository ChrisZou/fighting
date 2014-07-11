json.array!(@fightings) do |fighting|
  json.extract! fighting, :id, :name
  json.url fighting_url(fighting, format: :json)
end
