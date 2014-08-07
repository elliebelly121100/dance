Studio.create!([
  {name: "North Suburban School of Dance (NSSOD)"},
  {name: "DancEd"}
])
Review.create!([
  {user_id: 1, text: "This studio is awesome! The people there are so nice and the teachers are, too! If you like dance but aren't planning on being a professional, this is the place for you!", rating: 8, studio_id: 1},
  {user_id: 1, text: "They are not nice people there don't go there!", rating: 5, studio_id: 2}
])
User.create!([
  {name: "elliebelly121100@yahoo.com", bio: "I take 7 dance classes a week, Jazz, Tap, Ballet, Contemporary, Modern, Choreo/improv, and a class called Jumps, Leaps, and Turns. I created this website.", img: "https://s3.amazonaws.com/production.lanternhq.com/users/avatars/000/002/665/medium/IMG_0107.PNG?1405984422", password_digest: "$2a$10$dJkenZ39fN4cdpYwfmU5Suvz4N32Fo9tpRpNZ9xpM2k5O45VJxynq"}
])
