json.array!(@approvals) do |approval|
  json.extract! approval, :id, :order_id, :approver_id, :approved, :comments, :created_at
  json.url approval_url(approval, format: :json)
end
