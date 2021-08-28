# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.establish_connection
ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
  #ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end

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

g1s1 = Sketch.create(
  icon: -1050,
  media: "http://csunworks.com/image/design/book_layout/book_layout.jpg",
  artwork_id: g1.id
)

g1s2 = Sketch.create(
  icon: -2800,
  media: "http://csunworks.com/image/design/book_layout/book1.jpg",
  artwork_id: g1.id
)

g2 = Artwork.create(
  icon: -1100,
  category: "design",
  link: "http://csunworks.com/image/design/book/book_preview.png",
  media: "image",
  title: "Book",
  year: 2011,
  material: 'Adobe Photoshop and Book Binding, 12 1/4" X 9 3/4" (folded)',
  description: "While looking at artist books, I questioned myself just what makes a book besides the content that is placed into the pages, so I visually created my own definition."
)

g3 = Artwork.create(
  icon: -1150,
  category: "design",
  link: "http://csunworks.com/image/design/manuel_typographique.png",
  media: "image",
  title: "Manuel Typographique",
  year: 2012,
  material: 'Adobe InDesign, 17" X 34", Exhibited at RISD Graphic Design Gallery April 2012',
  description: "While doing research on different items from graphic design history, students also needed to create a poster depicting the information."
)

g4 = Artwork.create(
  icon: -1200,
  category: "design",
  link: "http://csunworks.com/image/design/narrative.jpg",
  media: "image",
  title: "Narrative",
  year: 2011,
  material: 'Ink, 34" X 15.5"',
  description: "As I have worked with comics in the past, I wanted to try something different. Instead of using dialog or image alone, I wanted to portray a story in five parts with one single image per frame, but only using key words to bring out my message."
)

g5 = Artwork.create(
  icon: -1250,
  category: "design",
  link: "http://csunworks.com/image/design/risdbits/risdbits_screens.jpg",
  media: "image",
  title: "RISDBits",
  year: 2014,
  material: "Adobe InDesign",
  description: "<p>As a collaborative project with <a href='https://www.behance.net/jonathanshin' target='_blank'>Jonathan Shin</a> and Saras Kalwani, we created an app for the RISD community where it unifies the information provided from sites such as WebAdvisor and Intranet.</p>
    <p>While the image shows a few screens, the prototype can be seen <a href='https://projects.invisionapp.com/share/QVNLA1MY#/screens' target='_blank'>here</a>. Although the prototype was made with the iPhone5 dimensions, it will also work on Android. iPhone users will be prompted to download the app before opening.</p>"
)

g6 = Artwork.create(
  icon: -1300,
  category: "design",
  link: "http://www.csunworks.com/image/design/sweet_home_realty/sweet_home_realty.jpg",
  media: "image",
  title: "Sweet Home Realty Logo",
  year: 2012,
  material: "Adobe Illustrator",
  description: "Commissioned by William Lu. With Sweet Home Realty LLC, a New Jersey based real estate firm, becoming William's firm, a new logo was requested for them."
)

g7 = Artwork.create(
  icon: -1350,
  category: "design",
  link: "http://csunworks.com/image/design/visiting_designers/visiting_designers1.jpg",
  media: "image",
  title: "Visiting Designers Posters",
  year: 2011,
  material: 'Adobe InDesign, 11" X 17"',
  description: "<p>After designing the layout for an information poster, I used some color tests.</p>"
)



i1 = Artwork.create(
  icon: -250,
  category: "illustration",
  link: "https://player.vimeo.com/video/106350335?h=92e3de534f",
  media: "video",
  title: "The Snow Maiden",
  year: 2013,
  material: "Adobe Photoshop, After Effects, Audition and Premiere Pro",
  description: "<p>Animatic for The Snow Maiden, a short film based on the Russian fairy tale, The Snow Maiden.</p>
  <p>Co-creators:
    <ul>
      <li><a target='_blank' href='https://www.alicevassiltsov.com/'>Alice Vassiltsov</a></li>
      <li><a target='_blank' href='https://www.instagram.com/artofcalvinluo/?fbclid=IwAR3Imm-eqXNRyMcUg6zZHuVW_nytDxn8ck97ZbW3J3VMckIc77Htz2R0jnA'>Calvin Luo</a></li>
      <li><a target='_blank' href='https://ericalee.cc/'>Erica Lee</a></li>
      <li><a target='_blank' href='http://www.simoneam.com/'>Simone Myers</a></li>
    </ul>
  </p>
  <p>The storyboards were made in mind of the directing style of Marc Forster and specific actors and actresses for the main roles:
    <ul>
      <li>Old Woman: Rosemary Harris</li>
      <li>Old Man: John Hurt</li>
      <li>Snegurochka: Saoirse Ronan</li>
      <li>Tsar: Ewan McGregor</li>
      <li>Kupava: Olivia Wilde</li>
      <li>Lel: Logan Lerman</li>
      <li>Mizgir: Chad Michael Murray</li>
    </ul>
  </p>
  <p>Music:
    <ul>
      <li>Gustav Mahler's Symphony No. 1 - performed by Ivan Fischer and the Budapest Festival Orchestra and arranged and edited by Caitlyn Sun</li>
      <li>Wolfgang Mozart's Flute Concerto in G 2nd movement - performed by Noah Usher and arranged and edited by Caitlyn Sun</li>
    </ul>
  </p>"
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
