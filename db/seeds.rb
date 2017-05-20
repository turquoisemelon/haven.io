# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding Data ...'

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts 'Development seeds only (for now)!'
  exit 0
end

puts 'Seeding admin users ...'

user1 = User.find_or_create_by!({
  email: 'root@user.com',
  password_digest: BCrypt::Password.create('1234'),
  admin: true
})

puts 'Seeding non-admin users ...'

user2 = User.find_or_create_by!({
  email: 'bob@smith.com',
  password_digest: BCrypt::Password.create('1234')
})

puts "Standy- Creating User Reports... "
puts user2.id

report1= Report.find_or_create_by!({
    user_id: 2,
     meetings: false,
     arrested: true, 
     medicated: true,  
     indoors: false,
     bathed: true,
     clothes: false,
     drugs: false,
     income: true,  
     apply_benefits: true,  
     verbal_arguments: true,  
     fights: false,
     ems: true,
     hospital: false,  
     medical_condition: true,  
     weeks_homeless: 12,
     created_at: DateTime.now,
     sentiment: 3,
    })

report2= Report.find_or_create_by!({
    user_id: 2,
     meetings: true,
     arrested: false, 
     medicated: true,  
     indoors: false,
     bathed: true,
     clothes: false,
     drugs: true,
     income: true,  
     apply_benefits: false,  
     verbal_arguments: true,  
     fights: true,
     ems: false,
     hospital: true,  
     medical_condition: true,  
     weeks_homeless: 13,
     created_at: DateTime.now,
     sentiment: 3,
    })

report3= Report.find_or_create_by!({
    user_id: 2,
     meetings: false,
     arrested: true, 
     medicated: false,  
     indoors: true,
     bathed: false,
     clothes: true,
     drugs: true,
     income: false,  
     apply_benefits: false,  
     verbal_arguments: true,  
     fights: true,
     ems: true,
     hospital: true,  
     medical_condition: true,  
     weeks_homeless: 14,
     created_at: DateTime.now,
     sentiment: 3,
    })

report4= Report.find_or_create_by!({
    user_id: user2.id,
     meetings: true,
     arrested: true, 
     medicated: true,  
     indoors: true,
     bathed: false,
     clothes: true,
     drugs: true,
     income: false,  
     apply_benefits: false,  
     verbal_arguments: true,  
     fights: true,
     ems: false,
     hospital: true,  
     medical_condition: true,  
     weeks_homeless: 15,
     created_at: DateTime.now,
     sentiment: 3,
    })

report5= Report.find_or_create_by!({
    user_id: user2.id,
     meetings: false,
     arrested: true, 
     medicated: false,  
     indoors: true,
     bathed: false,
     clothes: true,
     drugs: true,
     income: false,  
     apply_benefits: false,  
     verbal_arguments: true,  
     fights: true,
     ems: false,
     hospital: true,  
     medical_condition: true,  
     weeks_homeless: 15,
     created_at: DateTime.now,
     sentiment: 3,
    })

history1= History.find_or_create_by!({
    user_id: user2.id,
    stolen:true,
     friends:true,
     clothes:true,
    eaten: 3,
     trash:true,
     new_conditions:true,
     health_condition: true,
     health_condition_note: 'seasonal alergies',
     appointments: true,
     depressed: true,
     mental_health: true,
     mental_health_note: "I see dead people",
     new_habit: true,
     new_habit_note: "Can't stop collecting Beanie Babies",
     AA_NA: true,
     social_circle: true,
     communicate_needs: true,
     cooperate: 3,
     housing_situation: 2,
    comments: "doing better",
     created_at: DateTime.now,
    })