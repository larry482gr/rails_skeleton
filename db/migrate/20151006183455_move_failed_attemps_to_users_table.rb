class MoveFailedAttempsToUsersTable < ActiveRecord::Migration
  def change
    remove_column :user_profiles, :failed_attempts
    add_column :users, :failed_attemps, 'tinyint(1)', default: 0
  end
end
