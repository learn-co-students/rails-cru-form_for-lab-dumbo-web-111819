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

a1 = Artist.create(name: "Drake", bio: 'Toronto boy')
a1 = Artist.create(name: "Beyonce", bio: 'From Houston texas')
a1 = Artist.create(name: "Katy Perry", bio: 'She is hot and cold')

g1 = Genre.create(name: 'pop')
g2 = Genre.create(name: 'dubstep')
g3 = Genre.create(name: 'trance')

s1 = Song.create(name: 'hotline blong', artist_id: 12, genre_id: 5)
s1 = Song.create(name: 'married ladies', artist_id: 13, genre_id: 6)
s1 = Song.create(name: 'I kissed a girl', artist_id: 14, genre_id: 7)