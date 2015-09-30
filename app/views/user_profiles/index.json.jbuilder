json.array!(@user_informations) do |user_information|
  json.extract! user_information, :id, :user_id, :gender, :fname, :lname, :mobile, :photo, :addresses, :city, :region, :zipcode, :country, :failed_attempts, :created_by
  json.url user_information_url(user_information, format: :json)
end
