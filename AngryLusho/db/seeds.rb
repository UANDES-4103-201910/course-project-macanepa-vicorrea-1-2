#Profiles
profile01 = Profile.create(picture:"pic Mati",biography:"This is my Bio!",country:"Chile",city:"Santiago")
profile02 = Profile.create(picture:"pic Correa",biography:"This is my Bio!",country:"Chile",city:"Santiago")

#Users
user01 = User.create(username:"Matias",email:"macanepa@miandes.cl",password:"123",last_login:Time.now,profile:profile01)
user02 = User.create(username:"Vicente",email:"vicorrera@miandes.cl",password:"123",last_login:Time.now,profile:profile02)
user03 = User.create(username:"BadBoiLusho",email:"ifigueroa@miandes.cl",password:"123",last_login:Time.now,profile:profile02)

#Admins
admin01 = Admin.create(username:"admin_01",password:"123",email:"admin@miuandes.cl",admin_type:"admin",last_access:Time.now)
admin02 = Admin.create(username:"admin_02",password:"123",email:"super_admin@miuandes.cl",admin_type:"super_admin",last_access:Time.now)


#Posts
post01 = Post.create(user:user01,title:"I'm very angry!",content:"ARGGG!")
post02 = Post.create(user:user02,title:"Soy Correa y toy enojao!",content:">:[")
post03 = Post.create(user:user03,title:"F#%& al B!tches",content:"Ñaca Ñaca Ñaca!")


#Comments
comment01 = Comment.create(post:post02,user:user01,content:"You right my boi!")
comment02 = Comment.create(post:post02,user:user02,comment:comment01, content:"Thanks boi!")

#Blacklist
blacklist01 = Blacklist.create(user:user03)

#Dumpster
dumpster01 = Dumpster.create(post:post03)