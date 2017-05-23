class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.belongs_to :user
      t.boolean :meetings 
      t.boolean :arrested 
      t.boolean :medicated 
      t.boolean :indoors 
      t.boolean :bathed 
      t.boolean :drugs 
      t.boolean :fights 
      t.boolean :ems 
      t.integer :weeks_homeless 
      t.integer :sentiment
        t.datetime :created_at 
        t.timestamps null: false
        t.text :notes
    end
  end
end
