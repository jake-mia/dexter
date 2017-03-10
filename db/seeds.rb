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
  "Healthy Eating" => [
      {
        name: "foo",
        description: "foo info",
        completed: false,
        complete_by: Time.now.utc,
        Tmsg: ""
      },
      {
        name: "bar",
        description: "bar info",
        completed: false,
        complete_by: Time.now.utc,
        Tmsg: ""
      },
      {
        name: "waz",
        description: "waz info",
        completed: false,
        complete_by: Time.now.utc,
        Tmsg: "he-3 test msg"
      },
    ], # end of first set of steps args
  "Fitness" => [
    {
      name: "foo Fitness",
      description: "foo Fitness info",
      completed: false,
      complete_by: Time.now.utc,
      Tmsg: ""
    },
    {
      name: "bar Fitness",
      description: "bar Fitness info",
      completed: false,
      complete_by: Time.now.utc,
      Tmsg: ""
    },
    {
      name: "waz Fitness",
      description: "waz Fitness info",
      completed: false,
      complete_by: Time.now.utc,
      Tmsg: "f-3 test message here"
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
