# README

* For this project assignment (that is not yet implemented the login session with cookies and those things), there are three buttons in the footer that you can use to navigate by the web page, and right next to them you can see the current view. THIS THINGS DO NOT APPEAR IN THE REAL FOOTER. Only appear the AUP and ToS links.
Also you can navigate through guest and regular user views using login/sign up and log out buttons.

* If you see the admin modals incomplete (without titles, user emails, etc), please press ENTER on the url. This is for an error loading the javascript.

* Postman collection link: https://www.getpostman.com/collections/9f04bfe4bacef5e587a8


#Current Features

Posts (create, view, view publisher, comment [tag user by @username], report, follow, 
show images & attachments like/dislike, share, show location)

Search ([posts by Title/description & Author] [profiles by Nickname & location])

Admin(manage [users, posts, blacklist, dumpster, suspension list, block list])

SuperAdmin(manage same as admin plus [admins, users(make admin)]) #In 
this assignment the default Admin is SuperAdmin (user_id:2, admin_id:1). If yo want to test 
normal admin capabilities set the attribute super_admin:false to
admin_id:1

Login (Normal & Google Login, Password Recovery) & SignUp Menu

UserProfile(view, modify, recent posts, recent activity (like, dislike, share, comment)

ToS/AUP (show) #they have temporary modals in where the final files will be shown


#Upcoming Features

Posts:
* Show the actual file attachments
* Show the actual file image
* Show the actual map
* Remove Files (Images & Attachments)

* Show who liked/disliked/shared the posts

Edit:
* Edit modals must be constructed for posts, admins users(from admin menu)