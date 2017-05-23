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
User.destroy_all

User.create!({id: 1, email: 'Hilda@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 2, email: 'Jessica@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 3, email: 'Susan@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 4, email: 'Jennifer@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 5, email: 'Gary@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 6, email: 'Amanda@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 7, email: 'Linda@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 8, email: 'Ashley@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 9, email: 'Joshua@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
User.create!({id: 10, email: 'root@user.com', password_digest: BCrypt::Password.create('1234'), admin: true})


puts 'Seeding non-admin users ...'

User.create!({id: 11, email: 'william_peters@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "William Peters", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 42, gender: "male"})
User.create!({id: 12, email: 'navneet_sondhi@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Navneet Sondhi", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "Permanent Resident", age: 58, gender: "female"})
User.create!({id: 13, email: 'bradley_macLaine@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Bradley MacLaine", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "male"})
User.create!({id: 14, email: 'pierre_gregoire@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Pierre Gregoire", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 22, gender: "male"})
User.create!({id: 15, email: 'stevie_charron@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Steven (Tiny) Charron", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 52, gender: "female"})
User.create!({id: 16, email: 'joshua_parisien.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Joshua Parisien", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "undocumented", age: 21, gender: "male"})
User.create!({id: 17, email: 'john_paul@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "John Paul", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 19, gender: "male"})
User.create!({id: 18, email: 'greg_mccoy@gmail.com', password_digest: BCrypt::Password.create('1234'),  admin: false, name: "Gregory John Mcvoy", profession: "Deck hand", marital_status: "Single", hiv: true, veteran: true, immigrant: "undocumented", age: 16, gender: "male"})
User.create!({id: 19, email: 'paul_mccann@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Paul McCann", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 32, gender: "male"})
User.create!({id: 20, email: 'kenneth_lyons@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Kenneth Lyons", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: true, immigrant: "citizen", age: 14, gender: "male"})
User.create!({id: 21, email: 'kenneth_dargan@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Kenneth Dargan", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 37, gender: "male"})
User.create!({id: 22, email: 'lawrence_cook@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Lawrence Cook", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 64, gender: "male"})
User.create!({id: 23, email: 'steven_doyle@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Steven Doyle", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 83, gender: "male"})
User.create!({id: 24, email: 'meghan_johnson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Meghan (Princess) Johnson", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 75, gender: "female"})
User.create!({id: 25, email: 'paul_crombie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Paul Crombie", profession: "Plumber", marital_status: "Divorced", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 69, gender: "male"})
User.create!({id: 26, email: 'ivan_nova@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Ivan Nova", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "male"})
User.create!({id: 27, email: 'ramsey_whitefish@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Ramsey Whitefish", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 16, gender: "female"})
User.create!({id: 28, email: 'dean_hamilton@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Dean Hamilton", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 18, gender: "female"})
User.create!({id: 29, email: 'houston_lecky@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Houston Lecky", profession: "Plumber", marital_status: "Divorced", lgbt: true, hiv: true, veteran: false, immigrant: "refugee", age: 45, gender: "female"})
User.create!({id: 30, email: 'brian_quoquat@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brian Abel Quoquat", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: true, immigrant: "citizen", age: 68, gender: "male"})
User.create!({id: 41, email: 'beverly_bernardin@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Beverly (Bev) Bernardin", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 78, gender: "female"})
User.create!({id: 42, email: 'jason_cerasuolo@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Jason Cerasuolo", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 68, gender: "male"})
User.create!({id: 43, email: 'larry_raponi@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Larry (Lawrence) Raponi", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 73, gender: "male"})
User.create!({id: 44, email: 'anthony_flint@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Anthony William Flint", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 45, gender: "male"})
User.create!({id: 45, email: 'david_william Brown@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " David William Brown", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "Permanent Resident", age: 77, gender: "male"})
User.create!({id: 46, email: 'weldon_savoy@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Weldon Savoy", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 51, gender: "female"})
User.create!({id: 47, email: 'charles_martin@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Charles Martin", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 72, gender: "male"})
User.create!({id: 48, email: 'richard_schilden@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Richard Van Der Schilden", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "refugee", age: 21, gender: "male"})
User.create!({id: 49, email: 'orazio_zizzi @gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Orazio Zizzi ", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 24, gender: "female"})
User.create!({id: 50, email: 'brad_chapman@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brad Chapman", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 39, gender: "male"})
User.create!({id: 51, email: 'robert_quenville@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Robert Quenville", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 48, gender: "male"})
User.create!({id: 52, email: 'rossie_carara@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Rossie Carara", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 28, gender: "female"})
User.create!({id: 53, email: 'pearl_syvret@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Pearl Syvret", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 30, gender: "female"})
User.create!({id: 54, email: 'sydney_archibald@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Sydney Archibald", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "refugee", age: 60, gender: "female"})
User.create!({id: 55, email: 'gerrrard_murack@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Gerrrard Murack", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "Permanent Resident", age: 38, gender: "male"})
User.create!({id: 56, email: 'david_westendorp@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "David Westendorp", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 18, gender: "male"})
User.create!({id: 57, email: 'avtar_sandhu@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Avtar Sandhu", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 29, gender: "female"})
User.create!({id: 58, email: 'jamie_jones@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Jamie Patrick Jones", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 48, gender: "male"})
User.create!({id: 59, email: 'danielle_joseph_campbell@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Danielle Joseph Campbell", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "female"})
User.create!({id: 60, email: 'calvin_clayton_chevrier@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Calvin Clayton Chevrier", profession: "Deck hand", marital_status: "Single", hiv: true, veteran: false, immigrant: "citizen", age: 48, gender: "female"})
User.create!({id: 61, email: 'thomas_charles_hall@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Thomas Charles Hall", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 52, gender: "male"})
User.create!({id: 62, email: 'man_huynh@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Man Huynh", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 58, gender: "female"})
User.create!({id: 63, email: 'grant_faulkner@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Grant (Gunner) Faulkner", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 16, gender: "male"})
User.create!({id: 64, email: 'glen_abram@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Glen Abram", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 19, gender: "male"})
User.create!({id: 65, email: 'brian_lefebrve@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Brian Lefebrve", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "Permanent Resident", age: 23, gender: "male"})
User.create!({id: 66, email: 'mark_louie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Mark Louie", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 17, gender: "male"})
User.create!({id: 67, email: 'harold_ricky_Ackers@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Harold Ricky Ackers", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 62, gender: "male"})
User.create!({id: 68, email: 'brad_hadden@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brad Hadden", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 22, gender: "male"})
User.create!({id: 69, email: 'fredrick_chaisson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Fredrick Chaisson", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 64, gender: "male"})
User.create!({id: 70, email: 'alexandre_lavallee@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Alexandre Joseph Lavallee", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 39, gender: "female"})

puts "Standy- Creating User Reports... "