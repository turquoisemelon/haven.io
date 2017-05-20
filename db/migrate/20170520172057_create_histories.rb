class CreateHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :histories do |t|
      t.belongs_to :user
      t.boolean :stolen 
      t.boolean :friends 
      t.boolean :clothes 
      t.integer :eaten 
      t.boolean :trash 
      t.boolean :new_conditions
      t.boolean :health_condition  
      t.string :health_condition_note
      t.boolean :appointments 
      t.boolean :depressed 
      t.boolean :mental_health 
      t.string :mental_health_note
      t.boolean :new_habit 
      t.string :new_habit_note
      t.boolean :AA_NA 
      t.boolean :social_circle 
      t.boolean :communicate_needs 
      t.integer :cooperate 
      t.datetime :created_at 
      t.integer :housing_situation
      t.timestamps null: false
      t.text :comments
    end
  end
end
