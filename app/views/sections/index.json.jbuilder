json.array!(@sections) do |section|
  json.extract! section, :id, :course_id, :professor_id, :number, :location, :classTime
  json.url section_url(section, format: :json)
end
