json.array!(@application_renewals) do |application_renewal|
  json.extract! application_renewal, :id, :name, :semester, :year, :credits, :capactiy, :problems, :changes, :engagement
  json.url application_renewal_url(application_renewal, format: :json)
end
