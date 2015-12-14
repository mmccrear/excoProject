json.array!(@instances) do |instance|
  json.extract! instance, :id, :year, :semester, :location, :time, :section
  json.url instance_url(instance, format: :json)
end
