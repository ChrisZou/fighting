json.array!(@fighting_records) do |fighting_record|
  json.extract! fighting_record, :id, :dt, :notes, :Fighting
  json.url fighting_record_url(fighting_record, format: :json)
end
