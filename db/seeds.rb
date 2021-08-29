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
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book_layout.jpg",
  artwork_id: g1.id
)

g1s2 = Sketch.create(
  icon: -2800,
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book1.jpg",
  artwork_id: g1.id
)

g1s3 = Sketch.create(
  icon: -2850,
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book2.jpg",
  artwork_id: g1.id
)

g1s4 = Sketch.create(
  icon: -2900,
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book3.jpg",
  artwork_id: g1.id
)

g1s5 = Sketch.create(
  icon: -2950,
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book4.jpg",
  artwork_id: g1.id
)

g1s6 = Sketch.create(
  icon: -3000,
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book5.jpg",
  artwork_id: g1.id
)

g1s7 = Sketch.create(
  icon: -3050,
  media: "image",
  link: "http://csunworks.com/image/design/book_layout/book6.jpg",
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

g2s1 = Sketch.create(
  icon: -1100,
  media: "image",
  link: "http://csunworks.com/image/design/book/book_preview.png",
  artwork_id: g2.id
)

g2s2 = Sketch.create(
  icon: -1400,
  media: "image",
  link: "http://csunworks.com/image/design/book/book1.jpg",
  artwork_id: g2.id
)

g2s3 = Sketch.create(
  icon: -1450,
  media: "image",
  link: "http://csunworks.com/image/design/book/book2.jpg",
  artwork_id: g2.id
)

g2s4 = Sketch.create(
  icon: -1500,
  media: "image",
  link: "http://csunworks.com/image/design/book/book3.jpg",
  artwork_id: g2.id
)

g2s5 = Sketch.create(
  icon: -1550,
  media: "image",
  link: "http://csunworks.com/image/design/book/book4.jpg",
  artwork_id: g2.id
)

g2s6 = Sketch.create(
  icon: -1600,
  media: "image",
  link: "http://csunworks.com/image/design/book/book5.jpg",
  artwork_id: g2.id
)

g2s7 = Sketch.create(
  icon: -1650,
  media: "image",
  link: "http://csunworks.com/image/design/book/book6.jpg",
  artwork_id: g2.id
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

g5s1 = Sketch.create(
  icon: -1250,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/risdbits_screens.jpg",
  artwork_id: g5.id
)

g5s2 = Sketch.create(
  icon: -2200,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/1.jpg",
  artwork_id: g5.id
)

g5s3 = Sketch.create(
  icon: -2250,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/2.jpg",
  artwork_id: g5.id
)

g5s4 = Sketch.create(
  icon: -2300,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/3.jpg",
  artwork_id: g5.id
)

g5s5 = Sketch.create(
  icon: -2350,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/4.jpg",
  artwork_id: g5.id
)

g5s6 = Sketch.create(
  icon: -2400,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/5.jpg",
  artwork_id: g5.id
)

g5s7 = Sketch.create(
  icon: -2450,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/6.jpg",
  artwork_id: g5.id
)

g5s8 = Sketch.create(
  icon: -2500,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/7.jpg",
  artwork_id: g5.id
)

g5s9 = Sketch.create(
  icon: -2550,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/8.jpg",
  artwork_id: g5.id
)

g5s10 = Sketch.create(
  icon: -2600,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/9.jpg",
  artwork_id: g5.id
)

g5s11 = Sketch.create(
  icon: -2650,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/10.jpg",
  artwork_id: g5.id
)

g5s12 = Sketch.create(
  icon: -2700,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/11.jpg",
  artwork_id: g5.id
)

g5s13 = Sketch.create(
  icon: -2750,
  media: "image",
  link: "http://csunworks.com/image/design/risdbits/12.jpg",
  artwork_id: g5.id
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

g6s1 = Sketch.create(
  icon: -1300,
  media: "image",
  link: "http://csunworks.com/image/design/sweet_home_realty/sweet_home_realty.jpg",
  artwork_id: g6.id
)

g6s2 = Sketch.create(
  icon: -3100,
  media: "image",
  link: "http://csunworks.com/image/design/sweet_home_realty/sketches.jpg",
  artwork_id: g6.id
)

g6s3 = Sketch.create(
  icon: -3150,
  media: "image",
  link: "http://csunworks.com/image/design/sweet_home_realty/colors.jpg",
  artwork_id: g6.id
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

g7s1 = Sketch.create(
  icon: -1350,
  media: "image",
  link: "http://csunworks.com/image/design/visiting_designers/visiting_designers1.jpg",
  artwork_id: g7.id
)

g7s2 = Sketch.create(
  icon: -3950,
  media: "image",
  link: "http://csunworks.com/image/design/visiting_designers/visiting_designers2.jpg",
  artwork_id: g7.id
)

g7s3 = Sketch.create(
  icon: -4000,
  media: "image",
  link: "http://csunworks.com/image/design/visiting_designers/visiting_designers3.jpg",
  artwork_id: g7.id
)

g7s4 = Sketch.create(
  icon: -4050,
  media: "image",
  link: "http://csunworks.com/image/design/visiting_designers/visiting_designers4.jpg",
  artwork_id: g7.id
)

i1 = Artwork.create(
  icon: -1000,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/computer/computer_full.png",
  media: "image",
  title: "Cyber Dream Space",
  year: 2015,
  material: "Adobe Photoshop",
  description: "An ongoing series about a girl finding her way through her computer. More images on the way!"
)

i1s1 = Sketch.create(
  icon: -1000,
  media: "image",
  link: "http://csunworks.com/image/illustration/computer/computer_full.png",
  artwork_id: i1.id
)

i1s2 = Sketch.create(
  icon: -150,
  media: "image",
  link: "http://csunworks.com/image/illustration/computer/moniter.jpg",
  artwork_id: i1.id
)

i1s2 = Sketch.create(
  icon: -400,
  media: "image",
  link: "http://csunworks.com/image/illustration/computer/debug.jpg",
  artwork_id: i1.id
)

i1s3 = Sketch.create(
  icon: -450,
  media: "image",
  link: "http://csunworks.com/image/illustration/computer/explore.jpg",
  artwork_id: i1.id
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

i3 = Artwork.create(
  icon: 0,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/atif_sensei.jpg",
  media: "image",
  title: "Gift for Atif Sensei",
  year: 2012,
  material: "Adobe Photoshop",
  description: "Commissioned by Rayan Salem Alamery. Image was a gift for his teacher."
)

i4 = Artwork.create(
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

i4s1 = Sketch.create(
  icon: -250,
  media: "video",
  link: "https://player.vimeo.com/video/106350335",
  artwork_id: i4.id
)

i4s2 = Sketch.create(
  icon: -800,
  media: "image",
  link: "http://csunworks.com/image/illustration/the_snow_maiden/lel.jpg",
  artwork_id: i4.id
)

i4s3 = Sketch.create(
  icon: -850,
  media: "image",
  link: "http://csunworks.com/image/illustration/the_snow_maiden/mitzgir.jpg",
  artwork_id: i4.id
)

i4s4 = Sketch.create(
  icon: -900,
  media: "image",
  link: "http://csunworks.com/image/illustration/the_snow_maiden/storyboard.jpg",
  artwork_id: i4.id
)

i4s5 = Sketch.create(
  icon: -950,
  media: "video",
  link: "https://player.vimeo.com/video/116282951",
  artwork_id: i4.id
)

i5 = Artwork.create(
  icon: -300,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/super_tyler/super_tyler.jpg",
  media: "image",
  title: "The Amazing Adventures of Super Tyler and Bodhi Blades",
  year: 2013,
  material: 'Adobe Photoshop and Illustrator, 8" X 10"',
  description: "As commissioned by Carley Eisenberg, I designed the characters and cover for her comic."
)

i5s1 = Sketch.create(
  icon: -300,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/super_tyler.jpg",
  artwork_id: i5.id
)

i5s2 = Sketch.create(
  icon: -500,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/char_pre_design.jpg",
  artwork_id: i5.id
)

i5s3 = Sketch.create(
  icon: -550,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/char_carley.jpg",
  artwork_id: i5.id
)

i5s4 = Sketch.create(
  icon: -600,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/char_tyler.jpg",
  artwork_id: i5.id
)

i5s5 = Sketch.create(
  icon: -650,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/cover_sketch.jpg",
  artwork_id: i5.id
)

i5s6 = Sketch.create(
  icon: -700,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/title_sketch.jpg",
  artwork_id: i5.id
)

i5s7 = Sketch.create(
  icon: -750,
  media: "image",
  link: "http://csunworks.com/image/illustration/super_tyler/cover_line.jpg",
  artwork_id: i5.id
)

i6 = Artwork.create(
  icon: -100,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/dahoom.jpg",
  media: "image",
  title: "Dahoom's Rage in BicCamera",
  year: 2011,
  material: 'Adobe Photoshop, 7.86" X 11"',
  description: "<p>Commissioned by Rayan Salem Alamery. Image can be found <a target='_blank' href='http://rayan-alamery.blogspot.com/2011/11/blog-post_26.html'>here</a>."
)

i7 = Artwork.create(
  icon: -200,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/mikaela.jpg",
  media: "image",
  title: "Mikaela Character Sheet",
  year: 2013,
  material: "Adobe Photoshop"
)

i8 = Artwork.create(
  icon: -50,
  category: "illustration",
  link: "http://csunworks.com/image/illustration/carpet.jpg",
  media: "image",
  title: "Flying Through Cyberspace",
  year: 2009,
  material: 'Acrylic, 18" X 24"'
)

t1 = Artwork.create(
  icon: -3200,
  category: "3d",
  link: "https://player.vimeo.com/video/106026810",
  media: "video",
  title: "Animation Demo Reel",
  year: 2014,
  material: "Autodesk Maya, Blender, Adobe After Effects",
  description: "<p>00:00-00:08</p>
    <p>CSA Motion Graphics</p>
    <p><i>Responsibilities: Logo design, storyboard, model, texture, light, particles, timing, animation, render, compositing</i></p>
    <br>
    <p>00:08-00:13</p>
    <p>Book Shader</p>
    <p><i>Responsibilities: Texture, render</i></p>
    <br>
    <p><i>00:13-00:19</i></p>
    <p>Compass</p>
    <p><i>Responsibilities: Model, texture, render</i></p>
    <br>
    <p>00:19-00:25</p>
    <p>Bedroom</p>
    <p><i>Responsibilities: Design, layout, model, texture, light, render</i></p>
    <br>
    <p>00:25-00:30</p>
    <p>Character Walk Cycle</p>
    <p><i>Responsibilities: Design, orthographic drawing, model, texture, rig, timing, animation, render</i></p>
    <br>
    <p>00:30-00:55</p>
    <p>Somewhere Out There (Scene II opening)</p>
    <p><i>Responsibilities: Timing, animation, render, music (not included in demo)</i></p>
    <br>
    <p>00:55-01:00</p>
    <p>Hair Simulation</p>
    <p><i>Responsibilities: Hair model, hair texture, light, nCloth dynamics, render</i></p>
    <br>
    <p>01:00-01:03</p>
    <p>3D Replica of BMW's 2011 i8 Spyder</p>
    <p><i>Responsibilities: Orthographic drawing, model, texture, light, render</i></p>
    <br>
    <p>01:03-01:06</p>
    <p>Time</p>
    <p><i>Responsibilities: Storyboard, timing, lip-syncing, animation, set modelling, set texturing, light, render</i></p>
    <br>
    <p>01:06-01:19</p>
    <p>Somewhere Out There (Falling)</p>
    <p><i>Responsibilities: Light, timing, animation, render, music (not included in demo)</i></p>"
)

t2 = Artwork.create(
  icon: -3250,
  category: "3d",
  link: "https://player.vimeo.com/video/115610708",
  media: "video",
  title: "Time",
  year: 2014,
  material: "Autodesk Maya, Adobe Photoshop and After Effects",
  description: "Animation off of 11 Second Club's October 2010 audio."
)

t3 = Artwork.create(
  icon: -3300,
  category: "3d",
  link: "http://csunworks.com/image/3d/book.jpg",
  media: "image",
  title: "Book Shader",
  year: 2014,
  material: "Autodesk Maya and Adobe Photoshop",
  description: "Using a book mesh, I shaded the book to look old and worn."
)

t4 = Artwork.create(
  icon: -3350,
  category: "3d",
  link: "https://player.vimeo.com/video/107633613",
  media: "video",
  title: "Compass",
  year: 2012,
  material: "Autodesk Maya and Adobe Photoshop"
)

t5 = Artwork.create(
  icon: -3400,
  category: "3d",
  link: "https://player.vimeo.com/video/106459805",
  media: "video",
  title: "All in a Day's Walk",
  year: 2012,
  material: "Blender, Adobe After Effects"
)

t6 = Artwork.create(
  icon: -3450,
  category: "3d",
  link: "https://player.vimeo.com/video/106459842",
  media: "video",
  title: "Character Walk Cycle",
  year: 2014,
  material: "Autodesk Maya"
)

t6s1 = Sketch.create(
  icon: -3450,
  media: "video",
  link: "https://player.vimeo.com/video/106459842",
  artwork_id: t6.id
)

t6s2 = Sketch.create(
  icon: -3700,
  media: "video",
  link: "https://player.vimeo.com/video/107633612",
  artwork_id: t6.id
)

t7 = Artwork.create(
  icon: -3500,
  category: "3d",
  link: "https://player.vimeo.com/video/106459841",
  media: "video",
  title: "Somewhere Out There",
  year: 2012,
  material: "Autodesk Maya, Adobe After Effects and Photoshop",
  description: '<p>Animation project with Nicholas Allegra and <a href="http://portfolios.risd.edu/StacyJLee" target="_blank">Stacy Lee</a>.</p>'
)

t8 = Artwork.create(
  icon: -3550,
  category: "3d",
  link: "https://player.vimeo.com/video/109282389",
  media: "video",
  title: "CSA Motion Graphics",
  year: 2014,
  material: "Autodesk Maya, Adobe After Effects"
)

t9 = Artwork.create(
  icon: -3600,
  category: "3d",
  link: "http://csunworks.com/image/3d/bedroom/room1.jpg",
  media: "image",
  title: "Bedroom",
  year: 2014,
  material: "Autodesk Maya, Adobe Photoshop"
)

t9s1 = Sketch.create(
  icon: -3600,
  media: "image",
  link: "http://csunworks.com/image/3d/bedroom/room1.jpg",
  artwork_id: t9.id
)

t9s2 = Sketch.create(
  icon: -3750,
  media: "image",
  link: "http://csunworks.com/image/3d/bedroom/room2.jpg",
  artwork_id: t9.id
)

t10 = Artwork.create(
  icon: -3650,
  category: "3d",
  link: "http://csunworks.com/image/3d/car/car.jpg",
  media: "image",
  title: "3D Replica of BMW's 2011 i8 Spyder",
  year: 2014,
  material: "Autodesk Maya, Adobe Photoshop"
)

t10s1 = Sketch.create(
  icon: -3650,
  media: "image",
  link: "http://csunworks.com/image/3d/car/car.jpg",
  artwork_id: t10.id
)

t10s2 = Sketch.create(
  icon: -3800,
  media: "image",
  link: "http://csunworks.com/image/3d/car/wireframe.jpg",
  artwork_id: t10.id
)

t10s2 = Sketch.create(
  icon: -3850,
  media: "image",
  link: "http://csunworks.com/image/3d/car/ao.jpg",
  artwork_id: t10.id
)

p1 = Artwork.create(
  icon: -4150,
  category: "photography",
  link: Rails.root.join('app', 'assets', 'images', 'alaska_main.png'),
  media: "image",
  title: "Photographs From Trip to Alaska",
  year: 2017
)

p2 = Artwork.create(
  icon: -4200,
  category: "photography",
  link: Rails.root.join('app', 'assets', 'images', 'japan_main.png'),
  media: "image",
  title: "Photographs From Trip to Japan",
  year: 2017
)

p3 = Artwork.create(
  icon: -4100,
  category: "photography",
  link: Rails.root.join('app', 'assets', 'images', 'miso_main.png'),
  media: "image",
  title: "Photographs of Pembroke Welsh Corgi, Miso",
  year: 2020
)

p4 = Artwork.create(
  icon: -4250,
  category: "photography",
  link: Rails.root.join('app', 'assets', 'images', 'switzerland_main.png'),
  media: "image",
  title: "Photographs From Trip to Switzerland",
  year: 2019
)
