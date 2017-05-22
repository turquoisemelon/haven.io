class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
        t.belongs_to :user
      t.boolean :stolen 
      t.integer :eaten 
      t.boolean :health_condition  
        t.string :health_condition_note
      t.boolean :appointments 
      t.boolean :mental_health
        t.string :mental_health_note
      t.boolean :new_habit 
        t.string :new_habit_note
      t.boolean :social_circle 
      t.boolean :communicate_needs 
      t.integer :cooperate 
      t.integer :housing_situation
        t.text :comments
        t.datetime :created_at 
        t.timestamps null: false
    end
  end
end
