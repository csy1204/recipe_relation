json.extract! recipe, :id, :name, :time, :scrap, :url, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
