class AddProvinceIdToAdvisories < ActiveRecord::Migration
  def change
    add_column :advisories, :province_id, :integer
  end
end
