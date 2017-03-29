json.extract! volunteer, :id, :fname, :lname, :email, :phone, :current_title, :current_project, :bio, :topics_of_expertise, :location, :travel_distance, :agreed_to_tos, :created_at, :updated_at
json.url volunteer_url(volunteer, format: :json)
