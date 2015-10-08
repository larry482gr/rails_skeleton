class CreateJoinTableRolesPermissions < ActiveRecord::Migration
  def change
    create_join_table :roles, :permissions do |t|
      t.index [:role_id, :permission_id], name: 'idx_role_permission'
      # t.index [:permission_id, :role_id]
    end
  end
end
