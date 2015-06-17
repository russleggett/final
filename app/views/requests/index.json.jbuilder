json.array!(@requests) do |request|
  json.extract! request, :id, :created_by, :required_by, :justification, :first_approver_id, :submitted, :final_approval
  json.url request_url(request, format: :json)
end
