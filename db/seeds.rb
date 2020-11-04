# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.delete_all
# . . .
Post.create!(title: 'Cooking the grate Bangladeshi Dish',
             description:
                 %{<p>
The next step in the evolution of user interfaces is here.
Chatbots let your users interact with your service in their
own natural language. Use free and open source tools along
with Ruby to build creative, useful, and unexpected interactions
for users. Take advantage of the Lita framework’s step-by-step
implementation strategy to simplify bot development and testing.
From novices to experts, chatbots are an area in which everyone
can participate. Exercise your creativity by creating chatbot
skills for communicating, information, and fun.
</p>},
             image_url: 'dpchat.jpg')

Post.create!(title: 'Cooking Bangladeshi Dish',
             description:
                 %{<p>
Use free and open source tools alongwith Ruby to build creative,
useful, and unexpected interactionsfor users. Take advantage of
the Lita framework’s step-by-step implementation strategy to
simplify bot development and testing.From novices to experts,
chatbots are an area in which everyonecan participate. Exercise
your creativity by creating chatbotskills for communicating,
information, and fun.</p>},
             image_url: '7apps.jpg')

Post.create!(title: 'Cooking the grate Dish',
             description:
                 %{<p>
Use free and open source tools along with Ruby to build creative,
useful, and unexpected interactionsfor users. Take advantage of
the Lita framework’s step-by-stepimplementation strategy to simplify
bot development and testing.From novices to experts, chatbots are an
area in which everyone can participate.</p>},
             image_url: 'lorem.jpg')