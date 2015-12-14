json.array!(@courses) do |course|
  json.extract! course, :id, :coursenum, :title, :description, :active
  json.url course_url(course, format: :json)
end
