json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :id, :user_id, :gender, :fname, :lname, :mobile, :photo, :addresses, :city, :region, :zipcode, :country, :failed_attempts, :created_by
  json.url user_profile_url(user_profile, format: :json)
end
