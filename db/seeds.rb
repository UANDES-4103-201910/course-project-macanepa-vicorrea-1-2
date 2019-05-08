

# # Users
user01 = User.create(name:"Matias",last_name:"Canepa",email:"macanepa@miandes.cl",password:"123456789",last_access:Time.now)
user02 = User.create(name:"Vicente",last_name:"Correa",email:"vicorrea@miuandes.cl",password:"123",last_access:Time.now)


#Profiles
profile01 = Profile.create(user_id:user01.id,image:"pic Mati",biography:"This is my Bio!",country:"Chile",city:"Santiago")
profile02 = Profile.create(user_id:user02.id,image:"La foto del Vin",biography:"Perro Zorron, amante de la piscola y sus wenas pinchangas papito. \n-4P",country:"Italia",city:"Venecia")

#Admins
admin01 = Admin.create(user_id:user01.id,super_admin:true,geofence:nil)


#Posts
post01 = Post.create(user_id:1,title:"I'm very angry!",content:"ARGGG!")
post02 = Post.create(user_id:2,title:"I'm very happy!",content:"ARGGG!")


#Comments
comment01 = Comment.create!(post_id:post01.id, comment_id:nil, user_id:user01.id,content:"U wrong bro.")
comment02 = Comment.create!(post_id:post01.id, comment_id:comment01.id, user_id:user02.id,content:"Y tho...")


val01 = Validation.create(user_id:user01.id,post_id:post01.id,validation_type:'like')
val02 = Validation.create(user_id:user01.id,post_id:post02.id,validation_type:'dislike')

sh01 = SharedPost.create!(user_id:user01.id, post_id:post02.id)
sh02 = SharedPost.create!(user_id:user01.id, post_id:post01.id)

sh03 = SharedPost.create!(user_id:user02.id, post_id:post01.id)

fp1=Follow.create(user_id:user01.id,post_id:post01.id)

#Blacklist
blacklist01 = Blacklist.create(user_id:user01.id)

#Dumpster
dumpster01 = Dumpster.create(post_id:post01.id)