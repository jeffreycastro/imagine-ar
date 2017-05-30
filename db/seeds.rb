# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create blogs
puts "Creating initial blogs"
Blog.create(
  title: "iAR team acquires People's Choice Award",
  is_cover: true,
  content: "A team of talented Computer Science students from the University of the Philippines Diliman, and direct affiliates of imagineAR's core dev-team has acquired \"People's Choice\" Award as they finished their project in their Software Development course. These young programmers were allegedly behind building imagineAR's augmented reality app.\n\rThough they have mentioned that their journey didn't go smoothly and had their hardships at the beginning of the course. They even doubted their own aptitude and almost gave up. But with just few sleep-overs and tutorials on AR, they got the ball up and rolling.\n\rNot only did they showcase an extraordinary prowess in their coding skills but also demonstrated unprecedented attitude towards their tasks. Putting teamwork and professionality above anything else, they have successfully delivered an amazing product.\n\rOther than People's Choice, they also got the \"Rockstar\" Award for the exceptional quality of their app. Let just us all hope they publish it soon."
)

Blog.create(
  title: "The possible future of AR",
  content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis tempor odio. Pellentesque leo ligula, dignissim in massa sit amet, blandit iaculis massa. Vivamus faucibus neque sagittis, eleifend leo eget, imperdiet purus. Donec pellentesque id est tempus tincidunt. Nulla nec faucibus justo. Phasellus vestibulum imperdiet ex non ornare. Proin eget maximus felis. In mattis pretium elit, ut ullamcorper arcu tempus at. Curabitur ultricies, eros tempus convallis sagittis, risus lacus condimentum libero, eget posuere diam nibh eu odio. Sed nec suscipit odio. Donec cursus nunc id blandit maximus. Cras tincidunt interdum felis id commodo. Cras a feugiat urna, in tempor velit. Maecenas finibus condimentum mauris, eget pharetra purus ullamcorper ut. Duis elementum tristique mi, id vestibulum justo ornare volutpat. Nulla eu dui orci."
)

Blog.create(
  title: "See you at the Techtonic 2017 Conference",
  content: "Phasellus at tempus tellus, nec ullamcorper urna. Sed ornare urna in eros dapibus, vitae porttitor justo blandit. Integer dolor nulla, pharetra tristique est nec, viverra sollicitudin turpis. Quisque elementum interdum tortor, et dictum tortor. Sed sapien massa, ornare in ornare in, elementum nec urna. Sed eu nibh sit amet elit vestibulum tincidunt. Nunc aliquet arcu vel est dignissim fermentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Maecenas malesuada posuere augue eget venenatis. Nullam vehicula at nisi in tristique. Sed nec mi eget tortor lobortis convallis. Ut convallis mollis nisi et venenatis."
)

Blog.create(
  title: "AR/VR vs. Screen-less holograms",
  content: "Maecenas mattis ultrices orci, at commodo elit rutrum id. Praesent dolor nisi, ultrices ac posuere nec, ornare eu turpis. Suspendisse consequat risus pulvinar, mattis magna tincidunt, ultrices urna. Cras at magna imperdiet, consequat risus elementum, gravida metus. Pellentesque maximus felis turpis, sed faucibus justo imperdiet nec. Donec ultrices sit amet nisl et suscipit. Nullam vel felis magna. Etiam non est mollis, sollicitudin ex eu, pellentesque felis."
)

Blog.create(
  title: "Thank you from iAR team",
  content: "Quisque pretium ornare nibh at vulputate. Cras ornare dui at ipsum posuere mollis. Duis blandit, ante id dictum eleifend, est dui aliquet turpis, a blandit arcu magna non enim. In hac habitasse platea dictumst. Nullam faucibus sapien sit amet blandit vestibulum. Nullam sed diam ac orci dignissim ultrices sit amet eu lacus. Proin tincidunt ipsum sed sem consectetur blandit. Integer dictum lectus vulputate massa faucibus, nec tincidunt metus feugiat. Cras leo felis, dictum et sapien vel, pellentesque volutpat eros. Cras aliquam ornare ornare. Nullam vitae tortor vitae erat bibendum fermentum."
)
