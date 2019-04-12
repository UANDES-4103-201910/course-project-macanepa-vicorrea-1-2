

#Users
user01 = User.create(name:"Matias",last_name:"Canepa",username:"macanepa",email:"macanepa@miandes.cl",password:"123456789",last_login:Time.now)
user02 = User.create(name:"Vicente",last_name:"Correa",username:"vicorrea",email:"vicorrera@miandes.cl",password:"123456789",last_login:Time.now)
user03 = User.create(name:"Ignacio",last_name:"Figueroa",username:"BadBoiLusho",email:"ifigueroa@miandes.cl",password:"password",last_login:Time.now)
user04 = User.create(name:"Joaquin",last_name:"Canepa",username:"jcanepag",email:"jcanepag@hotmail.cl",password:"wiwiwiwi",last_login:Time.now)


#Profiles
profile01 = Profile.create(user:user01,picture:"pic Mati",biography:"This is my Bio!",country:"Chile",city:"Santiago")
profile02 = Profile.create(user:user02, picture:"pic Correa",biography:"This is my Bio!",country:"Chile",city:"Santiago")
profile03 = Profile.create(user:user03, picture:"pic Lusho",biography:"Soy un Lushito muy enojon",country:"Chile",city:"Santiago")
profile04 = Profile.create(user:user04, picture:"pic Joako",biography:"This is my Bio!",country:"Chile",city:"Santiago")


#Admins
admin01 = Admin.create(username:"admin_01",password:"123abcdef",email:"admin@miuandes.cl",admin_type:"admin",last_access:Time.now)
admin02 = Admin.create(username:"admin_02",password:"123456789",email:"super_admin@miuandes.cl",admin_type:"super_admin",last_access:Time.now)


#Posts
post01 = Post.create(user:user01,title:"I'm very angry!",content:"ARGGG!")
post02 = Post.create(user:user02,title:"Soy Correa y toy enojao!",content:">:[")
post03 = Post.create(user:user03,title:"F#%& al B!tches",content:"Ñaca Ñaca Ñaca!")
post04 = Post.create(user:user02,title:"Auto mal estacionao",content:"Yapue cauros, aprendan a estacionarse!")


#Comments
comment01 = Comment.create(post:post02,user:user01,content:"You right my boi!")
comment02 = Comment.create(post:post02,user:user02,comment:comment01, content:"Thanks boi!")
comment03 = Comment.create(post:post04,user:user04, content:"Siempre se estacionan mal los wnsitos!! D:")
comment04 = Comment.create(post:post04,user:user01, comment:comment03, content:"Deberian prohibirles el ingreso")

val01 = Validation.create(user:user01,post:post03,validation_type:-1)
val01 = Validation.create(user:user02,post:post03,validation_type:-1)
val01 = Validation.create(user:user03,post:post03,validation_type:1)
val01 = Validation.create(user:user04,post:post03,validation_type:-1)

val01 = Validation.create(user:user01,post:post04,validation_type:1)
val01 = Validation.create(user:user02,post:post04,validation_type:1)
val01 = Validation.create(user:user03,post:post04,validation_type:1)
val01 = Validation.create(user:user04,post:post04,validation_type:1)


fp1=FollowPost.create(user:user01,post:post04)
fp2=FollowPost.create(user:user01,post:post02)

fp3=FollowPost.create(user:user04,post:post02)
fp4=FollowPost.create(user:user02,post:post02)


#Blacklist
blacklist01 = Blacklist.create(user:user03)

#Dumpster
dumpster01 = Dumpster.create(post:post03)
