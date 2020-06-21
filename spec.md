# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
I built this app using Sinatra.

- [x] Use ActiveRecord for storing information in a database
I used ActiveRecord to communicate with my database.

- [x] Include more than one model class (e.g. User, Post, Category)
I created a User model class as well as a Beat model class.

- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
Included a User has_many Beats relationship.

- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
Included a Beat belongs_to User relationship

- [x] Include user accounts with unique login attribute (username or email)
Included user accounts that validates username uniqueness before creating an account.

- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
Built Create(Upload), Read(Show), Update(Edit), and Destroy(Delete) routes for Beats.

- [x] Ensure that users can't modify content created by other users
Implemented proper authorization so beats may only be modified by the user who uploaded it.

- [x] Include user input validations
Implemented validations for user input forms.

- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
Added error displays upon validation failures such as incorrect username or password.

- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Updated my README.md to meet the above criteria.