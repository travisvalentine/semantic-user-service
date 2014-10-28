User.delete_all

#####################
### Create Users
#####################

will = User.create(email: "will@test.com", password: "password",
                   password_confirmation: "password", username: "wallacewe",
                   name: "Will Wallace", location: "Arlington, VA",
                   website: "wallace.com", about: "Awesome")

travis = User.create(email: "travis@test.com", password: "password",
                     password_confirmation: "password", username: "travisvalentine",
                     name: "Travis Valentine", location: "Washington, DC",
                     website: "tcvalentine.com", about: "Ginger")
