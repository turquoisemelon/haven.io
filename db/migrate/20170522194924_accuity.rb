class Accuity < ActiveRecord::Migration[5.1]
  def change
    create_table :accuity do |t|
t.boolean :treatment
t.boolean :crisis
t.boolean :medication
t.boolean :housing
t.boolean :basic_needs
t.boolean :income
t.boolean :substances
t.boolean :emergency
t.boolean :weeks_homeless
t.boolean :moods
t.string :user_id
t.datetime :created_at
t.timestamps null: false
   end
  end
end
