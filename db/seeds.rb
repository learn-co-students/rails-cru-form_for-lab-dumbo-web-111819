# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Song.destroy_all
Genre.destroy_all

taylor = Artist.create(name: "Taylor Swift", bio: "American singer-songwriter")
james = Artist.create(name: "James Bay", bio: "English singer-songwriter and guitarist")

rock = Genre.create(name: "Rock")
pop = Genre.create(name: "Pop")
country = Genre.create(name: "Country")

december = Song.create(name: "Back to December", artist_id: taylor.id, genre_id: country.id)
mademedo = Song.create(name: "Look What You Made Me Do", artist_id: taylor.id, genre_id: pop.id)
wanttobeinlove = Song.create(name: "If You Ever Want To Be In Love", artist_id: james.id, genre_id: rock.id)
craving = Song.create(name: "Craving", artist_id: james.id, genre_id: rock.id)
