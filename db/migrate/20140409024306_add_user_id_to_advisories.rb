class AddUserIdToAdvisories < ActiveRecord::Migration
  def change
    add_column :advisories, :user_id, :integer
  end
end
