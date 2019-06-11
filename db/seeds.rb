

# Users
l1 = Location.create!(name:"Casa Lusho", latitude:-30, longitude:-70)
u1 = User.create!(name:"Lusho",last_name:"el Angry",email:"angry_lusho@miuandes.cl",password:"123456",last_access:Time.now)
p1 = Profile.create!(user_id:u1.id,biography:"Soy muy enojon. Me enojo por todo >:[",country:"Chile",city:"Santiago", location: l1, include_location:true)

l2 = Location.create!(name:"Mia House", latitude:-33.415476, longitude:-70.687891)
u2 = User.create!(name:"Federico",last_name:"Gonzalez",email:"federico_gonzalez@gmail.com",password:"123456",last_access:Time.now)
p2 = Profile.create!(user_id:u2.id,biography:"Profesional de la salud",country:"Chile",city:"Santiago", location: l2, include_location:true)

l3 = Location.create!(name:"Mia House", latitude:-34.653625, longitude:-58.471094)
u3 = User.create!(name:"Cecilia",last_name:"Valderrama",email:"cecilia_valderrama@gmail.com",password:"123456",last_access:Time.now)
p3 = Profile.create!(user_id:u3.id,biography:"Amante de la literatura hispanoamericana, la cocina y la costura",country:"Argetina",city:"Buenos Aires", location: l3, include_location:true)

l4 = Location.create!(name:"Mia House", latitude:-12.020612, longitude:-76.950098)
u4 = User.create!(name:"Raul",last_name:"Robles",email:"raul_robles@gmail.com",password:"123456",last_access:Time.now)
p4 = Profile.create!(user_id:u4.id,biography:"Ingeniero y amante del Surf",country:"Peru",city:"Lima", location: l4)

l5 = Location.create!(name:"Mia House", latitude:40.394598, longitude:-3.715234)
u5 = User.create!(name:"Catalina",last_name:"Rojas",email:"catalina_rojas@gmail.com",password:"123456",last_access:Time.now)
p5 = Profile.create!(user_id:u5.id,biography:"Me gusta las series de romance y esas volas...",country:"España",city:"Madrid", location: l5)

l6 = Location.create!(name:"Mia House", latitude:40.394598, longitude:-3.716234)
u6 = User.create!(name:"Rodolfo",last_name:"Suarez",email:"rodolfo_suarez@gmail.com",password:"123456",last_access:Time.now)
p6 = Profile.create!(user_id:u6.id,biography:"Me encanta el ciclismo",country:"España",city:"Madrid", location: l6)

l7 = Location.create!(name:"Mia House", latitude:-3.715234, longitude:139.771704)
u7 = User.create!(name:"Akihiko",last_name:"Narukami",email:"akihiko_narukami@gmail.com",password:"123456",last_access:Time.now)
p7 = Profile.create!(user_id:u7.id,biography:"TEMP",country:"Japon",city:"Tokyo", location: l7)

l8 = Location.create!(name:"Mia House", latitude:31.308978, longitude:-115.594507)
u8 = User.create!(name:"Matthew",last_name:"Reynolds",email:"matthew_reynolds@gmail.com",password:"123456",last_access:Time.now)
p8 = Profile.create!(user_id:u8.id,biography:"Movie Making",country:"United States of America",city:"California", location: l8)

l9 = Location.create!(name:"Mia House", latitude:43.590268, longitude:11.033911)
u9 = User.create!(name:"Gino",last_name:"Vera",email:"gino_vera@gmail.com",password:"123456",last_access:Time.now)
p9 = Profile.create!(user_id:u9.id,biography:"Musico y Pintor",country:"Italia",city:"Venecia", location: l9)

l10 = Location.create!(name:"Mia House", latitude:41.38807, longitude:2.152838)
u10 = User.create!(name:"Clara",last_name:"Valencia",email:"clara_valencia@gmail.com",password:"123456",last_access:Time.now)
p10 = Profile.create!(user_id:u10.id,biography:"Me gusta la playa",country:"España",city:"Barcelona", location: l10)

l11 = Location.create!(name:"Mia House", latitude:-29.9336, longitude:-71.25918)
u11 = User.create!(name:"Margarita",last_name:"Inostroza",email:"margarita_inostroza@gmail.com",password:"123456",last_access:Time.now)
p11 = Profile.create!(user_id:u11.id,biography:"Su buen buceo y deportes extremos",country:"Chile",city:"La Serena", location: l11, include_location:true)



