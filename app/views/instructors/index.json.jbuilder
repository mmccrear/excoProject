json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :email, :name, :tnumber, :pronouns, :address, :phone
  json.url instructor_url(instructor, format: :json)
end
