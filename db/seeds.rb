Review.create!([
  {user_id: 1, text: "This studio is awesome! The people there are so nice and the teachers are, too! If you like dance but aren't planning on being a professional, this is the place for you!", rating: 8, studio_id: 1},
  {user_id: 1, text: "They are not nice people there don't go there!", rating: 5, studio_id: 2}
])
Studio.create!([
  {name: "North Suburban School of Dance (NSSOD)"},
  {name: "DancEd"}
])
User.create!([
  {name: "elliebelly121100@yahoo.com", bio: "I take 7 dance classes a week, Jazz, Tap, Ballet, Contemporary, Modern, Choreo/improv, and a class called Jumps, Leaps, and Turns. I created this website.", password_digest: "$2a$10$moD8edBfxKBcB.827KvtfeC4BhQ5ocpzf.RCv394pevpQ4wWA07te", img: "https://s3.amazonaws.com/production.lanternhq.com/users/avatars/000/002/665/medium/IMG_0107.PNG?1405984422"},
  {name: "sandor@starterleague.com", bio: "Starter League employee. Teahces the Ruby on Rails class.", password_digest: "$2a$10$UaDzGNoGOmr0mEUkS/VTx.BhvcpHOoz6a/VEsHn.k/J9HUBojdTJC", img: "https://www.gravatar.com/avatar/2c42a8c4d29b93e28629b07a1ce879c9?size=300&default=https://d1m7a0riipm4u5.cloudfront.net/assets/default-avatars/default-avatars-s-4d807749bd4a2d5d7554a8a2ae46f4d1.jpg"},
  {name: "harsha@starterleague.com", bio: "one of the TA's for Ruby On Rails.", password_digest: "$2a$10$47jwph13PMsYf2q6UTV7w.tztm.f1KUFXs3mO9LtrQoqsDmJFbahq", img: "https://s3.amazonaws.com/production.lanternhq.com/users/avatars/000/000/108/medium/IMG_4852.png?1404777271"},
  {name: "josephbreen2016@u.northwestern.edu", bio: "another TA for Ruby on Rails", password_digest: "$2a$10$f9mQsTYgVgd9jcYNApMIDeQ0154XeSYY9StzTFqq0C4Y9REWdBRvK", img: "https://s3.amazonaws.com/production.lanternhq.com/users/avatars/000/002/683/medium/prof_pic.jpg?1405956305"}
])
