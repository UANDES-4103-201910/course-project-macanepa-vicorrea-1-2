# README ANGRYLUSHO ASSIGNMENT 3

Developed by:

> Matías Cánepa

> Vicente Correa
  

## Current Features in Angrylusho

- System Access 
  - Log in with email address
  - Log in with Google Authentication
  - Log out
- Registration
  - User registration
  - Change password
  - Password recovery (by email recovery)
- User Administration
  - New user
  - View user details
    - Last access
    - User role (regular users and admins are on different menus (Admin show if admin or super_admin))
  - Edit User
    - Change name, last name, password
  - Delete user
- System Administration
  - New administrator (upgrade privilages for regular user)
  - View administrator details
  - Edit administrator
    - Change password
    - Modify geofence
    - Remove geofence
  - Delete administrator (remove privilages for admin (must be super admin to do this))
  - View user blacklist
  - Search for user in blacklist
  - Restore user from blacklist
  - View dumpster
  - Recover (republish) post from dumpster
  - Search for post in dumpster
  - Edit Users
  - Delete Posts
  - Log of following lists
    - Add/Remove from Blacklist
    - Add/Remove from Dumpster
    - Add/Remove from Suspension List
    - Add/Remove from Block List
- User Profile
  - View user profile
  - Edit user profile
    - Edit user fields: bio, location (country & city), profile pic. ("name" is a user attribute)
  - View posts
  - Show Recent Activity (ordered from most recent)
    - Liked/Disiked Posts
    - Shared Posts
    - Commented Posts
  - Shared posts will show in Recent Posts section along side user's own posts
- Posts
  - View post
    - View title, description, location (temporary fake data) and creation date
    - Post location on map
    - View upvotes and downvotes
    - View images
    - View file attachments (and download them)
  - Delete post
  - Edit post
  - Upvote post (like)
  - Downvote post (dislike)
  - Follow/Unfollow post
  - View OP profile
  - Mark post as inappropriate (report post with description)
  - Set post as closed (solved, unresolved)
    - Don't allow comments on these posts
  - Set post as open (we defined an open post as unresolved)
    - Allow comments on these posts
- Comment threads for posts
  - Add comment to post comments thread
  - Add reply to comment
  - Edit comment
  - Tag user in comment (place the email of an existing user in the comment) (This will create a Tag record & Display a tags section in the comment)
  - View commenter's profile
- Post Search
  - Search by word in title / content
  - Search by author
- User Search
  - Search by nickname (name/last name)
  - Search by location (city/country)

## Upcoming Features

## Bugs
  
  
# For Testing Purposes
## You can see all the accounts at seeds.rb
* Admin:
  - email: gaguggiana@miuandes.cl
  - password: 123456
* Super Admin:
  - email: tt@miuandes.cl
  - password: 123456
* Regular User:
  - email: angry_lusho@miuandes.cl
  - password: 123456
  
