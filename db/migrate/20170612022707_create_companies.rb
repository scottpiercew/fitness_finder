class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :company_type
      t.string :img_url

      t.timestamps
    end
  end
end