l12 = Location.create!(name:"Mia House", latitude:-29.9336, longitude:-71.25918)
u12 = User.create!(name:"Matias",last_name:"Canepa",email:"matiasalbertocg@gmail.com",password:"123456",last_access:Time.now)
p12 = Profile.create!(user_id:u12.id,biography:"Admin (America) of AngryLusho",country:"Chile",city:"Santiago", location: l12, include_location:true)

l13 = Location.create!(name:"Mia House", latitude:-29.9336, longitude:-71.25918)
u13 = User.create!(name:"Giorgio",last_name:"Guggiana",email:"gaguggiana@miuandes.cl",password:"123456",last_access:Time.now)
p13 = Profile.create!(user_id:u13.id,biography:"Admin (Europe) of AngryLusho",country:"Chile",city:"Santiago", location: l13, include_location:true)


l14 = Location.create!(name:"Mia House", latitude:-33.325874, longitude:-70.538942)
u14 = User.create!(name:"Sprite",last_name:"Doggo",email:"sprite@gmail.com",password:"123456",last_access:Time.now)
p14 = Profile.create!(user_id:u14.id,biography:"Nacido 17 Enero 2006, El mejor doggo del mundo.",country:"Chile",city:"Santiago", location: l14, include_location:true)

p0 = Post.create!(user_id:u14.id,title:"Wauf Wauf",content:"Wauf Wauf Wauf.",is_open:false,is_solved:true)

#Geofences
geof01 = Geofence.create!(key:'9c7864f9-b856-4dbb-b4d5-55753a280f1f',name:'America')
geof02 = Geofence.create!(key:'73d34061-200b-44e7-a121-81d3d417f2cf',name:'Africa')
geof03 = Geofence.create!(key:'ab959b20-2660-4218-9199-784ed658bb9d',name:'Europe')
geof04 = Geofence.create!(key:'7f7c9ec1-7f68-439d-a681-e78e1b488af5',name:'Asia')
geof05 = Geofence.create!(key:'7c1217e2-597a-495e-bf31-413cb5940583',name:'Oceania')

#Admins
a1 = Admin.create!(user_id:u1.id,super_admin:true,geofence_id:nil)
a1 = Admin.create!(user_id:u12.id,super_admin:false,geofence_id:geof01.id)
a1 = Admin.create!(user_id:u13.id,super_admin:false,geofence_id:geof03.id)
# admin02 = Admin.create!(user_id:user04.id,super_admin:false,geofence_id:geof02.id)
# admin03 = Admin.create!(user_id:user03.id,super_admin:true,geofence_id:nil)


#Posts
#


p1 = Post.create!(user_id:u4.id,title:"Mueranse TODOS!!!!",content:"Muajajaja",is_open:true,is_solved:false)
r1 = Report.create(post_id:p1.id, user_id:u6.id,content:"Venga hombre...")
r1 = Report.create(post_id:p1.id, user_id:u7.id,content:"Tranquilo perrito")
r1 = Report.create(post_id:p1.id, user_id:u8.id,content:"Ya cortala")

p1 = Post.create!(user_id:u4.id,title:"Mueranse TODOS!!!! X2",content:"JIJIJIJI",is_open:true,is_solved:false)
r1 = Report.create(post_id:p1.id, user_id:u6.id,content:"Suficiente")
r1 = Report.create(post_id:p1.id, user_id:u7.id,content:"Suficiente perrito")

lp1 = Location.create!(name:"Portal la dehesa", latitude:-33.357299, longitude: -70.515253)
p1 = Post.create!(user_id:u2.id,title:"Todo Malo",content:"Esta Tienda me tiene chato, todo sus productos salen defectuosos",is_open:false,is_solved:true, location:lp1, include_location:true)
p1c1 = Comment.create!(user_id:u11.id, post_id:p1.id,content:"Pesima Atencion. 0/5.")
p1c1r1 = Comment.create!(user_id:u2.id, post_id:p1.id, comment_id:p1c1.id, content:"UFFF!!!!")
p1c1r2 = Comment.create!(user_id:u1.id, post_id:p1.id, comment_id:p1c1.id, reply_id:p1c1r1.id, content:"ARRRGGG")
# post02 = Post.create!(user_id:user04.id,title:"Hey listen",content:"I'm quite recognized for my eloquent decision making. People often say that I take 'Bad Choices'",is_open:false,is_solved:true)
# post03 = Post.create!(user_id:user04.id,title:"Dumpster",content:"Dumpster!",is_open:false,is_solved:true)

