json.array!(@users) do |user|
  json.extract! user, :id, :username, :email, :confirmation_token, :confirmation_sent_at, :confirmed_at, :unconfirmed_email, :locked, :deleted, :blacklisted, :language
  json.url user_url(user, format: :json)
end
