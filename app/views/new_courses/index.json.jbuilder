json.array!(@new_courses) do |new_course|
  json.extract! new_course, :id, :name, :semester, :year, :divison, :description, :why_exco, :evaluations, :credits, :hours_meet, :hours_outside, :capactiy, :signature
  json.url new_course_url(new_course, format: :json)
end
