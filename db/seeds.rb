# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

=begin
ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  #ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end
=end

g1 = Artwork.create(
  icon: -1300,
  category: "design",
  link: "http://www.csunworks.com/image/design/sweet_home_realty/sweet_home_realty.jpg",
  media: "image",
  title: "Sweet Home Realty Logo",
  year: 2012,
  material: "Adobe Illustrator",
  description: "Commissioned by William Lu. With Sweet Home Realty LLC, a New Jersey based real estate firm, becoming William's firm, a new logo was requested for them."
)

g1 = Artwork.create(
  icon: -1050,
  category: "design",
  link: "http://www.csunworks.com/image/design/book_layout/book_layout.jpg",
  media: "image",
  title: "Book Layout",
  year: 2011,
  material: 'Adobe InDesign, Spread: 8" X 16"',
  description: "As the concept called for the image and text while working within a grid, I attempted to portray the idea in an unconventional way for a book."
)

i1 = Artwork.create(
  icon: -250,
  category: "illustration",
  link: "https://player.vimeo.com/video/106350335?h=92e3de534f",
  media: "video",
  title: "The Snow Maiden",
  year: 2013,
  material: "Adobe Photoshop, After Effects, Audition and Premiere Pro",
  description: "Animatic for The Snow Maiden, a short film based on the Russian fairy tale, The Snow Maiden.


  Co-creators:
  
  Alice Vassiltsov
  
  Calvin Luo
  
  Erica Lee
  
  Simone Myers
  
  
  The storyboards were made in mind of the directing style of Marc Forster and specific actors and actresses for the main roles:
  
  
  Old Woman: Rosemary Harris
  
  Old Man: John Hurt
  
  Snegurochka: Saoirse Ronan
  
  Tsar: Ewan McGregor
  
  Kupava: Olivia Wilde
  
  Lel: Logan Lerman
  
  Mizgir: Chad Michael Murray
  
  
  Music:
  
  Gustav Mahler's Symphony No. 1 - performed by Ivan Fischer and the Budapest Festival Orchestra and arranged and edited by Caitlyn Sun
  
  Wolfgang Mozart's Flute Concerto in G 2nd movement - performed by Noah Usher and arranged and edited by Caitlyn Sun"
)

i2 = Artwork.create(
  icon: -350,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/skyline.jpg",
  media: "image",
  title: "Skyline",
  year: 2013,
  material: "Adobe Illustrator",
  description: "During my internship at Ironik Design & Post, Inc., I created a banner for their website."
)

t1 = Artwork.create(
  icon: -3650,
  category: "3d",
  link: "http://csunworks.com/image/3d/car/car.jpg",
  media: "image",
  title: "3D Replica of BMW's 2011 i8 Spyder",
  year: 2014,
  material: "Autodesk Maya, Adobe Photoshop"
)

p1 = Artwork.create(
  icon: 0,
  category: "photography",
  link: "https://lh3.googleusercontent.com/pw/AM-JKLV8CJFyzOWJamgWipfpBOF9YTPgBeDAykVrqjHQ0iRQOEt6SBPh-oMqM_-ZDd6VMHYWW4y-lchcuKr3lmUYGtYP9xSpvMHlyMI4fS6ArHcQky4BCebRUOzkPmD8Sx-rAMZ00uGOE1N6cKEDlyblR31D=w1454-h969-no?authuser=0",
  media: "image",
  title: "Duck in Lake Blausee",
  year: 2019
)
