# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredients = %w(lemon ice 'mint leaves' redbull jagermeister sugar tonic gin rhum)
ingredients.each { |ingredient| Ingredient.create(name: ingredient) }

cocktails = [
  {
    name: "mojito",
    picture: "http://www.whouhou.com/wp-content/uploads/2015/08/tray-of-mojitos.jpg"
  },
  {
    name: "jager bomb",
    picture: "http://theseasonaire.com/wp-content/uploads//Jagerbomb-470-wplok.jpg"
  },
  {
    name: "gin tonic",
    picture: "http://www.slate.com/content/dam/slate/articles/life/drink/2013/08/130826_DRINK_gin-and-tonic.jpg.CROP.article568-large.jpg"
  }
]

cocktails.each { |cocktail| Cocktail.create(cocktail) }
