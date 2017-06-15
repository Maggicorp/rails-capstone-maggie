Maggie Casey Rails Capstone Backend

Links:

MaggiCorp GitHub - https://github.com/Maggicorp

Deployed Front End - https://maggicorp.github.io/ember-capstone-maggie/

Repo Front End - https://github.com/Maggicorp/ember-capstone-maggie

Deployed Back End - https://lit-citadel-67931.herokuapp.com/

Repo Back End - https://github.com/Maggicorp/ember-capstone-maggie

Technologies Used
Ruby on Rails
Heroku

About Haiku You

The back end of Haiku You uses two resources, users and poems.  A user has many poems.  The use of the wordsAPI to count syllables makes the ajax call from the front end using ember-ajax and stores that data locally, so it does not involve the back end api.  The back end server is deployed to Heroku.  All actions require authention, except the get published poems get request, which is public.

I think it would be interested to have votes, which would be an additional column in the poem resource, and would allow published poems to be displayed or hidden based on the number of up votes or down votes.  I would also like to make an admin login who would be able to remove haiku from the published section at their discretion.

API Routes

resources :poems, except: [:new, :edit]
Poem routes are to write, edit, show, and delete haiku for a specific signed in user

get '/published' => 'poems#published'
pubished rout is a get method that gets published haiku from all users

user routes are for login and logout
post '/sign-up' => 'users#signup'
post '/sign-in' => 'users#signin'
delete '/sign-out/:id' => 'users#signout'
patch '/change-password/:id' => 'users#changepw'

Installation instructions
run bundle install

ERD - https://drive.google.com/open?id=0B8QUtri9n-m_RFEtVWRZeTNwQzQ
