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

Report.destroy_all

    report1 =user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "voluptate ullamco veniam commodo voluptate anim esse minim aute excepteur deserunt cupidatat culpa irure id",
    created_at: Date.new(2017,04,30)})

    report2 =user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nostrud deserunt laborum sit mollit velit adipisicing mollit eiusmod fugiat sunt ipsum in ut nulla",
    created_at: Date.new(2017,05,01)})

    report3 =user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "elit nulla minim labore id Lorem velit commodo aliqua laboris non fugiat dolor adipisicing minim",
    created_at: Date.new(2017,05,02)})

    report4 =user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco deserunt non reprehenderit do id non tempor adipisicing velit aliqua sit esse sint ut",
    created_at: Date.new(2017,05,03)})

    report5 =user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "mollit proident anim nostrud ullamco magna officia consectetur sint incididunt et sit do cillum tempor",
    created_at: Date.new(2017,05,04)})

    report6 =user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "fugiat exercitation quis tempor quis voluptate dolor nostrud ex cupidatat eiusmod do irure commodo mollit",
    created_at: Date.new(2017,05,05)})

    report7 =user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "sunt aute ea laborum in voluptate irure id aliquip commodo nulla reprehenderit Lorem velit occaecat",
    created_at: Date.new(2017,05,06)})

    report8 =user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor aute ipsum incididunt laborum incididunt qui cupidatat do culpa ut qui laboris ipsum cupidatat",
    created_at: Date.new(2017,05,7)})

    report9 =user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "non quis incididunt fugiat consequat et voluptate aute dolore anim commodo culpa esse Lorem aliqua",
    created_at: Date.new(2017,05,8)})

    report10= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "Lorem ea nostrud consectetur aliquip laborum minim nostrud incididunt culpa nostrud occaecat minim et nisi",
    created_at: Date.new(2017,05,9)})

    report11= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "ullamco voluptate fugiat amet cupidatat dolore adipisicing occaecat est esse non exercitation consequat ut excepteur",
    created_at: Date.new(2017,05,10)})

    report12= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco Lorem culpa labore qui consequat cupidatat tempor do quis dolore dolore culpa officia ad",
    created_at: Date.new(2017,05,11)})

    report13= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "labore non adipisicing mollit do et aliquip est dolor dolore cupidatat adipisicing adipisicing amet et",
    created_at: Date.new(2017,05,12)})

    report14= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "sint nisi aliquip ex qui eu officia aliqua consequat eu dolore eu consequat non amet",
    created_at: Date.new(2017,05,13)})

    report15= user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "aliqua et laborum non nulla cillum consectetur exercitation dolor ex exercitation ut incididunt tempor aute",
    created_at: Date.new(2017,05,14)})

    report16= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "qui aute id elit cillum proident tempor commodo dolor minim sunt incididunt consectetur incididunt nostrud",
    created_at: Date.new(2017,05,15)})

    report17= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "consectetur commodo eu in aliqua proident ullamco nisi ad elit veniam reprehenderit aliquip Lorem veniam",
    created_at: Date.new(2017,05,16)})

    report18= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nulla ea ullamco ullamco in deserunt elit anim est nostrud magna sit sint quis qui",
    created_at: Date.new(2017,05,17)})

    report19= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "qui fugiat consectetur proident consequat incididunt labore esse occaecat duis sit velit eu tempor nostrud",
    created_at: Date.new(2017,05,18)})

    report20= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: true,
    weeks_homeless: 5,
    notes: "duis mollit exercitation consectetur magna aute voluptate et elit esse dolor incididunt cillum incididunt qui",
    created_at: Date.new(2017,05,19)})

    report21= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "cupidatat dolor tempor dolor sint voluptate enim eiusmod voluptate Lorem qui pariatur Lorem laborum qui",
    created_at: Date.new(2017,05,20)})

    report22= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo pariatur ut incididunt anim commodo sunt et tempor officia mollit in ex non do",
    created_at: Date.new(2017,05,21)})

    report23= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "reprehenderit non fugiat id non aliqua duis deserunt sint commodo pariatur elit ullamco ipsum do",
    created_at: Date.new(2017,05,22)})

    report24= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "officia nisi adipisicing pariatur irure quis sit adipisicing proident laboris dolore sit culpa esse nostrud",
    created_at: Date.new(2017,05,23)})

    report25= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "et Lorem qui qui dolore nulla anim sint reprehenderit anim nostrud sunt officia laborum est",
    created_at: Date.new(2017,05,24)})

    report26= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "aute anim sint exercitation eiusmod nostrud occaecat ipsum irure voluptate veniam consequat do dolore non",
    created_at: Date.new(2017,05,25)})

    report27= user3.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "mollit duis cillum commodo mollit et aliqua magna excepteur consequat duis nulla est eiusmod ea",
    created_at: Date.new(2017,05,26)})

    report28= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "non commodo non id consectetur et nostrud exercitation non amet adipisicing et anim veniam velit",
    created_at: Date.new(2017,05,27)})

    report29= user3.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "pariatur anim aliqua ad et et veniam tempor aliquip officia consectetur reprehenderit deserunt ipsum aliquip",
    created_at: Date.new(2017,05,28)})

    report30= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "dolore eu dolore fugiat officia sit do irure labore dolore aliqua aliqua irure qui eiusmod",
    created_at: Date.new(2017,05,29)})

    report31= user3.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo sit laboris pariatur excepteur adipisicing ut duis consectetur id voluptate mollit aliquip pariatur esse",
    created_at: Date.new(2017,05,30)})

    report32= user3.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "magna officia occaecat ipsum commodo consectetur ea elit duis esse exercitation magna nisi do duis",
    created_at: Date.new(2017,05,31)})

    report33= user3.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "esse ex adipisicing voluptate enim reprehenderit consectetur exercitation pariatur enim sunt dolor enim do officia",
    created_at: Date.new(2017,06,01)})

    
    report34 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ipsum occaecat tempor culpa consectetur cupidatat aliquip minim pariatur ut ut reprehenderit nulla ipsum nostrud",
    created_at: Date.new(2017,04,30)})

    report35 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ea enim nulla ea laboris aliquip velit quis cillum velit laboris non elit commodo irure",
    created_at: Date.new(2017,05,01)})

    report36 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "laboris occaecat aute consequat sint tempor aute anim non ex labore sit tempor quis duis",
    created_at: Date.new(2017,05,02)})

    report37 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "incididunt nisi veniam in non in aute occaecat sit sint dolore et ad elit quis",
    created_at: Date.new(2017,05,03)})

    report38 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ipsum occaecat ullamco cillum ullamco velit nulla duis ipsum voluptate amet dolor amet aute et",
    created_at: Date.new(2017,05,04)})

    report39 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "duis sit consectetur deserunt dolor aliqua nulla anim eu et do nulla et excepteur enim",
    created_at: Date.new(2017,05,05)})

    report40 =user4.reports.find_or_create_by!({
    sentiment: 1,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "occaecat pariatur proident incididunt esse labore incididunt aliquip veniam minim officia nisi dolor quis ipsum",
    created_at: Date.new(2017,05,06)})

    report41 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "id enim cupidatat commodo incididunt in non tempor reprehenderit ad sint adipisicing occaecat do consectetur",
    created_at: Date.new(2017,05,07)})

    report42 =user4.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "minim aliquip minim Lorem est consectetur ullamco incididunt aliqua voluptate aliqua incididunt consequat laborum mollit",
    created_at: Date.new(2017,05,8)})

    report43 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "pariatur dolor reprehenderit enim cillum excepteur adipisicing incididunt ipsum in ea ea sint fugiat ullamco",
    created_at: Date.new(2017,05,9)})

    report44 =user4.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "consequat tempor ipsum veniam aute anim fugiat est eu laborum laborum occaecat ea pariatur laboris",
    created_at: Date.new(2017,05,10)})

    report45 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 5,
    notes: "ad reprehenderit qui eiusmod nulla qui consectetur voluptate sunt elit nisi aliquip commodo ullamco reprehenderit",
    created_at: Date.new(2017,05,11)})

    report46 =user4.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "id nulla sint irure occaecat cillum aliqua exercitation dolor proident est eiusmod consectetur ex culpa",
    created_at: Date.new(2017,05,12)})

    report47 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ullamco velit ipsum consequat esse consequat nisi consectetur nostrud nulla exercitation qui sunt reprehenderit reprehenderit",
    created_at: Date.new(2017,05,13)})

    report48 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "magna laborum duis sit minim tempor cupidatat et pariatur ullamco incididunt culpa magna consectetur amet",
    created_at: Date.new(2017,05,14)})

    report49 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ea ipsum fugiat aliquip ipsum dolore aute pariatur ad ullamco cupidatat cupidatat proident dolore ex",
    created_at: Date.new(2017,05,15)})

    report50 =user4.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ea in magna exercitation irure sint consectetur in est duis laboris veniam incididunt pariatur esse",
    created_at: Date.new(2017,05,16)})

    report51 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "consectetur nisi ex voluptate aliquip cupidatat minim laboris tempor ipsum id sit laborum eiusmod consectetur",
    created_at: Date.new(2017,05,17)})

    report52 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 1,
    notes: "commodo quis quis aliquip voluptate aliquip Lorem est sint et esse laboris incididunt enim aliqua",
    created_at: Date.new(2017,05,18)})

    report53 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "consectetur sit irure amet consectetur aliqua minim consectetur culpa ut labore eiusmod ex occaecat officia",
    created_at: Date.new(2017,05,19)})

    report54 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "do dolore labore aute minim qui quis veniam dolore irure est aliquip do est nisi",
    created_at: Date.new(2017,05,20)})

    report55 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "nulla culpa esse labore ipsum Lorem reprehenderit eu sint et ullamco nisi aliquip consectetur fugiat",
    created_at: Date.new(2017,05,21)})

    report56 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ut proident officia reprehenderit sint fugiat quis sunt aute quis in irure Lorem dolore deserunt",
    created_at: Date.new(2017,05,22)})

    report57 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "velit aliqua magna deserunt nostrud quis consectetur nisi qui in Lorem eiusmod mollit dolore sint",
    created_at: Date.new(2017,05,23)})

    report58 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 3,
    notes: "tempor ex officia amet consequat id dolor sunt labore non velit aliquip dolor sint laborum",
    created_at: Date.new(2017,05,24)})

    report59 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "occaecat ullamco quis ullamco minim nisi amet consectetur ipsum consequat nulla culpa laboris voluptate occaecat",
    created_at: Date.new(2017,05,25)})

    report60 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "aute do dolor veniam ea eiusmod veniam tempor cupidatat commodo fugiat culpa ipsum duis eiusmod",
    created_at: Date.new(2017,05,26)})

    report61 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "dolore mollit est dolor cillum tempor aliqua incididunt adipisicing fugiat cillum adipisicing consequat et officia",
    created_at: Date.new(2017,05,27)})

    report62 =user4.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "labore anim incididunt Lorem eu ex est duis culpa labore ex veniam sunt cupidatat quis",
    created_at: Date.new(2017,05,28)})

    report63 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eiusmod culpa voluptate ullamco proident aliquip eu deserunt cupidatat id proident amet veniam tempor incididunt",
    created_at: Date.new(2017,05,29)})

    report64 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nostrud nulla labore voluptate qui commodo minim aliqua occaecat laborum nostrud irure sint incididunt minim",
    created_at: Date.new(2017,05,30)})

    report65 =user4.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolore nostrud quis fugiat qui incididunt officia elit incididunt ullamco labore culpa tempor velit velit",
    created_at: Date.new(2017,05,31)})

    report66 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "sunt esse ea magna enim occaecat minim amet proident est ullamco ex qui non deserunt",
    created_at: Date.new(2017,06,01)})

    report67 =user4.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "pariatur sunt consequat excepteur nostrud anim qui consequat eiusmod reprehenderit esse et eiusmod pariatur adipisicing",
    created_at: Date.new(2017,06,02)})


    report69 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 5,
    notes: "qui ad commodo occaecat qui laboris est enim consectetur do mollit id minim exercitation sunt",
    created_at: Date.new(2017,04,30)})

    report70 =user5.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "occaecat est ipsum voluptate ea nulla consequat deserunt duis ipsum reprehenderit commodo labore magna minim",
    created_at: Date.new(2017,05,01)})

    report71 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "consequat proident dolor voluptate nisi mollit fugiat ullamco voluptate id tempor voluptate dolore aute mollit",
    created_at: Date.new(2017,05,02)})

    report72 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "nisi nostrud eiusmod consectetur aliqua irure fugiat aliquip anim anim exercitation sit aliqua dolor ullamco",
    created_at: Date.new(2017,05,03)})

    report73 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ad anim consequat et adipisicing pariatur tempor exercitation exercitation do reprehenderit dolore dolor labore laboris",
    created_at: Date.new(2017,05,04)})

    report74 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "velit qui laboris exercitation anim velit voluptate irure eiusmod minim id mollit cupidatat quis proident",
    created_at: Date.new(2017,05,05)})

    report75 =user5.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "occaecat aliqua proident cupidatat cupidatat ut Lorem mollit eu cillum in exercitation magna minim qui",
    created_at: Date.new(2017,05,06)})

    report76 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 5,
    notes: "sit et sunt veniam enim non aliqua occaecat cupidatat nulla ut et ipsum reprehenderit laboris",
    created_at: Date.new(2017,05,07)})

    report77 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "velit tempor elit id sunt ut anim cillum quis aliquip sit proident esse deserunt non",
    created_at: Date.new(2017,05,8)})

    report78 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "magna consectetur exercitation cillum irure quis esse amet consequat amet excepteur eu amet nostrud anim",
    created_at: Date.new(2017,05,9)})

    report79 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "magna mollit eiusmod magna eiusmod elit minim do exercitation quis aliqua Lorem pariatur ad proident",
    created_at: Date.new(2017,05,10)})

    report80 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "pariatur ut adipisicing dolore ad qui in deserunt fugiat commodo aute fugiat fugiat veniam adipisicing",
    created_at: Date.new(2017,05,11)})

    report81 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolor esse aute sint cupidatat Lorem consectetur do cillum irure et esse ut sint eiusmod",
    created_at: Date.new(2017,05,12)})

    report82 =user5.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "minim Lorem ea sit adipisicing ut quis Lorem sint deserunt amet nulla aliquip culpa deserunt",
    created_at: Date.new(2017,05,13)})

    report83 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "tempor Lorem Lorem nulla consequat excepteur reprehenderit consectetur ea eiusmod sunt culpa adipisicing nulla nulla",
    created_at: Date.new(2017,05,14)})

    report84 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "adipisicing duis culpa quis exercitation magna ullamco ut esse ipsum aliqua ullamco quis elit laboris",
    created_at: Date.new(2017,05,15)})

    report85 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "in aliquip laboris quis mollit officia exercitation ipsum dolore aliqua elit enim eiusmod enim anim",
    created_at: Date.new(2017,05,16)})

    report86 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod ut ullamco duis cupidatat nostrud consequat dolore tempor culpa pariatur eu id magna aute",
    created_at: Date.new(2017,05,17)})

    report87 =user5.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "non dolor ad laboris laboris commodo commodo culpa aute minim veniam qui dolor sint nulla",
    created_at: Date.new(2017,05,18)})

    report88 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "id magna pariatur cillum cillum ullamco consectetur cupidatat velit nulla culpa occaecat esse ullamco elit",
    created_at: Date.new(2017,05,19)})

    report89 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eu occaecat laborum in eiusmod do pariatur occaecat ullamco fugiat mollit eu nostrud aliqua incididunt",
    created_at: Date.new(2017,05,20)})

    report90 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "laboris adipisicing eiusmod anim id ad ea sunt eu elit elit excepteur proident pariatur eiusmod",
    created_at: Date.new(2017,05,21)})

    report91 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "labore consequat consequat sit cillum tempor adipisicing veniam proident culpa deserunt mollit do excepteur proident",
    created_at: Date.new(2017,05,22)})

    report92 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "fugiat incididunt ad pariatur est ullamco ad cillum dolore incididunt irure culpa sunt ullamco eiusmod",
    created_at: Date.new(2017,05,23)})

    report93 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "non dolore excepteur consequat quis in reprehenderit adipisicing id sit velit laboris anim exercitation amet",
    created_at: Date.new(2017,05,24)})

    report94 =user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "sunt culpa cupidatat laboris dolore nulla tempor adipisicing in consectetur pariatur aute dolore non cillum",
    created_at: Date.new(2017,05,25)})

    report95 =user5.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "qui culpa labore id adipisicing tempor et duis velit elit nulla anim dolore non elit",
    created_at: Date.new(2017,05,26)})

    report96 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "quis irure qui laboris proident aliquip voluptate nulla incididunt minim eu cillum ea deserunt id",
    created_at: Date.new(2017,05,27)})

    report97 =user5.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing duis dolor mollit officia esse laboris sint deserunt velit commodo anim quis officia tempor",
    created_at: Date.new(2017,05,28)})

    report98 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "est duis est aliquip eiusmod fugiat cillum minim consequat ad est consectetur eiusmod reprehenderit mollit",
    created_at: Date.new(2017,05,29)})

    report99 =user5.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "consectetur duis nisi amet duis ullamco anim veniam ipsum et ex velit laborum non adipisicing",
    created_at: Date.new(2017,05,30)})

    report100= user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "nisi est dolore ad velit fugiat enim elit quis tempor sint magna et amet minim",
    created_at: Date.new(2017,05,31)})

    report101= user5.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ipsum consectetur voluptate Lorem ea magna voluptate sint incididunt ea duis qui laboris nostrud cupidatat",
    created_at: Date.new(2017,06,01)})

    report102= user5.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "in sint laborum dolor excepteur sint velit veniam duis id officia sunt qui occaecat exercitation",
    created_at: Date.new(2017,06,02)})


    report103= user6.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "cupidatat occaecat ex laborum exercitation anim irure magna Lorem mollit consectetur reprehenderit labore aliqua est",
    created_at: Date.new(2017,04,30)})

    report104= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "mollit est velit deserunt duis eiusmod consectetur eu dolor dolor sunt velit est cillum officia",
    created_at: Date.new(2017,05,01)})

    report105= user6.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "reprehenderit consectetur ex est laborum id minim non cupidatat commodo occaecat sunt mollit reprehenderit laborum",
    created_at: Date.new(2017,05,02)})

    report106= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "incididunt culpa proident aliquip in culpa minim aliquip anim nostrud pariatur incididunt cillum proident amet",
    created_at: Date.new(2017,05,03)})

    report107= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor commodo non consequat sunt mollit id officia ullamco eu non do magna reprehenderit duis",
    created_at: Date.new(2017,05,04)})

    report18= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "deserunt nulla occaecat elit ea Lorem eu labore cillum aliqua qui labore consequat proident aute",
    created_at: Date.new(2017,05,05)})

    report19= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ea eu eu nisi labore labore duis non pariatur deserunt ipsum exercitation nisi ex in",
    created_at: Date.new(2017,05,06)})

    report110= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "Lorem tempor consequat et pariatur tempor voluptate do sint elit nulla ullamco laborum ad nisi",
    created_at: Date.new(2017,05,07)})

    report111= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing et enim dolore eu adipisicing sunt aute mollit excepteur deserunt occaecat nostrud occaecat fugiat",
    created_at: Date.new(2017,05,8)})

    report112= user6.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod dolor elit non ullamco aute elit cupidatat irure do quis ipsum nostrud laboris pariatur",
    created_at: Date.new(2017,05,9)})

    report113= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "nostrud ipsum anim occaecat elit excepteur occaecat nisi veniam duis voluptate consectetur consequat eiusmod duis",
    created_at: Date.new(2017,05,10)})

    report114= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "minim dolore aliqua exercitation aliquip laboris irure laboris velit deserunt nisi adipisicing excepteur veniam anim",
    created_at: Date.new(2017,05,11)})

    report115= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "reprehenderit ipsum ea commodo esse ex culpa qui irure cillum commodo laborum commodo dolor minim",
    created_at: Date.new(2017,05,12)})

    report116= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: true,
    ems: false,
    weeks_homeless: 2,
    notes: "esse commodo qui id sit proident minim irure pariatur est quis aliquip aute mollit do",
    created_at: Date.new(2017,05,13)})

    report117= user6.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "aute anim Lorem Lorem ut cupidatat pariatur nostrud dolor minim elit ullamco nisi elit excepteur",
    created_at: Date.new(2017,05,14)})

    report118= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "sint culpa ex do amet minim reprehenderit nostrud minim aute sint labore velit excepteur est",
    created_at: Date.new(2017,05,15)})

    report119= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "in aliquip occaecat adipisicing ipsum eu nostrud deserunt adipisicing sunt laboris esse qui labore ex",
    created_at: Date.new(2017,05,16)})

    report120= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "dolor duis excepteur laboris anim magna id cillum nulla non nostrud sint culpa occaecat ea",
    created_at: Date.new(2017,05,17)})

    report121= user6.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "tempor sint et voluptate in dolor officia cillum anim esse mollit reprehenderit qui non amet",
    created_at: Date.new(2017,05,18)})

    report122= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "reprehenderit reprehenderit duis exercitation ad nisi irure in minim ullamco fugiat anim et esse sit",
    created_at: Date.new(2017,05,19)})

    report123= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "Lorem velit proident sit nulla culpa qui laborum est excepteur magna veniam labore dolor nisi",
    created_at: Date.new(2017,05,20)})

    report124= user6.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "non reprehenderit id proident eiusmod culpa quis eu sit labore mollit adipisicing consectetur do officia",
    created_at: Date.new(2017,05,21)})

    report125= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aliqua officia magna irure est ullamco commodo sit cillum adipisicing labore quis ullamco amet reprehenderit",
    created_at: Date.new(2017,05,22)})

    report126= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "nulla dolor nisi nostrud Lorem dolor incididunt non labore anim deserunt aute ullamco est minim",
    created_at: Date.new(2017,05,23)})

    report127= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "esse exercitation dolore veniam ullamco veniam aliqua elit aliqua commodo voluptate fugiat sit occaecat fugiat",
    created_at: Date.new(2017,05,24)})

    report128= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "culpa aliquip aute laborum minim ex veniam cupidatat quis incididunt nostrud eu culpa consectetur cupidatat",
    created_at: Date.new(2017,05,25)})

    report129= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "esse quis deserunt anim nostrud laborum Lorem aute reprehenderit proident exercitation ad voluptate cillum id",
    created_at: Date.new(2017,05,26)})

    report130= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ad qui ad et commodo laboris non velit velit minim nisi labore do velit sint",
    created_at: Date.new(2017,05,27)})

    report131= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "tempor in excepteur ad nostrud ea nostrud voluptate ullamco aute amet culpa aliquip et laboris",
    created_at: Date.new(2017,05,28)})

    report132= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "do quis mollit est ex magna minim veniam qui irure sit labore amet mollit exercitation",
    created_at: Date.new(2017,05,29)})

    report133= user6.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "excepteur exercitation excepteur culpa consectetur tempor Lorem mollit aliqua quis officia irure est est magna",
    created_at: Date.new(2017,05,30)})

    report134= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "occaecat labore adipisicing enim qui esse eiusmod non laborum et magna ad ex culpa sit",
    created_at: Date.new(2017,05,31)})

    report135= user6.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "enim Lorem elit est ad Lorem incididunt ea in et elit qui labore pariatur esse",
    created_at: Date.new(2017,06,01)})

    report136= user6.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "irure nostrud pariatur ut exercitation proident reprehenderit est deserunt proident eiusmod veniam est sint culpa",
    created_at: Date.new(2017,06,02)})


    report137= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "anim quis sint tempor quis aliquip duis non velit anim cillum non id laborum incididunt",
    created_at: Date.new(2017,04,30)})

    report138= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "deserunt dolore quis magna velit reprehenderit adipisicing labore nulla veniam non veniam do eu excepteur",
    created_at: Date.new(2017,05,01)})

    report139= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "deserunt incididunt est laboris culpa proident proident est mollit consequat cillum ipsum aliquip ipsum fugiat",
    created_at: Date.new(2017,05,02)})

    report140= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "eu occaecat culpa excepteur sit deserunt ipsum eu pariatur culpa labore consectetur eu irure reprehenderit",
    created_at: Date.new(2017,05,03)})

    report141= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: true,
    weeks_homeless: 3,
    notes: "culpa ipsum reprehenderit id ea ut quis consectetur aliquip minim cupidatat nostrud ad consequat et",
    created_at: Date.new(2017,05,04)})

    report142= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eiusmod est dolor est laborum aliquip nulla ex labore qui dolor aute cillum voluptate dolor",
    created_at: Date.new(2017,05,05)})

    report143= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "proident cupidatat nostrud eu eu tempor consequat eu amet aliqua adipisicing do eu officia culpa",
    created_at: Date.new(2017,05,06)})

    report144= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 3,
    notes: "fugiat dolor eiusmod aliquip aliquip non dolore tempor voluptate elit occaecat incididunt nisi exercitation consectetur",
    created_at: Date.new(2017,05,07)})

    report145= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: false,
    arrested: true,
    medicated: false,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ea reprehenderit cillum ipsum duis excepteur non irure voluptate voluptate deserunt fugiat adipisicing fugiat nulla",
    created_at: Date.new(2017,05,8)})

    report146= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 2,
    notes: "laboris non in consectetur magna veniam esse laboris dolor velit aliqua aliqua eiusmod mollit ad",
    created_at: Date.new(2017,05,9)})

    report147= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "in qui do officia quis nulla consectetur dolore laboris velit ad nulla nisi sit aliquip",
    created_at: Date.new(2017,05,10)})

    report148= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "anim Lorem ipsum amet ex officia sunt consequat anim exercitation laborum sint reprehenderit proident eiusmod",
    created_at: Date.new(2017,05,11)})

    report149= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 1,
    notes: "fugiat velit aute sit sint commodo magna quis qui in dolore tempor sint exercitation veniam",
    created_at: Date.new(2017,05,12)})

    report150= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 1,
    notes: "dolor amet laborum velit anim dolor mollit ut consectetur est ea labore nulla reprehenderit velit",
    created_at: Date.new(2017,05,13)})

    report151= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "ad ullamco nisi sit anim ex consectetur ea commodo culpa ut aute magna sit pariatur",
    created_at: Date.new(2017,05,14)})

    report152= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "incididunt consectetur labore id id cupidatat amet commodo laboris fugiat dolore ipsum elit magna aliqua",
    created_at: Date.new(2017,05,15)})

    report153= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aute voluptate qui do fugiat dolor ad amet velit aute consequat deserunt veniam ex et",
    created_at: Date.new(2017,05,16)})

    report154= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 4,
    notes: "culpa veniam elit pariatur ipsum sunt elit cupidatat consequat et magna aute consequat quis ut",
    created_at: Date.new(2017,05,17)})

    report155= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "incididunt laborum ex ipsum esse ad ea ex mollit elit cillum in nulla fugiat ex",
    created_at: Date.new(2017,05,18)})

    report156= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "ea deserunt in laborum enim sunt et tempor eu irure fugiat amet id sit commodo",
    created_at: Date.new(2017,05,19)})

    report157= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "tempor minim minim aliquip ex quis excepteur laborum dolor voluptate labore exercitation aliqua voluptate non",
    created_at: Date.new(2017,05,20)})

    report158= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: true,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 5,
    notes: "cillum qui qui Lorem dolor sunt qui eiusmod cupidatat laborum dolor et excepteur do dolor",
    created_at: Date.new(2017,05,21)})

    report159= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 5,
    notes: "deserunt deserunt et adipisicing esse commodo irure nisi dolor id adipisicing aliquip officia officia sit",
    created_at: Date.new(2017,05,22)})

    report160= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 5,
    notes: "nostrud nostrud velit culpa id duis ex commodo do voluptate et exercitation eu amet proident",
    created_at: Date.new(2017,05,23)})

    report161= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: false,
    ems: true,
    weeks_homeless: 1,
    notes: "ipsum occaecat do do veniam aliqua cupidatat do deserunt veniam dolore voluptate est velit ex",
    created_at: Date.new(2017,05,24)})

    report162= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: true,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "elit labore reprehenderit ad labore labore anim sunt sunt consequat adipisicing duis in cupidatat nulla",
    created_at: Date.new(2017,05,25)})

    report163= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "cupidatat dolor mollit in sit fugiat sunt cupidatat eiusmod duis laborum aliqua aute adipisicing aliqua",
    created_at: Date.new(2017,05,26)})

    report164= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "veniam eiusmod laborum occaecat ut amet velit exercitation nostrud magna consequat proident et reprehenderit cupidatat",
    created_at: Date.new(2017,05,27)})

    report165= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "sunt velit irure velit nostrud occaecat sit deserunt eu quis aliquip amet laborum consectetur proident",
    created_at: Date.new(2017,05,28)})

    report166= user7.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: false,
    drugs: true,
    fights: true,
    ems: false,
    weeks_homeless: 4,
    notes: "pariatur consequat magna laboris aliquip quis nisi nulla non fugiat cillum proident ipsum laboris mollit",
    created_at: Date.new(2017,05,29)})

    report167= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "voluptate deserunt velit aliqua voluptate qui nostrud eu ex nisi reprehenderit ea ea deserunt aliqua",
    created_at: Date.new(2017,05,30)})

    report168= user7.reports.find_or_create_by!({
    sentiment: 1,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "nisi nisi mollit laboris nisi non sit deserunt aute pariatur nostrud incididunt culpa culpa dolor",
    created_at: Date.new(2017,05,31)})

    report169= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aliquip aute pariatur ipsum et reprehenderit anim officia occaecat consequat nisi deserunt veniam dolore quis",
    created_at: Date.new(2017,06,01)})

    report170= user7.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: false,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "tempor amet non officia eiusmod est voluptate aliqua cupidatat Lorem duis aliquip nostrud sunt commodo",
    created_at: Date.new(2017,06,02)})


    report171= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nisi exercitation incididunt mollit ex duis minim veniam incididunt do ipsum adipisicing fugiat et cupidatat",
    created_at: Date.new(2017,04,30)})

    report172= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ullamco veniam dolor sunt et occaecat proident ea id culpa enim duis minim dolore labore",
    created_at: Date.new(2017,05,01)})

    report173= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "aliqua cupidatat laborum reprehenderit veniam minim do irure irure enim esse pariatur fugiat consequat est",
    created_at: Date.new(2017,05,02)})

    report174= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "culpa sint fugiat officia enim eu enim dolore id magna magna est consequat irure sint",
    created_at: Date.new(2017,05,03)})

    report175= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "nisi minim eiusmod enim eiusmod nulla aliqua fugiat cillum ipsum pariatur amet magna non duis",
    created_at: Date.new(2017,05,04)})

    report176= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "eiusmod dolor fugiat ut sit dolore exercitation laboris ullamco deserunt ad commodo occaecat nulla amet",
    created_at: Date.new(2017,05,05)})

    report177= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "aliqua mollit dolore aute do ea do proident duis consequat non ex anim est magna",
    created_at: Date.new(2017,05,06)})

    report178= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "nisi mollit aute id incididunt aliqua cupidatat adipisicing cillum laborum cillum ullamco do voluptate proident",
    created_at: Date.new(2017,05,07)})

    report179= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aute ea Lorem esse non quis magna cupidatat ea officia sit ad quis commodo eiusmod",
    created_at: Date.new(2017,05,8)})

    report180= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "veniam magna ad fugiat excepteur nisi cupidatat quis velit in ullamco adipisicing nostrud ullamco fugiat",
    created_at: Date.new(2017,05,9)})

    report181= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "ea commodo anim cillum cillum non voluptate occaecat sunt elit mollit reprehenderit minim nulla et",
    created_at: Date.new(2017,05,10)})

    report182= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "duis irure ut et aliquip cupidatat laborum officia proident nisi culpa tempor sit tempor ex",
    created_at: Date.new(2017,05,11)})

    report183= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "duis aute cillum nisi nostrud elit deserunt deserunt ad do dolore quis aute ea dolor",
    created_at: Date.new(2017,05,12)})

    report184= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "fugiat aliquip aliquip sint aliqua sit ea ad culpa nostrud minim dolore laborum minim do",
    created_at: Date.new(2017,05,13)})

    report185= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "eu et consectetur incididunt amet aliquip commodo dolor nostrud nisi consequat aliqua fugiat esse esse",
    created_at: Date.new(2017,05,14)})

    report186= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "reprehenderit sunt sit voluptate minim occaecat laborum officia enim ullamco esse anim sint adipisicing proident",
    created_at: Date.new(2017,05,15)})

    report187= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "esse deserunt laborum non culpa cupidatat ipsum consequat excepteur veniam duis ad mollit quis dolor",
    created_at: Date.new(2017,05,16)})

    report188= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "qui mollit consequat consequat nisi exercitation enim quis anim esse dolore voluptate laborum nisi nostrud",
    created_at: Date.new(2017,05,17)})

    report189= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "duis consectetur proident fugiat labore ullamco deserunt fugiat aute ullamco esse magna occaecat in consequat",
    created_at: Date.new(2017,05,18)})

    report190= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "aliquip minim enim tempor est adipisicing laborum deserunt consequat laborum qui nostrud amet ipsum elit",
    created_at: Date.new(2017,05,19)})

    report191= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "adipisicing quis mollit fugiat laboris enim nostrud in sint anim ex occaecat duis laborum irure",
    created_at: Date.new(2017,05,20)})

    report192= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "laborum adipisicing laborum aute do pariatur proident laborum pariatur sint excepteur Lorem veniam minim ex",
    created_at: Date.new(2017,05,21)})

    report193= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "aliqua nisi eu qui et deserunt ex dolor excepteur est cillum irure labore dolor adipisicing",
    created_at: Date.new(2017,05,22)})

    report194= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aute minim commodo dolor laboris in velit officia incididunt ut reprehenderit pariatur Lorem mollit duis",
    created_at: Date.new(2017,05,23)})

    report195= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "nisi sunt qui ullamco velit irure consequat excepteur ad excepteur sint veniam nulla in exercitation",
    created_at: Date.new(2017,05,24)})

    report196= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "amet veniam aliqua et ut deserunt velit incididunt qui sit minim labore minim dolore fugiat",
    created_at: Date.new(2017,05,25)})

    report197= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "commodo ad pariatur quis commodo officia consectetur adipisicing excepteur anim exercitation duis dolore consequat duis",
    created_at: Date.new(2017,05,26)})

    report198= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolor consequat nostrud consequat ullamco amet tempor culpa ea anim mollit occaecat officia et consequat",
    created_at: Date.new(2017,05,27)})

    report199= user8.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "commodo eiusmod commodo sit incididunt ea mollit excepteur aute ullamco veniam deserunt Lorem exercitation nostrud",
    created_at: Date.new(2017,05,28)})

    report200= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "nisi amet irure reprehenderit eiusmod voluptate non consectetur reprehenderit sit sunt in nulla ipsum cillum",
    created_at: Date.new(2017,05,29)})

    report201= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "officia laborum magna est enim sit nostrud aliqua fugiat nisi magna tempor dolor cupidatat aute",
    created_at: Date.new(2017,05,30)})

    report202= user8.reports.find_or_create_by!({
    sentiment: 3,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ex est enim qui ullamco consequat laboris nulla sunt ad tempor voluptate magna id aute",
    created_at: Date.new(2017,05,31)})

    report203= user8.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "sunt ullamco ullamco ex aliquip irure do labore ad ut ex excepteur ut Lorem proident",
    created_at: Date.new(2017,06,01)})

    report204= user8.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "veniam fugiat amet ut cupidatat labore tempor sint est laborum id magna nisi anim duis",
    created_at: Date.new(2017,06,02)})


    report205= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "tempor nulla reprehenderit nostrud veniam pariatur pariatur proident occaecat ea tempor do minim sint enim",
    created_at: Date.new(2017,04,30)})

    report206= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "tempor fugiat proident eu ex nisi irure Lorem cupidatat anim officia adipisicing tempor qui in",
    created_at: Date.new(2017,05,01)})

    report207= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "cupidatat tempor proident enim sunt sunt non deserunt aute fugiat do dolor sunt dolor deserunt",
    created_at: Date.new(2017,05,02)})

    report28= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "proident sit proident velit aute nulla esse esse dolor commodo duis tempor laborum ad qui",
    created_at: Date.new(2017,05,03)})

    report29= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "incididunt tempor sit consectetur reprehenderit sint proident quis enim minim sunt anim occaecat deserunt Lorem",
    created_at: Date.new(2017,05,04)})

    report210= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "duis exercitation amet anim magna ipsum in proident aliqua culpa esse mollit ut veniam id",
    created_at: Date.new(2017,05,05)})

    report211= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "consectetur ullamco sit adipisicing ullamco qui occaecat laborum duis sint in fugiat exercitation magna nostrud",
    created_at: Date.new(2017,05,06)})

    report212= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "nulla pariatur id enim non incididunt cupidatat dolore minim ad ipsum ullamco adipisicing tempor laborum",
    created_at: Date.new(2017,05,07)})

    report213= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "non nostrud dolore et pariatur ullamco irure consequat officia magna consequat aute id irure et",
    created_at: Date.new(2017,05,8)})

    report214= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "dolor voluptate nisi ipsum do do qui tempor culpa cillum dolore exercitation ea quis consequat",
    created_at: Date.new(2017,05,9)})

    report215= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "ea cupidatat in sint eu cupidatat ex fugiat minim quis amet ipsum eu laboris cupidatat",
    created_at: Date.new(2017,05,10)})

    report216= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "do duis culpa do ullamco anim nulla fugiat ullamco veniam commodo id ex cupidatat excepteur",
    created_at: Date.new(2017,05,11)})

    report217= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: false,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "fugiat in sint magna incididunt occaecat minim nulla aute nisi fugiat minim ipsum veniam et",
    created_at: Date.new(2017,05,12)})

    report218= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "elit consectetur eiusmod quis sit sunt officia fugiat incididunt officia cupidatat amet ex non est",
    created_at: Date.new(2017,05,13)})

    report219= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "incididunt nulla consectetur fugiat id elit sunt eiusmod qui nostrud aute est nisi elit elit",
    created_at: Date.new(2017,05,14)})

    report220= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "aliquip sunt pariatur dolore culpa ex fugiat elit officia nulla nulla nulla voluptate aliqua occaecat",
    created_at: Date.new(2017,05,15)})

    report221= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "culpa dolor sint mollit id irure ea aute aliquip amet aute consectetur Lorem fugiat fugiat",
    created_at: Date.new(2017,05,16)})

    report222= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "aute in sint dolore tempor cupidatat minim pariatur proident nulla velit officia ad sunt laboris",
    created_at: Date.new(2017,05,17)})

    report223= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "occaecat ullamco nostrud ipsum eu occaecat incididunt eiusmod reprehenderit qui ex esse excepteur magna voluptate",
    created_at: Date.new(2017,05,18)})

    report224= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "culpa ex excepteur aliquip voluptate anim magna commodo dolor id mollit commodo aute sunt magna",
    created_at: Date.new(2017,05,19)})

    report225= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "aliquip sunt tempor consectetur sit mollit fugiat nostrud elit ea ad mollit ex velit laborum",
    created_at: Date.new(2017,05,20)})

    report226= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: false,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "labore sint consequat ullamco est cillum sit voluptate anim officia irure tempor eu sunt nostrud",
    created_at: Date.new(2017,05,21)})

    report227= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "anim reprehenderit proident ipsum cillum non deserunt adipisicing aliquip aute do adipisicing aute ex veniam",
    created_at: Date.new(2017,05,22)})

    report228= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "elit in ea aliquip ut tempor deserunt consectetur aute nisi occaecat laborum elit do eu",
    created_at: Date.new(2017,05,23)})

    report229= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "cupidatat eiusmod ea consequat voluptate pariatur proident sunt qui laborum aute incididunt cillum veniam qui",
    created_at: Date.new(2017,05,24)})

    report230= user9.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "culpa labore laborum cillum non nulla ullamco incididunt do ex amet ut in irure enim",
    created_at: Date.new(2017,05,25)})

    report231= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "deserunt occaecat aliqua ex non nulla qui dolor nulla incididunt esse elit ad pariatur sit",
    created_at: Date.new(2017,05,26)})

    report232= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "adipisicing elit dolor do laboris ullamco deserunt ea esse pariatur incididunt duis culpa commodo eiusmod",
    created_at: Date.new(2017,05,27)})

    report233= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "proident cillum eu fugiat occaecat ex ut eiusmod nisi ex laboris nulla reprehenderit ex cillum",
    created_at: Date.new(2017,05,28)})

    report234= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "cillum id laborum anim anim excepteur eu consectetur in non pariatur deserunt sit non fugiat",
    created_at: Date.new(2017,05,29)})

    report235= user9.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "eu magna enim fugiat sint tempor ullamco labore in mollit occaecat magna voluptate excepteur do",
    created_at: Date.new(2017,05,30)})

    report236= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "adipisicing elit ad ex qui veniam laborum eiusmod nulla id enim labore nisi est dolor",
    created_at: Date.new(2017,05,31)})

    report237= user9.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "dolore et commodo officia ut deserunt incididunt aliquip laborum sunt officia ipsum officia dolor esse",
    created_at: Date.new(2017,06,01)})

    report238= user9.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "pariatur anim cillum non qui tempor culpa deserunt deserunt quis excepteur pariatur nostrud eiusmod deserunt",
    created_at: Date.new(2017,06,02)})


    report239= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "ullamco velit proident irure officia excepteur in voluptate et id reprehenderit exercitation adipisicing occaecat ut",
    created_at: Date.new(2017,04,30)})

    report240= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "excepteur anim et ullamco ut proident reprehenderit eiusmod ut sint tempor ea elit amet ullamco",
    created_at: Date.new(2017,05,01)})

    report241= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "do culpa sit do ea cupidatat id amet sit officia dolor commodo consectetur consectetur sunt",
    created_at: Date.new(2017,05,02)})

    report242= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "ex excepteur voluptate elit incididunt fugiat ullamco reprehenderit duis mollit tempor excepteur cillum est dolore",
    created_at: Date.new(2017,05,03)})

    report243= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "fugiat excepteur ullamco ad fugiat duis consequat cupidatat minim aliquip laborum id laborum qui excepteur",
    created_at: Date.new(2017,05,04)})

    report244= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "exercitation laborum laboris elit voluptate sint magna enim enim sit ut aliquip labore officia culpa",
    created_at: Date.new(2017,05,05)})

    report245= user10.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "aute dolor commodo dolore excepteur esse nisi eiusmod Lorem cillum eiusmod excepteur proident quis excepteur",
    created_at: Date.new(2017,05,06)})

    report246= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "culpa esse enim et culpa excepteur dolor occaecat commodo ex incididunt reprehenderit magna proident qui",
    created_at: Date.new(2017,05,07)})

    report247= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "cupidatat aliquip cupidatat ullamco exercitation cillum exercitation id aute incididunt aliqua dolore aliqua aute ullamco",
    created_at: Date.new(2017,05,8)})

    report248= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: true,
    medicated: false,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "tempor consectetur Lorem do fugiat enim id nisi do ex voluptate laboris reprehenderit voluptate non",
    created_at: Date.new(2017,05,9)})

    report249= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "qui ex occaecat aute excepteur excepteur laboris pariatur anim exercitation id ad quis aute commodo",
    created_at: Date.new(2017,05,10)})

    report250= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "minim ut reprehenderit occaecat occaecat cupidatat velit ad nostrud sunt do eu ipsum laborum enim",
    created_at: Date.new(2017,05,11)})

    report251= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "ullamco officia adipisicing nostrud enim cupidatat ad qui voluptate mollit id id ullamco velit sunt",
    created_at: Date.new(2017,05,12)})

    report252= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "nostrud ut aliquip nulla consequat veniam non anim eu et non dolore culpa qui exercitation",
    created_at: Date.new(2017,05,13)})

    report253= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "consequat ad sint consequat nisi do enim velit nisi irure occaecat minim commodo ut velit",
    created_at: Date.new(2017,05,14)})

    report254= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "culpa culpa aliquip aliqua duis proident do anim et enim eu cillum nisi fugiat amet",
    created_at: Date.new(2017,05,15)})

    report255= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "voluptate aliquip fugiat exercitation pariatur dolor culpa culpa laborum ex nulla fugiat labore id quis",
    created_at: Date.new(2017,05,16)})

    report256= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ad dolor duis aliquip eiusmod sint officia eu exercitation sit voluptate officia laborum magna sint",
    created_at: Date.new(2017,05,17)})

    report257= user10.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ipsum nulla ad ut ullamco eiusmod veniam dolore dolor cupidatat anim sit ex enim veniam",
    created_at: Date.new(2017,05,18)})

    report258= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ut ipsum do ea sit enim sunt et Lorem laboris ipsum velit sunt ut magna",
    created_at: Date.new(2017,05,19)})

    report259= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: true,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "voluptate ullamco labore eu quis culpa ad amet in ex dolore nulla id culpa cupidatat",
    created_at: Date.new(2017,05,20)})

    report260= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ullamco proident ipsum consequat Lorem excepteur non duis id elit dolor id duis aliquip consequat",
    created_at: Date.new(2017,05,21)})

    report261= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "voluptate cupidatat laboris officia excepteur cupidatat tempor nostrud in est cillum sunt do consectetur aliqua",
    created_at: Date.new(2017,05,22)})

    report262= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "commodo ipsum quis occaecat laboris cupidatat cillum aliqua officia mollit exercitation laboris consectetur ex laboris",
    created_at: Date.new(2017,05,23)})

    report263= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 2,
    notes: "sint culpa nostrud elit esse elit veniam magna sunt ea aliqua commodo eiusmod id fugiat",
    created_at: Date.new(2017,05,24)})

    report264= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "aliquip adipisicing et Lorem aliqua ex fugiat sint aliquip adipisicing ipsum adipisicing officia eiusmod minim",
    created_at: Date.new(2017,05,25)})

    report265= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "reprehenderit occaecat nulla officia deserunt ut exercitation magna commodo ad consequat cupidatat dolore quis eu",
    created_at: Date.new(2017,05,26)})

    report266= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 1,
    notes: "duis pariatur et aliqua incididunt eu velit pariatur deserunt dolore ipsum aliquip amet elit ullamco",
    created_at: Date.new(2017,05,27)})

    report267= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "esse magna ipsum dolore reprehenderit nostrud esse cillum ex nisi commodo sint reprehenderit qui magna",
    created_at: Date.new(2017,05,28)})

    report268= user10.reports.find_or_create_by!({
    sentiment: 3,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "pariatur aliqua commodo aliquip nulla voluptate dolore nisi ipsum est eiusmod occaecat tempor nulla consectetur",
    created_at: Date.new(2017,05,29)})

    report269= user10.reports.find_or_create_by!({
    sentiment: 4,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 5,
    notes: "elit eiusmod aute Lorem eiusmod ullamco dolor Lorem eiusmod cupidatat est et incididunt nulla Lorem",
    created_at: Date.new(2017,05,30)})

    report270= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 3,
    notes: "laborum occaecat commodo officia qui ut cillum mollit laboris anim aute cupidatat nostrud nostrud pariatur",
    created_at: Date.new(2017,05,31)})

    report271= user10.reports.find_or_create_by!({
    sentiment: 2,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ad mollit esse fugiat sunt mollit occaecat tempor ullamco anim laborum dolore cillum labore dolor",
    created_at: Date.new(2017,06,01)})

    report272= user10.reports.find_or_create_by!({
    sentiment: 5,
    meetings: true,
    arrested: false,
    medicated: true,
    indoors: true,
    bathed: true,
    drugs: false,
    fights: false,
    ems: false,
    weeks_homeless: 4,
    notes: "ex voluptate excepteur proident reprehenderit ex incididunt sint eiusmod esse consectetur cupidatat dolore ut aliqua",
    created_at: Date.new(2017,06,02)})
