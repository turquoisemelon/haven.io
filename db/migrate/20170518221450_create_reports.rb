class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.belongs_to :user
      t.boolean :meetings 
      t.boolean :arrested 
      t.boolean :medicated 
      t.boolean :indoors 
      t.boolean :bathed 
      t.boolean :clothes 
      t.boolean :drugs 
      t.boolean :income 
      t.boolean :apply_benefits 
      t.boolean :verbal_arguments 
      t.boolean :fights 
      t.boolean :ems 
      t.boolean :hospital 
      t.boolean :medical_condition 
      t.integer :weeks_homeless 
      t.datetime :created_at 
      t.integer :sentiment
      t.timestamps null: false
      t.text :notes
    end
  end
end
