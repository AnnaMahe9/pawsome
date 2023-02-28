
puts "Killing everything and everyone..."
Booking.destroy_all
Pet.destroy_all
User.destroy_all

# Michelle, manager d'équipes qui voudrait pimper la prochaine soirée team building
# et montrer qu'elle est une personne fun. Elle souhaite donc louer un crocodile pour aller
# avec Herbert, son Dragon de Komodo de compagnie.

#users
puts "Creating users..."
michelle = User.create!(username: "sultane_du_web", email: "michelle@maisonsdumonde.com", password: "password")
file = File.open(Rails.root.join("db/seeds/images/users/michelle.jpg"))
michelle.photo.attach(io:file, filename: "michelle.jpg", content_type: "image/jpeg")

archibald = User.create!(username: "chichi.baba12", email: "archi12@gmail.com", password: "Fifiiloveyou")
file = File.open(Rails.root.join("db/seeds/images/users/archibald.jpg"))
archibald.photo.attach(io:file, filename: "archibald.jpg", content_type: "image/jpeg")

georges = User.create!(username:"supergeorgie", email:"georges.dupont@gmail.com", password:"password")
file = File.open(Rails.root.join("db/seeds/images/users/georges.png"))
georges.photo.attach(io:file, filename: "georges.png", content_type: "image/png")

celina = User.create!(username:"sissilovespets", email:"ilovepets@aol.com", password:"password")
file = File.open(Rails.root.join("db/seeds/images/users/celina.png"))
celina.photo.attach(io:file, filename: "celina.png", content_type: "image/png")


#pets
puts "Creating pets..."
#michelle
herbert = Pet.create!(name: "Herbert", species: "Reptile", description: "Herbert est mon compagnon de vie depuis deux belles années. C'est un Dragon de Komodo très gentil mais un peu caractériel! Il apprécie particulièrement la compagnie humaine, mais attention à bien lui donner à manger AVANT de lui faire un calin.", price_per_day: 105, age: 3, owner: michelle )
file = File.open(Rails.root.join("db/seeds/images/pets/herbert1.jpg"))
herbert.photo.attach(io:file, filename: "herbert1.jpg", content_type: "image/jpeg")

felicia = Pet.create!(name: "Félicia", species: "Reptile", description: "Felicia est une Tortue Aligator qui a une véritable âme d'aventurière. Attention à bien fermer son terrarium, cette petite coquine a tendance à s'échapper la nuit pour venir vous chatouiller les oreilles! Elle est très affectueuse et adore la viande de boeuf. La photo date un peu, Felicia a désormais 10 ans et pèse un peu plus de 50 kilos.", price_per_day: 75, age: 10, owner: michelle)
file = File.open(Rails.root.join("db/seeds/images/pets/felicia.jpg"))
felicia.photo.attach(io:file, filename: "felicia.jpg", content_type: "image/jpeg")

ursule = Pet.create!(name:"Ursule", species:"Mammiphère", description:"Ursule est mon rat-taupe nu. C'est une femelle super mignonne. Fun fact, quand je l'ai adopté j'ai d'abord cru que c'était un chat sans poil! Mais je n'ai pas été déçue quand j'ai découvert qu'elle mentait sur son identité, je l'ai quand même adoptée. Je souhaite la mettre à louer car j'ai beaucoup d'animaux imposants à la maison et plus trop de place, je cherche donc à faire de la garde alternée. Merci !", price_per_day:10, age:5, owner: michelle)
file = File.open(Rails.root.join("db/seeds/images/pets/ursule.jpg"))
ursule.photo.attach(io:file, filename: "ursule.jpg", content_type: "image/jpeg")

#georges
bibi = Pet.create!(name: "Bibi", species:"Poisson", description: "Bibi est mon poisson rouge depuis maintenant 2ans. Très affectueux, il bulle sur commande ce qui égaiera vos soirées les plus sombres.", price_per_day: 5, age: 3, owner: georges)
file = File.open(Rails.root.join("db/seeds/images/pets/bibi.jpg"))
bibi.photo.attach(io:file, filename: "bibi.jpg", content_type: "image/jpeg")

benedict = Pet.create!(name:"Benedict", species:"Amphibien", description:"Benedict est une magnifique grenouille taureau, un peu baveuse mais surtout remplie d'amour (et d'humour !), elle illuminera vos journées par ses grands sourires", price_per_day:25, age: 8, owner: georges)
file = File.open(Rails.root.join("db/seeds/images/pets/benedict.jpg"))
benedict.photo.attach(io:file, filename: "benedict.jpg", content_type: "image/jpeg")

batman = Pet.create!(name: "Batman", species:"Mammiphère", description:"Batman est un peu taciturne, et pas très actif en journée. Je pensais avoir acheté une souris sans cheveux, mais je ne regrette pas mon erreur ! Batman ne vous dérangera pas, et vous tiendra compagnie pendant vos nuits d'été.", age: 3, price_per_day: 12, owner:georges)
file = File.open(Rails.root.join("db/seeds/images/pets/batman.jpg"))
batman.photo.attach(io:file, filename: "batman.jpg", content_type: "image/jpeg")

