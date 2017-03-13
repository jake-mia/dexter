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
  "30 Day Functional Fitness Challenge" => [
    {
      name: "Day 1",
      description: "5 push ups | 10 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 9.hours,
      Tmsg: "Commiting to a challenge is the most important step, you got this!"
    },
    {
      name: "Day 2",
      description: "10 dips | 10 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 2.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 3",
      description: "5 push ups | 10 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 3.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 4",
      description: "10 dips | 10 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 4.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 5",
      description: "REST",
      completed: false,
      complete_by: DateTime.now.midnight + 5.days + 9.hours,
      Tmsg: "Great job on completing your first week! Get some rest today, you've earned it."
    },
    {
      name: "Day 6",
      description: "10 push ups | 15 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 6.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 7",
      description: "15 dips | 15 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 7.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 8",
      description: "10 push ups | 20 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 8.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 9",
      description: "15 dips | 15 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 9.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 10",
      description: "15 push ups | 20 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 10.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 11",
      description: "REST",
      completed: false,
      complete_by: DateTime.now.midnight + 11.days + 9.hours,
      Tmsg: "Don't forget to give your body some rest today!"
    },
    {
      name: "Day 12",
      description: "20 dips | 20 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 12.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 13",
      description: "15 push ups | 30 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 13.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 14",
      description: "20 dips | 20 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 14.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 15",
      description: "15 push ups | 30 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 15.days + 9.hours,
      Tmsg: "You're officially half way through the challenge! Take a second to look at how far you've come!"
    },
    {
      name: "Day 16",
      description: "25 dips | 25 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 16.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 17",
      description: "REST",
      completed: false,
      complete_by: DateTime.now.midnight + 17.days + 9.hours,
      Tmsg: "Get some rest today, you've been putting in a lot of work!"
    },
    {
      name: "Day 18",
      description: "20 push ups | 30 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 18.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 19",
      description: "25 dips | 25 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 19.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 20",
      description: "20 push ups | 25 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 20.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 21",
      description: "30 dips | 30 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 21.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 22",
      description: "25 push ups | 25 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 22.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 23",
      description: "30 dips | 30 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 23.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 24",
      description: "REST",
      completed: false,
      complete_by: DateTime.now.midnight + 24.days + 9.hours,
      Tmsg: "You're almost at the 30 day mark, keep up the hard work!"
    },
    {
      name: "Day 25",
      description: "25 push ups | 40 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 25.days + 9.hours,
      Tmsg: "40 squats?! Woah, great job!"
    },
    {
      name: "Day 26",
      description: "35 dips | 35 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 26.days + .hours,
      Tmsg: ""
    },
    {
      name: "Day 27",
      description: "25 push ups | 45 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 27.days + .hours,
      Tmsg: ""
    },
    {
      name: "Day 28",
      description: "35 dips | 35 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 28.days + .hours,
      Tmsg: ""
    },
    {
      name: "Day 29",
      description: "30 push ups | 50 squats",
      completed: false,
      complete_by: DateTime.now.midnight + 29.days + 9.hours,
      Tmsg: ""
    },
    {
      name: "Day 30",
      description: "40 dips | 40 lunges",
      completed: false,
      complete_by: DateTime.now.midnight + 30.days + 9.hours,
      Tmsg: "Congrats on making it to your last day! Finish strong!"
    },
    ], # end of first set of steps args
  "Running Challenge" => [
    {
      name: "Day 1",
      description: "4 minute walk, 1 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 8.hours,
      Tmsg: "It's a beautiful day to go for a walk today!"
    },
    {
      name: "Day 2",
      description: "4 min walk, 1 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 2.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 3",
      description: "2 min walk, 2 min run. 2 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 3.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 4",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 4.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 5",
      description: "1 min walk, 10 sec sprint. 5 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 5.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 6",
      description: "2 min walk, 2 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 6.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 7",
      description: "3 min walk, 2 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 7.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 8",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 8.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 9",
      description: "2 min walk, 2 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 9.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 10",
      description: "2 min walk, 10 sec sprint. 5 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 10.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 11",
      description: "5 min walk, 2 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 11.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 12",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 12.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 13",
      description: "2 min walk, 3 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 13.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 14",
      description: "2 min walk, 2 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 14.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 15",
      description: "2 min walk, 20 sec sprint. 5 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 15.days + 20.hours,
      Tmsg: "You're half way there, take a second to look at all the progress you've made!"
    },
    {
      name: "Day 16",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 16.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 17",
      description: "3 min walk, 3 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 17.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 18",
      description: "2 min walk, 3 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 18.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 19",
      description: "3 min walk, 3 min run. 5 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 19.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 20",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 20.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 21",
      description: "1 min walk, 1 min run. 5 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 21.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 22",
      description: "1 min walk, 2 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 22.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 23",
      description: "1 min walk, 3 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 23.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 24",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 24.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 25",
      description: "2 min walk, 25 sec sprint. 5 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 25.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 26",
      description: "1 min walk, 4 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 26.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 27",
      description: "2 min walk, 4 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 27.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 28",
      description: "15 min walk",
      completed: false,
      complete_by: DateTime.now.midnight + 28.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 29",
      description: "2 min walk, 5 min run. 3 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 29.days + 20.hours,
      Tmsg: ""
    },
    {
      name: "Day 30",
      description: "2 min walk, 5 min run. 4 sets",
      completed: false,
      complete_by: DateTime.now.midnight + 30.days + 8.hours,
      Tmsg: "Congrats on finishing the running challenge! Look how much you can run compared to before!"
    },
  ],
  "Water Challenge" => [
    {
      name: "First glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 8.hours,
      Tmsg: "Stay hydrated!"
    },
    {
      name: "Second Glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 10.hours,
      Tmsg: "Stay Hydrated!"
    },
    {
      name: "Third Glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 12.hours,
      Tmsg: "Stay Hydrated!"
    },
    {
      name: "Fourth glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 14.hours,
      Tmsg: "Stay Hydrated!"
    },
    {
      name: "Fifth Glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 16.hours,
      Tmsg: "Stay Hydrated!"
    },
    {
      name: "Sixth Glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 18.hours,
      Tmsg: "Stay Hydrated!"
    },
    {
      name: "Seventh glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 20.hours,
      Tmsg: "Stay Hydrated!"
    },
    {
      name: "Eight Glass",
      description: "Drink 12oz!",
      completed: false,
      complete_by: DateTime.now.midnight + 1.days + 21.hours,
      Tmsg: "Stay Hydrated!"
    }
  ]
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
