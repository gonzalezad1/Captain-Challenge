json.extract! personnage, :id, :name, :exp, :life, :firstweapons, :secondweapons, :velocity, :created_at, :updated_at
json.url personnage_url(personnage, format: :json)