#archibald
fifi = Pet.create!(name: "Fifi", species: "Oiseau", description: "Fifi est mon corbeau adoptif. Il est tombé dans mon jardin un soir de pleine lune il y a 2 ans et depuis une histoire d'amour s'est créée entre nous. Je l'ai soigné, et il ne m'a plus jamais quitté. Il est très gentil mais attention aux coups de bec... Je souhaite le louer car je pars en vacances la semaine prochaine et ils n'acceptent pas les corbeaux de compagnie dans l'avion. Prix non négotiable.", price_per_day:3, age:6, owner: archibald)
file = File.open(Rails.root.join("db/seeds/images/pets/fifi.jpg"))
fifi.photo.attach(io:file, filename: "fifi.jpg", content_type: "image/jpeg")

ludovic = Pet.create!(name:"Ludovic", species:"Poisson", description:"Ludovic est mon requin-lutin. Je l'ai acheté sur un site internet l'année dernière, mais ils avaient oublié de me prévenir qu'il était un peu encombrant et très affamé... Aujourd'hui j'ai besoin d'un peu d'argent car j'ai tout dépensé dans l'éducation de Ludovic... Vous verrez il est super gentil (je ne mettrais quand même pas mes mains dans l'aquarium si j'étais vous :)", price_per_day:27, age:9, owner: archibald)
file = File.open(Rails.root.join("db/seeds/images/pets/ludovic.jpg"))
ludovic.photo.attach(io:file, filename: "ludovic.jpg", content_type: "image/jpeg")

leon = Pet.create!(name:"Léon", species:"Insecte", description:" J'ai trouvé Léon un beau soir d'été. Il chantait dans mes oreilles sa douce mélodie. Au début, j'ai voulu le tuer mais je n'ai pas réussi et nous sommes devenus très amis. Je le mets à louer car j'ai l'impression qu'il a besoin de prendre du temps un peu de son côté, sans moi... Nous nous sommes disputés et je pense que ça lui fera du bien. Alors voilà je vous confie Léon mon moustique mais pour une durée limitée !", price_per_day:77, age:1, owner: archibald)
file = File.open(Rails.root.join("db/seeds/images/pets/leon.png"))
leon.photo.attach(io:file, filename: "leon.png", content_type: "image/png")

#célina
fridha = Pet.create!(name: "Fridha Khalo", species:"Reptile", description: "Fridha est une jeune crocodile passionée et débordante de vie. Je l'ai recueillie quand elle avait 6 mois et c'est devenue une adorable petite crocodile. Attention, elle n'aime pas beaucoup les hommes", price_per_day:80, age: 6, owner: celina)
file = File.open(Rails.root.join("db/seeds/images/pets/fridha.jpg"))
fridha.photo.attach(io:file, filename: "fridha.jpg", content_type: "image/jpeg")

simone = Pet.create!(name: "Simone", species:"Insecte", description: "Simone est ma tarantule. Je l'ai sauvée des mauvais traitements de son ancien humain et depuis, je lui réapprends à faire confiance à l'homme. C'est pourquoi je vous propose de lui montrer de l'amour en la louant pendant quelque temps. Elle est très affectueuse et adore se nicher dans le cou!", price_per_day:45, age: 4, owner: celina)
file = File.open(Rails.root.join("db/seeds/images/pets/simone.jpg"))
simone.photo.attach(io:file, filename: "simone.jpg", content_type: "image/jpeg")

jerome = Pet.create!(name: "Jérôme", species:"Reptile", description:"J'ai eu Jérôme par un hasard de dingue: ce boa est remonté dans mes toilettes ! Depuis il ne quitte plus ma salle de bain, je cherche donc à le sociabiliser avec d'autres animaux.", price_per_day: 34, age: 4, owner: celina)
file = File.open(Rails.root.join("db/seeds/images/pets/jerome.jpg"))
jerome.photo.attach(io:file, filename: "jerome.jpg", content_type: "image/jpeg")
#bookings
puts "Creating bookings"
book_celina = Booking.create!(starts_on: "2023-02-03", ends_on: "2023-02-11", renter: celina, pet: fifi, status: "confirmed", total_price:27)
book_michelle = Booking.create!(starts_on: "2023-03-17", ends_on: "2023-03-18", renter: michelle, pet: fridha, status: "pending", total_price: 160)
book_2_michelle = Booking.create!(starts_on: "2022-12-22", ends_on: "2022-12-26", renter: michelle, pet: ludovic, status: "confirmed", total_price: 135)
book_3_michelle = Booking.create!(starts_on: "2023-06-19", ends_on: "2023-06-25", renter: michelle, pet: fifi, status: "pending", total_price: 21)
book_2_celina = Booking.create!(starts_on: "2023-01-15", ends_on:"2023-01-18", renter: celina, pet: fifi, status: "declined", total_price: 9)
book_archibald = Booking.create!(starts_on: "2023-02-02", ends_on:"2023-02-05", renter: archibald, pet: benedict, status: "confirmed", total_price:75)

puts "Database created"
