class AddTimeToAdvisories < ActiveRecord::Migration
  def change
    add_column :advisories, :time, :string
  end
end
