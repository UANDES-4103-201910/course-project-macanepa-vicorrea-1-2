

# Users
user03 = User.create!(name:"Lusho",last_name:"el Angry",email:"angry_lusho@miuandes.cl",password:"123456",last_access:Time.now)
user04 = User.create!(name:"Giorgio",last_name:"Guggiana",email:"gaguggiana@miuandes.cl",password:"123456",last_access:Time.now)
user05 = User.create!(name:"Tomas",last_name:"Turbado",email:"tt@miuandes.cl",password:"123456",last_access:Time.now)
user06 = User.create!(name:"Mati",last_name:"Canepa",email:"matiasalbertocg@gmail.com",password:"123456",last_access:Time.now)


#Profiles
profile03 = Profile.create!(user_id:user03.id,biography:"Soy muy enojon. Me enojo por todo >:[",country:"Chile",city:"Santiago")
profile04 = Profile.create!(user_id:user04.id,biography:"They call me Bad Choices. Got it memorized?",country:"Italia",city:"Milano")
profile05 = Profile.create!(user_id:user05.id,biography:"rotsap im se natas",country:"China",city:"Milano")
profile06 = Profile.create!(user_id:user06.id,biography:"La Matucha",country:"Chile",city:"Santiago")

#Admins
admin01 = Admin.create!(user_id:user06.id,super_admin:false,geofence:nil)
admin02 = Admin.create!(user_id:user04.id,super_admin:false,geofence:"Chile")
admin03 = Admin.create!(user_id:user03.id,super_admin:true,geofence:"Perú")


#Posts
post01 = Post.create!(user_id:user03.id,title:"Titulo",content:"Post de prueba",is_open:true,is_solved:false)
post02 = Post.create!(user_id:user04.id,title:"Hey listen",content:"I'm quite recognized for my eloquent decision making. People often say that I take 'Bad Choices'",is_open:false,is_solved:true)
post03 = Post.create!(user_id:user04.id,title:"Dumpster",content:"Dumpster!",is_open:false,is_solved:true)

# Blacklist
bl01 = Blacklist.create!(user_id:user03.id,exit_date:Time.now.yesterday)
bl02 = Blacklist.create!(user_id:user03.id,exit_date:Time.now)
bl03 = Blacklist.create!(user_id:user04.id,exit_date:nil)
bl04 = Blacklist.create!(user_id:user05.id,exit_date:Time.now)
bl02 = Blacklist.create!(user_id:user03.id,exit_date:nil)

# Comments
comment01 = Comment.create!(post_id:post01.id, comment_id:nil, user_id:user04.id,content:"Ahh CTM")

# Dumpster
Dumpster.create!(post_id:post03.id, exit_date:Time.now.tomorrow)
Dumpster.create!(post_id:post01.id)
Dumpster.create!(post_id:post03.id)
Dumpster.create!(post_id:post02.id, exit_date:Time.now)

# Locations
Location.create!([
                  { "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
                  { "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
                  { "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
              ])