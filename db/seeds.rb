# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Active Record Commands
#van = Product.create(name: '70s Shag Van', image_link: 'http://i677.photobucket.com/albums/vv136/metal_skoan/bountyhunter.jpg', description: 'This van is ideal for perverts and other predators wondering the streets of wynwood.  The two large side doors open instantly for grabbing your prey.', price_in_cents: 9900)
#Review.create(product_id: van.id, comment: 'The product is very nice.. works most of the time')
#
#cat = Product.create(name: 'Coding Cat', image_link: 'http://i1188.photobucket.com/albums/z412/MARIAMAGNOLIA1/266908715386383481_j237LY7P_c.jpg', description: 'Coding cat works on your projects while you sleep.  He knows ruby and he\'s pretty good with Rails too.', price_in_cents: 1999)
#Review.create(product_id: cat.id, comment: 'Dude!! Coding cat rocks... he wrote my whole app for me.')
#Review.create(product_id: cat.id, comment: 'This guy kills it!... not only does he understand the MVC model but he is a chick magnet.')

#
# Dexter
#
# Remember to clear challenge and steps table to load new

step_args  = {
  "30 Functional Fitness Challenge" => [
    {
      name: "Day 1",
      description: "5 push ups | 10 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 2",
      description: "10 dips | 10 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 3",
      description: "5 push ups | 10 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 4",
      description: "10 dips | 10 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 5",
      description: "REST",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 6",
      description: "10 push ups | 15 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 7",
      description: "15 dips | 15 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 8",
      description: "10 push ups | 20 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 9",
      description: "15 dips | 15 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 10",
      description: "15 push ups | 20 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 11",
      description: "REST",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 12",
      description: "20 dips | 20 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 13",
      description: "15 push ups | 30 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 14",
      description: "20 dips | 20 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 15",
      description: "15 push ups | 30 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 16",
      description: "25 dips | 25 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 17",
      description: "REST",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 18",
      description: "20 push ups | 30 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 19",
      description: "25 dips | 25 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 20",
      description: "20 push ups | 25 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 21",
      description: "30 dips | 30 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 22",
      description: "25 push ups | 25 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 23",
      description: "30 dips | 30 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 24",
      description: "REST",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 25",
      description: "25 push ups | 40 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 26",
      description: "35 tricep dips | 35 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 27",
      description: "25 push ups | 45 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 28",
      description: "35 dips | 35 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 29",
      description: "30 push ups | 50 squats",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 30",
      description: "40 dips | 40 lunges",
      completed: false,
      complete_by: Time.now.utc
    },
    ], # end of first set of steps args
  "Running Challenge" => [
    {
      name: "Workout 1",
      description: "4 minute walk, 1 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 2",
      description: "4 min walk, 1 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 3",
      description: "2 min walk, 2 min run. 2 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 4",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 5",
      description: "1 min walk, 10 sec sprint. 5 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 6",
      description: "2 min walk, 2 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 7",
      description: "3 min walk, 2 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 8",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 9",
      description: "2 min walk, 2 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 10",
      description: "2 min walk, 10 sec sprint. 5 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 11",
      description: "5 min walk, 2 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 12",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 13",
      description: "2 min walk, 3 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 14",
      description: "2 min walk, 2 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 15",
      description: "2 min walk, 20 sec sprint. 5 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 16",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 17",
      description: "3 min walk, 3 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 18",
      description: "2 min walk, 3 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 19",
      description: "3 min walk, 3 min run. 5 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 20",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 21",
      description: "1 min walk, 1 min run. 5 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 22",
      description: "1 min walk, 2 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 23",
      description: "1 min walk, 3 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 24",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 25",
      description: "2 min walk, 25 sec sprint. 5 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 26",
      description: "1 min walk, 4 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 27",
      description: "2 min walk, 4 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 28",
      description: "15 min walk",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 29",
      description: "2 min walk, 5 min run. 3 sets",
      completed: false,
      complete_by: Time.now.utc
    },
    {
      name: "Workout 30",
      description: "2 min walk, 5 min run. 4 sets",
      completed: false,
      complete_by: Time.now.utc
    },
  ],
}

step_args.each do |challenge_name, steps|
  c = Challenge.find_by(name: challenge_name)
  if c.nil?
    c = Challenge.create(name: challenge_name)
    steps.each do |step|
      c.steps.create(step)
    end
  end
end
