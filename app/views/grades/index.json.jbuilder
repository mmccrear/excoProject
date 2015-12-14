json.array!(@grades) do |grade|
  json.extract! grade, :id, :orientation, :exco_fair, :agreement, :midterm_eval, :auditing, :final_eval, :final_paper
  json.url grade_url(grade, format: :json)
end
