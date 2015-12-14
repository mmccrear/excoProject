json.array!(@instructor_apps) do |instructor_app|
  json.extract! instructor_app, :id, :course, :year, :semester, :tnumber, :status, :qualifications, :teaching_exp, :problems, :excos_taken, :exco_problems, :safe_space
  json.url instructor_app_url(instructor_app, format: :json)
end
