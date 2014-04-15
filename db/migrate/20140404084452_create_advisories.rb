class CreateAdvisories < ActiveRecord::Migration
  def change
    create_table :advisories do |t|
      t.string :odd_type
      t.string :stem
      t.string :company
      t.string :name
      t.string :telphone
      t.string :mobel_phone
      t.string :fax
      t.string :email
      t.string :address
      t.string :content
      t.integer :product_id
      t.integer :region_id

      t.timestamps
    end
  end
end
