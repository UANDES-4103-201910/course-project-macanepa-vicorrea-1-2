

# # Users
user01 = User.create(name:"Matias",last_name:"Canepa",email:"macanepa@miandes.cl",password:"123456789",last_access:Time.now)
user02 = User.create(name:"Vicente",last_name:"Correa",email:"vicorrea@miuandes.cl",password:"123",last_access:Time.now)


#Profiles
profile01 = Profile.create(user_id:user01.id,image:"pic Mati",biography:"This is my Bio!",country:"Chile",city:"Santiago")
profile02 = Profile.create(user_id:user02.id,image:"La foto del Vin",biography:"Removes the default list-style and left margin on list items (works on both <ul> and <ol>). This class only applies to immediate children list items (to remove the default list-style from any nested lists, apply this class to any nested lists as well)",country:"Italia",city:"Venecia")

#Admins
admin01 = Admin.create(user_id:user01.id,super_admin:true,geofence:nil)


#Posts
post01 = Post.create(user_id:1,title:"I'm very angry!",content:"ARGGG!")
post02 = Post.create(user_id:1,title:"I'm very happy!",content:"ARGGG!")


#Comments
comment01 = Comment.create(post_id:post01.id,user_id:user01.id,content:"You right my boi!")

val01 = Validation.create(user_id:user01.id,post_id:post01.id,validation_type:'like')

fp1=Follow.create(user_id:user01.id,post_id:post01.id)

#Blacklist
blacklist01 = Blacklist.create(user_id:user01.id)

#Dumpster
dumpster01 = Dumpster.create(post_id:post01.id)