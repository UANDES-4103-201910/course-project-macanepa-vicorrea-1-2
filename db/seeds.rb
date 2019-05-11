

# # Users
user01 = User.create(name:"Matias",last_name:"Canepa",email:"macanepa@miuandes.cl",password:"123456789",last_access:Time.now)
user02 = User.create(name:"Vicente",last_name:"Correa",email:"vicorrea@miuandes.cl",password:"123",last_access:Time.now)
user03 = User.create(name:"Lusho",last_name:"el Angry",email:"angry_lusho@miuandes.cl",password:"123",last_access:Time.now)
user04 = User.create(name:"Giorgio",last_name:"Guggiana",email:"gaguggiana@miuandes.cl",password:"wuwu",last_access:Time.now)
user05 = User.create(name:"Tomas",last_name:"Turbado",email:"tomasturbado@miuandes.cl",password:"wuwu",last_access:Time.now)


#Profiles
profile01 = Profile.create(user_id:user01.id,image:"pic Mati",biography:"This is my Bio!",country:"Chile",city:"Santiago")
profile02 = Profile.create(user_id:user02.id,image:"La foto del Vin",biography:"Perro Zorron, amante de la piscola y sus wenas pinchangas.",country:"Italia",city:"Venecia")
profile03 = Profile.create(user_id:user03.id,image:"foto enojon",biography:"Soy muy enojon. Me enojo por todo >:[",country:"Chile",city:"Santiago")
profile04 = Profile.create(user_id:user04.id,image:"jorge en la roca",biography:"rotsap im se natas",country:"Italia",city:"Milano")

#Admins
admin01 = Admin.create(user_id:user02.id,super_admin:true,geofence:nil)


#Posts
post01 = Post.create(user_id:1,title:"I'm very angry!",content:"ARGGG!")
post04 = Post.create(user_id:1,title:"Testing Title... :D",content:"permiso... WIWI WIWI WIWI WIWI WIWI WIWI WIWI WIWI . \n\n Gracias...")
post02 = Post.create(user_id:2,title:"I'm very happy!",content:"ARGGG!")
post03 = Post.create(user_id:3,title:"I'm super angry!",content:"Yaarggg!!!.... ehm ehm... \n\n\n yasss.")
post06 = Post.create(user_id:2,title:"Auto mal estacionado",content:"Estoy chato de los %$&# que se estacionan como las #$%#\n\n\n Que alguien haga algo al respecto plz.\nGrax.")
post07 = Post.create(user_id:4,title:"Cel muerto",content:"El cel se me hecho a perder, y no me quieren repsponder la garantia :[")
post08 = Post.create(user_id:3,title:"Post para ser bloqueado",content:"Este post sera bloqueado\n\n\n Bieeeen!")


#Comments
comment01 = Comment.create!(post_id:post01.id, comment_id:nil, user_id:user01.id,content:"...")
comment02 = Comment.create!(post_id:post01.id, comment_id:comment01.id, user_id:user02.id,content:"Que te paaasa")

comment03 = Comment.create!(post_id:post03.id, comment_id:nil, user_id:user01.id,content:"tranquilo perrito")
comment04 = Comment.create!(post_id:post03.id, comment_id:comment03.id, user_id:user01.id,content:"Pq no te haces Industrial?")
comment07 = Comment.create!(post_id:post07.id, comment_id:nil, user_id:user01.id,content:"Que mala vola Jorge!!!")
comment08 = Comment.create!(post_id:post07.id, comment_id:comment07.id, user_id:user04.id,content:"Yes Yes...")
comment07 = Comment.create!(post_id:post07.id, comment_id:nil, user_id:user02.id,content:"Animo men")


val01 = Validation.create(user_id:user01.id,post_id:post01.id,validation_type:'like')
val02 = Validation.create(user_id:user01.id,post_id:post02.id,validation_type:'like')
val02 = Validation.create(user_id:user02.id,post_id:post01.id,validation_type:'like')

val02 = Validation.create(user_id:user01.id,post_id:post07.id,validation_type:'like')
val02 = Validation.create(user_id:user01.id,post_id:post06.id,validation_type:'like')

val02 = Validation.create(user_id:user04.id,post_id:post01.id,validation_type:'like')
val02 = Validation.create(user_id:user04.id,post_id:post02.id,validation_type:'like')
val02 = Validation.create(user_id:user04.id,post_id:post03.id,validation_type:'dislike')

sh01 = SharedPost.create!(user_id:user01.id, post_id:post02.id)
sh02 = SharedPost.create!(user_id:user01.id, post_id:post01.id)

sh03 = SharedPost.create!(user_id:user02.id, post_id:post01.id)

fp1=Follow.create(user_id:user01.id,post_id:post01.id)
fp1=Follow.create(user_id:user01.id,post_id:post07.id)
fp1=Follow.create(user_id:user01.id,post_id:post02.id)
fp1=Follow.create(user_id:user01.id,post_id:post03.id)
fp1=Follow.create(user_id:user01.id,post_id:post06.id)
fp1=Follow.create(user_id:user02.id,post_id:post04.id)

#Blacklist
blacklist01 = Blacklist.create(user_id:user03.id)

#Dumpster
# dumpster01 = Dumpster.create(post_id:post01.id)
dumpster02 = Dumpster.create(post_id:post08.id)

suspension01 = SuspensionList.create!(user_id:user03.id,exit_date:Time.now)

block_list01 = BlockList.create!(user_id:user05.id,exit_date:Time.now)