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


user1 = User.create!({ email: 'Joshua@torontohealth.com', password_digest: BCrypt::Password.create('1234'), admin: true})
user2 = User.create!({ email: 'root@user.com', password_digest: BCrypt::Password.create('1234'), admin: true})


puts 'Seeding non-admin users ...'

user3 = User.create!({ email: 'william_peters@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "William Peters", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 42, gender: "male"})
user4 = User.create!({ email: 'navneet_sondhi@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Navneet Sondhi", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "permanent Resident", age: 58, gender: "female"})
user5 = User.create!({ email: 'bradley_macLaine@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Bradley MacLaine", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "male"})
user6 = User.create!({ email: 'pierre_gregoire@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Pierre Gregoire", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 22, gender: "male"})
user7 = User.create!({ email: 'stevie_charron@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Steven (Tiny) Charron", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 52, gender: "female"})
user8 = User.create!({ email: 'joshua_parisien.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Joshua Parisien", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "undocumented", age: 21, gender: "male"})
user9 = User.create!({ email: 'john_paul@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "John Paul", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 19, gender: "male"})
user10 = User.create!({ email: 'greg_mccoy@gmail.com', password_digest: BCrypt::Password.create('1234'),  admin: false, name: "Gregory John Mcvoy", profession: "Deck hand", marital_status: "Single", hiv: true, veteran: true, immigrant: "undocumented", age: 16, gender: "male"})
user11 = User.create!({ email: 'paul_mccann@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Paul McCann", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 32, gender: "male"})
user12 = User.create!({ email: 'kenneth_lyons@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Kenneth Lyons", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: true, immigrant: "citizen", age: 14, gender: "male"})
user13 = User.create!({ email: 'kenneth_dargan@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Kenneth Dargan", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 37, gender: "male"})
user14 = User.create!({ email: 'lawrence_cook@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Lawrence Cook", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 64, gender: "male"})
user15 = User.create!({ email: 'steven_doyle@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Steven Doyle", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 83, gender: "male"})
user16 = User.create!({ email: 'meghan_johnson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Meghan (Princess) Johnson", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 75, gender: "female"})
user17 = User.create!({ email: 'paul_crombie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Paul Crombie", profession: "Plumber", marital_status: "Divorced", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 69, gender: "male"})
user18 = User.create!({ email: 'ivan_nova@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Ivan Nova", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "male"})
user19 = User.create!({ email: 'ramsey_whitefish@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Ramsey Whitefish", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 16, gender: "female"})
user20 = User.create!({ email: 'dean_hamilton@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Dean Hamilton", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 18, gender: "female"})
user21 = User.create!({ email: 'houston_lecky@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Houston Lecky", profession: "Plumber", marital_status: "Divorced", lgbt: true, hiv: true, veteran: false, immigrant: "refugee", age: 45, gender: "female"})
user22 = User.create!({ email: 'brian_quoquat@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brian Abel Quoquat", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: true, immigrant: "citizen", age: 68, gender: "male"})
user23 = User.create!({ email: 'beverly_bernardin@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Beverly (Bev) Bernardin", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 78, gender: "female"})
user24 = User.create!({ email: 'jason_cerasuolo@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Jason Cerasuolo", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 68, gender: "male"})
user25 = User.create!({ email: 'larry_raponi@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Larry (Lawrence) Raponi", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 73, gender: "male"})
user26 = User.create!({ email: 'anthony_flint@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Anthony William Flint", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 45, gender: "male"})
user27 = User.create!({ email: 'david_william Brown@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " David William Brown", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "permanent Resident", age: 77, gender: "male"})
user28 = User.create!({ email: 'weldon_savoy@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Weldon Savoy", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "citizen", age: 51, gender: "female"})
user29 = User.create!({ email: 'charles_martin@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Charles Martin", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 72, gender: "male"})
user30 = User.create!({ email: 'richard_schilden@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Richard Van Der Schilden", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "refugee", age: 21, gender: "male"})
user31 = User.create!({ email: 'orazio_zizzi @gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Orazio Zizzi ", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 24, gender: "female"})
user32 = User.create!({ email: 'brad_chapman@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brad Chapman", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 39, gender: "male"})
user33 = User.create!({ email: 'robert_quenville@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Robert Quenville", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 48, gender: "male"})
user34 = User.create!({ email: 'rossie_carara@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Rossie Carara", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 28, gender: "female"})
user35 = User.create!({ email: 'pearl_syvret@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Pearl Syvret", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 30, gender: "female"})
user36 = User.create!({ email: 'sydney_archibald@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Sydney Archibald", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: true, veteran: false, immigrant: "refugee", age: 60, gender: "female"})
user37 = User.create!({ email: 'gerrrard_murack@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Gerrrard Murack", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "permanent Resident", age: 38, gender: "male"})
user38 = User.create!({ email: 'avtar_sandhu@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Avtar Sandhu", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 29, gender: "female"})
user39 = User.create!({ email: 'jamie_jones@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Jamie Patrick Jones", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 48, gender: "male"})
user40 = User.create!({ email: 'danielle_joseph_campbell@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Danielle Joseph Campbell", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "female"})
user41 = User.create!({ email: 'calvin_clayton_chevrier@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Calvin Clayton Chevrier", profession: "Deck hand", marital_status: "Single", hiv: true, veteran: false, immigrant: "citizen", age: 48, gender: "female"})
user42 = User.create!({ email: 'thomas_charles_hall@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Thomas Charles Hall", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 52, gender: "male"})
user43 = User.create!({ email: 'man_huynh@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Man Huynh", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 58, gender: "female"})
user44 = User.create!({ email: 'grant_faulkner@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Grant (Gunner) Faulkner", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 16, gender: "male"})
user45 = User.create!({ email: 'glen_abram@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Glen Abram", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 19, gender: "male"})
user46 = User.create!({ email: 'brian_lefebrve@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Brian Lefebrve", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "permanent Resident", age: 23, gender: "male"})
user47 = User.create!({ email: 'mark_louie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Mark Louie", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 17, gender: "male"})
user48 = User.create!({ email: 'harold_ricky_Ackers@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Harold Ricky Ackers", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 62, gender: "male"})
user49 = User.create!({ email: 'brad_hadden@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Brad Hadden", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 22, gender: "male"})
user50 = User.create!({ email: 'fredrick_chaisson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Fredrick Chaisson", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 34, gender: "male"})
user51 = User.create!({ email: 'alexandre_lavallee@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Alexa Joseph Lavallee", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 39, gender: "female"})
user52 = User.create!({ email: 'bob_charles_hall@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Johnson Charles Hall", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: true, immigrant: "citizen", age: 24, gender: "male"})
user53 = User.create!({ email: 'john_huynh@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Mandy Huynh", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 48, gender: "female"})
user54 = User.create!({ email: 'joe_faulkner@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Farah Faulkner", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 35, gender: "male"})
user55 = User.create!({ email: 'glen_jones@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Glen Jones", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 26, gender: "male"})
user56 = User.create!({ email: 'max_lefebrve@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: " Britney Lefebrve", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "permanent Resident", age: 23, gender: "male"})
user57 = User.create!({ email: 'marry_louie@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Marry Louie", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 37, gender: "male"})
user58 = User.create!({ email: 'harry_ricky_Ackers@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Hal Ricky Ackers", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 42, gender: "male"})
user59 = User.create!({ email: 'brad_wong@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Bobby Hadden", profession: "Deck hand", marital_status: "Single", lgbt: true, hiv: false, veteran: false, immigrant: "citizen", age: 32, gender: "male"})
user60 = User.create!({ email: 'fred_chaisson@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "Fred Chaisson", profession: "Plumber", marital_status: "Divorced", hiv: false, veteran: false, immigrant: "citizen", age: 44, gender: "male"})
user61 = User.create!({ email: 'david_westendorp@gmail.com', password_digest: BCrypt::Password.create('1234'), admin: false, name: "David Westendorp", profession: "Deck hand", marital_status: "Single", hiv: false, veteran: false, immigrant: "citizen", age: 18, gender: "male"})

puts "Standy- Creating User Reports... "