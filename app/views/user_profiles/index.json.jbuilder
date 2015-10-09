json.array!(@user_profiles) do |user_profile|
  json.extract! user_profile, :user_id, :gender, :fname, :lname, :mobile, :photo
  json.url user_profile_url(user_profile, format: :json)
end