p2 = Post.create!(user_id:u5.id,title:"Profe Filosofia",content:"El Profe de Filosofia de las ciencias nunca llego a la clase. Nos dejo ahi tirados -.-",is_open:true,is_solved:false)
p1c1 = Comment.create!(user_id:u11.id, post_id:p2.id,content:"Como tan desubicado??")
p1c1r1 = Comment.create!(user_id:u2.id, post_id:p2.id, comment_id:p1c1.id, content:"Escuche que dejo escrito en la pizarra q se cancelaron las clases")
p1c1r2 = Comment.create!(user_id:u1.id, post_id:p2.id, comment_id:p1c1.id, reply_id:p1c1r1.id, content:"Pero como es posible que no haya mandado mail...")
p1c1r1 = Comment.create!(user_id:u2.id, post_id:p2.id, comment_id:p1c1.id, content:"Ese profesor es gino_vera@gmail.com y es pesimo!!!")
Tag.create(user_id: l9.id, comment_id: p1c1r1.id, post_id: p2.id)
# post02 = Post.create!(user_id:user04.id,title:"Hey listen",content:"I'm quite recognized for my eloquent decision making. People often say that I take 'Bad Choices'",is_open:false,is_solved:true)
# post03 = Post.create!(user_id:user04.id,title:"Dumpster",content:"Dumpster!",is_open:false,is_solved:true)

# Blacklist
# bl01 = Blacklist.create!(user_id:user03.id,exit_date:Time.now.yesterday)
# bl02 = Blacklist.create!(user_id:user03.id,exit_date:Time.now)
# bl03 = Blacklist.create!(user_id:user04.id,exit_date:nil)
# bl04 = Blacklist.create!(user_id:user05.id,exit_date:Time.now)

# Comments
# comment01 = Comment.create!(post_id:post01.id, comment_id:nil, user_id:user04.id,content:"Ahh CTM")

# Dumpster
# Dumpster.create!(post_id:post03.id, exit_date:Time.now.tomorrow)
# Dumpster.create!(post_id:post01.id)
# Dumpster.create!(post_id:post03.id)
# Dumpster.create!(post_id:post02.id, exit_date:Time.now)


Follow.create(user_id:u1.id, post_id: p1.id)
Follow.create(user_id:u2.id, post_id: p1.id)
Follow.create(user_id:u6.id, post_id: p1.id)
Follow.create(user_id:u7.id, post_id: p1.id)
Follow.create(user_id:u9.id, post_id: p1.id)


Follow.create(user_id:u1.id, post_id: p2.id)
Follow.create(user_id:u2.id, post_id: p2.id)
Follow.create(user_id:u6.id, post_id: p2.id)
Follow.create(user_id:u7.id, post_id: p2.id)
Follow.create(user_id:u9.id, post_id: p2.id)

Validation.create(user_id:u1.id, post_id: p1.id, validation_type:'like')
Validation.create(user_id:u3.id, post_id: p1.id, validation_type:'like')
Validation.create(user_id:u5.id, post_id: p1.id, validation_type:'like')
Validation.create(user_id:u6.id, post_id: p1.id, validation_type:'like')
Validation.create(user_id:u7.id, post_id: p1.id, validation_type:'like')
Validation.create(user_id:u9.id, post_id: p1.id, validation_type:'dislike')
Validation.create(user_id:u11.id, post_id: p1.id, validation_type:'like')

Validation.create(user_id:u2.id, post_id: p1.id, validation_type:'dislike')
Validation.create(user_id:u4.id, post_id: p1.id, validation_type:'dislike')
Validation.create(user_id:u8.id, post_id: p1.id, validation_type:'dislike')
Validation.create(user_id:u10.id, post_id: p1.id, validation_type:'dislike')

Validation.create(user_id:u1.id, post_id: p2.id, validation_type:'like')
Validation.create(user_id:u3.id, post_id: p2.id, validation_type:'like')
Validation.create(user_id:u5.id, post_id: p2.id, validation_type:'like')
Validation.create(user_id:u6.id, post_id: p2.id, validation_type:'like')
Validation.create(user_id:u7.id, post_id: p2.id, validation_type:'like')
Validation.create(user_id:u9.id, post_id: p2.id, validation_type:'dislike')
Validation.create(user_id:u11.id, post_id: p2.id, validation_type:'like')

Validation.create(user_id:u2.id, post_id: p2.id, validation_type:'dislike')
Validation.create(user_id:u4.id, post_id: p2.id, validation_type:'dislike')
Validation.create(user_id:u8.id, post_id: p2.id, validation_type:'dislike')
Validation.create(user_id:u10.id, post_id: p2.id, validation_type:'dislike')


# Locations
Location.create!([
                  { "name": "Buckingham Palace", "latitude": "51.501564","longitude": "-0.141944"},
                  { "name": "Westminster Abbey", "latitude": "51.499581", "longitude": "-0.127309"},
                  { "name": "Big Ben", "latitude": "51.500792", "longitude": "-0.124613"}
              ])