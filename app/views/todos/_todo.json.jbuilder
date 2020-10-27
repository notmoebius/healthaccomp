json.extract! todo, :id, :label, :action_desc, :created_at, :updated_at
json.url todo_url(todo, format: :json)
