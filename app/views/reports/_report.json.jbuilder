json.extract! report, :id, :label, :descrption, :visible, :created_at, :updated_at
json.url report_url(report, format: :json)
