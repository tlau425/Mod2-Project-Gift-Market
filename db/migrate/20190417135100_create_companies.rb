class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :company_name
      t.text :company_desc
      t.integer :dollars
      t.string :picture
      t.timestamps
    end
  end
end
