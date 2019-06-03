

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
admin01 = Admin.create!(user_id:user06.id,super_admin:true,geofence:nil)
admin02 = Admin.create!(user_id:user04.id,super_admin:false,geofence:"Chile")
admin03 = Admin.create!(user_id:user05.id,super_admin:true,geofence:nil)


#Posts
post01 = Post.create!(user_id:user03.id,title:"Titulo",content:"Post de prueba",is_open:true,is_solved:false)
post02 = Post.create!(user_id:user04.id,title:"Hey listen",content:"I'm quite recognized for my eloquent decision making. People often say that I take 'Bad Choices'",is_open:false,is_solved:true)


# Comments
comment01 = Comment.create!(post_id:post01.id, comment_id:nil, user_id:user04.id,content:"Ahh CTM")
