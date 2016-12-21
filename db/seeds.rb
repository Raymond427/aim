chapters = Chapter.create([
  {
    school: 'The University of North Carolina at Charlotte',
    acronym: 'UNCC',
    email: 'aimunccsecretary@gmail.com',
    donation_snippet: 'paypal.com',
    facebook_url: 'https://www.facebook.com/aimuncc',
    linkedin_url: 'https://www.linkedin.com/groups/Advancing-Innovative-Minds-8104445/about',
    twitter_url: 'https://twitter.com/aimuncc',
    instagram_url: 'http://instagram.com/uncc_aim',
    youtube_url: 'https://www.youtube.com/channel/UCrY4YxyA9gU0dPxcWLgTaYw'
  }
])

members = Member.create([
  {
    first_name: 'Raymond',
    last_name: 'Ferrell',
    email: 'rferrel427@gmail.com',
    phone_number: '9193326212',
    password: ENV['WEBMASTER_PASSWORD'],
    role: 'webmaster',
    linkedinurl: 'https://www.linkedin.com/in/raymondferrell',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAVIAAAAJGYzMjhkZGE2LWUzNTYtNGZiZC1iMzNiLTNkN2UyYzZmZTIxMA.jpg',
    major: 'Computer Science',
    graduation_date: 'December 2016',
    is_executive: false,
    subscribed: true,
    executive_position: 'President',
    chapter: chapters.first
  },
  {
    first_name: 'Mike',
    last_name: 'Caba',
    email: 'mcaba@uncc.edu',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'webmaster',
    linkedinurl: 'https://www.linkedin.com/in/michaelcaba',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAbSAAAAJDczZmY3ZDgwLTQ2MGEtNDYwYy05MjYzLTVjYjA5YWZhM2MzOA.jpg',
    major: 'Systems Engineering',
    graduation_date: 'December 2016',
    is_executive: false,
    subscribed: false,
    executive_position: 'Vice President',
    chapter: chapters.first
  },
  {
    first_name: 'Jayshrey',
    last_name: 'Dudhia',
    email: 'jdudhia@uncc.edu',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'admin',
    linkedinurl: 'https://www.linkedin.com/in/jayshreydudhia',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAlWAAAAJDdiYjlmMGRiLTZhMjMtNDQyNC04ZjQ2LWQxMjYyMDMzOTIxOA.jpg',
    major: 'Business Administration',
    graduation_date: 'December 2017',
    is_executive: true,
    subscribed: true,
    executive_position: 'Ambassador',
    chapter: chapters.first
  },
  {
    first_name: 'Cody',
    last_name: 'Dorce',
    email: 'cdorce@uncc.edu',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'admin',
    linkedinurl: 'https://www.linkedin.com/in/codydorce',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAh8AAAAJGRjMGIyYzhiLWYxNjItNDY3NS1iZDRiLTc2NjkyNzE2N2E0Mw.jpg',
    major: 'Economics',
    graduation_date: 'May 2018',
    is_executive: true,
    subscribed: true,
    executive_position: 'Ambassador',
    chapter: chapters.first
  },
  {
    first_name: 'Dontavious',
    last_name: 'McNeill',
    email: 'dmcnei16@uncc.edu',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'admin',
    linkedinurl: 'https://www.linkedin.com/in/dontavious-mcneill-ba52ba12b',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAjEAAAAJGViYTVkNzU1LWNmODYtNDE0My04MjcwLTgwY2FhODY0YmE5Mg.jpg',
    major: 'International Business',
    graduation_date: 'May 2018',
    is_executive: true,
    subscribed: true,
    executive_position: 'Ambassador',
    chapter: chapters.first
  },
  {
    first_name: 'Miguel',
    last_name: 'Avila',
    email: 'lavila@uncc.edu',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'general',
    linkedinurl: 'https://www.linkedin.com/in/miguel-avila-0ba04791',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAVfAAAAJDEzMTBlMzAyLTgzODktNGY2Mi1hYjRmLThhOTNkODBhNGU5MQ.jpg',
    major: 'Economics',
    graduation_date: 'December 2017',
    is_executive: true,
    subscribed: true,
    executive_position: 'Ambassador',
    chapter: chapters.first
  },
  {
    first_name: 'TK',
    last_name: 'Jordan',
    email: 'aimunccdigital@gmail.com',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'admin',
    linkedinurl: '',
    linkedin_photo_url: 'http://s3.amazonaws.com/aimrailsapp/members/avatars/000/000/011/preview/4tx8vjxwgd5if2s.jpg?1451850090',
    major: 'Mechanical Engineering Technology',
    graduation_date: 'December 2017',
    is_executive: true,
    subscribed: true,
    executive_position: 'Ambassador',
    chapter: chapters.first
  },
  {
    first_name: "Saajd",
    last_name: "Kafashi",
    email: "skafashi@uncc.edu",
    phone_number: "7047494284",
    major: "Mechanical Engineering",
    graduation_date: "May 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Candice",
    last_name: "Crago",
    email: "cwheintz@uncc.edu",
    phone_number: "7045246597",
    major: "Electrical Engineering",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Steven",
    last_name: "Guzorek",
    email: "sguzorek#uncc.edu",
    phone_number: "252-939-5678",
    major: "Mechanical Engineering",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Daniel",
    last_name: "Holland",
    email: "dholla12@uncc.edu",
    phone_number: "",
    major: "",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "tom",
    last_name: "ryan",
    email: "tryan6@uncc.edu",
    phone_number: "7347764392",
    major: "Business Administration",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "JAIMEEN",
    last_name: "PATEL",
    email: "jpatel93@uncc.edu",
    phone_number: "6144464825",
    major: "Mechanical Engineering",
    graduation_date: "December 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Areli",
    last_name: "Jaimes",
    email: "Ajaimes1@uncc.edu",
    phone_number: "3369648295",
    major: "Latin American Studies",
    graduation_date: "May 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Ali",
    last_name: "Bahar",
    email: "abahar@uncc.edu",
    phone_number: "704-345-7451",
    major: "Mechanical Engineering",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Kelsey",
    last_name: "Simmons",
    email: "ksimmo33@uncc.edu",
    phone_number: "",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Cameron",
    last_name: "Voegele",
    email: "cvoegele@uncc.edu",
    phone_number: "7046088424",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Marc",
    last_name: "Harris",
    email: "mharr196@uncc.edu",
    phone_number: "9196009632",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Marisa",
    last_name: "McLaughlin",
    email: "mmclau17@uncc.edu",
    phone_number: "7042089089",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "David",
    last_name: "McKinney",
    email: "dmckinn8@uncc.edu",
    phone_number: "7044210841",
    major: "Mechanical Engineering Technology",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Haley",
    last_name: "Twist",
    email: "Htwist@uncc.edu",
    phone_number: "7046169026",
    major: "Religious Studies",
    graduation_date: "December 2016",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Kevin",
    last_name: "Carranza",
    email: "Kev100carranza@gmail.com",
    phone_number: "9806161056",
    major: "",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Patrick",
    last_name: "Webb",
    email: "pwebb7@uncc.edu",
    phone_number: "7049061881",
    major: "History",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Gregory",
    last_name: "Ododa",
    email: "gododa@uncc.edu",
    phone_number: "5175054716",
    major: "Computer Science",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Jaken",
    last_name: "Poteat",
    email: "jpotea13@uncc.edu",
    phone_number: "8285146823",
    major: "Marketing",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Kyle",
    last_name: "Pearl",
    email: "kpearl2@uncc.edu",
    phone_number: "7046545985",
    major: "Business Administration",
    graduation_date: "December 2016",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Cully",
    last_name: "Crott",
    email: "ccrott@uncc.edu",
    phone_number: "7242195107",
    major: "Mechanical Engineering",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Fakhri",
    last_name: "Abbas",
    email: "fabbas1@uncc.edu",
    phone_number: "3098078255",
    major: "Management Information Systems",
    graduation_date: "May 2021",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Jaimeen",
    last_name: "Patel",
    email: "jpatel93@uncc.edu",
    phone_number: "6144464825",
    major: "Mechanical Engineering",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "pratik",
    last_name: "gala",
    email: "pgala1@uncc.edu",
    phone_number: "5168498830",
    major: "Electrical Engineering",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Amol",
    last_name: "Sathe",
    email: "asathe2@uncc.edu",
    phone_number: "+1 980-309-3870",
    major: "Mechanical Engineering",
    graduation_date: "2016",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Emanuel",
    last_name: "Mesa",
    email: "emesa@uncc.edu",
    phone_number: "8287267168",
    major: "Business Administration",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Adam",
    last_name: "Carpenter",
    email: "acarpe48@uncc.edu",
    phone_number: "8287267168",
    major: "Business Administration",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Gabriel",
    last_name: "Jean-Jumeau",
    email: "gjeanju@uncc.edu",
    phone_number: "",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Cameron",
    last_name: "Clark",
    email: "cclar126@uncc.edu",
    phone_number: "3364478995",
    major: "Finance",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Isaiah",
    last_name: "Saunders",
    email: "isaunder@uncc.edu",
    phone_number: "",
    major: "Criminal Justice",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Dylan",
    last_name: "Crusan",
    email: "dcrusan@uncc.edu",
    phone_number: "3362695750",
    major: "Psychology",
    graduation_date: "May 2020",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Fakhri",
    last_name: "Abbas",
    email: "Fabbas1@uncc.edu",
    phone_number: "3098078255",
    major: "Management Information Systems",
    graduation_date: "May 2021",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "JOHN",
    last_name: "UKPAI",
    email: "jukpai@uncc.edu",
    phone_number: "2027908202",
    major: "Philosophy",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Alexandra",
    last_name: "Clark",
    email: "aclar110@uncc.edu",
    phone_number: "3366986078",
    major: "Business Administration",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Darrell",
    last_name: "Hayden",
    email: "dhayden3@uncc.edu",
    phone_number: "9109770533",
    major: "Computer Science",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Graham",
    last_name: "Bargeron",
    email: "graham.bargeron@gmail.com",
    phone_number: "7049098034",
    major: "Marketing",
    graduation_date: "May 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Tyler",
    last_name: "Neitzey",
    email: "Tneitzey@uncc.edu",
    phone_number: "9103862978",
    major: "Marketing",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Taylor",
    last_name: "Summerville",
    email: "Tsumme10@uncc.edu",
    phone_number: "7042530308",
    major: "Psychology",
    graduation_date: "May 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Cid",
    last_name: "Narayanan",
    email: "cnaraya2@uncc.edu",
    phone_number: "9802542186",
    major: "Business Administration",
    graduation_date: "May 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Seth",
    last_name: "Brown",
    email: "sbrow250@uncc.edu",
    phone_number: "9785875881",
    major: "Management Information Systems",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Ben",
    last_name: "Groelke",
    email: "bgroelke@uncc.edu",
    phone_number: "9192151936",
    major: "Mechanical Engineering",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Steven",
    last_name: "Groves",
    email: "SGroves@SocialMarketingConversations.com",
    phone_number: "602.903.1010",
    major: "Marketing",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Suzanne",
    last_name: "Fetscher",
    email: "sfetscher@mccollcenter.org",
    phone_number: "704-944-8225",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Benjamin",
    last_name: "Koenigsberg",
    email: "bkoenig1@uncc.edu",
    phone_number: "704-626-8867",
    major: "Accounting",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Jayshrey",
    last_name: "Dudhia",
    email: "jdudhia@uncc.edu",
    phone_number: "7329108563",
    major: "Finance",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Jonathan",
    last_name: "Foster",
    email: "jayyfo@gmail.com",
    phone_number: "4693236301",
    major: "",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Naomi",
    last_name: "Thomas",
    email: "hello@naomimthomas.com",
    phone_number: "4842523207",
    major: "Management",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Reese",
    last_name: "O'Brien",
    email: "Robrien8@uncc.edu",
    phone_number: "3369712509",
    major: "Business Administration",
    graduation_date: "May 2019",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Kirill",
    last_name: "Bogdanov",
    email: "kbogdano@uncc.edu",
    phone_number: "9193525617",
    major: "Computer Science",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Toni",
    last_name: "Romero",
    email: "aromerob@uncc.edu",
    phone_number: "4156919268",
    major: "Computer Science",
    graduation_date: "December 2017",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Ryan",
    last_name: "Ke",
    email: "rke@uncc.edu",
    phone_number: "(336)483-4959",
    major: "Computer Science",
    graduation_date: "May 2020",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Cameron",
    last_name: "Watts",
    email: "cwatts31@uncc.edu",
    phone_number: "",
    major: "Systems Engineering",
    graduation_date: "December 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Sanket",
    last_name: "Patil",
    email: "spatil26@uncc.edu",
    phone_number: "7049549420",
    major: "Computer Science",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Nelson",
    last_name: "Valdez",
    email: "ncoreasv@uncc.edu",
    phone_number: "",
    major: "Art",
    graduation_date: "",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Anthony",
    last_name: "Singleton",
    email: "asingl18@uncc.edu",
    phone_number: "",
    major: "Art",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Kirill",
    last_name: "Bogdanov",
    email: "kbogdano@uncc.edu",
    phone_number: "",
    major: "Art",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Reese",
    last_name: "O'Brien",
    email: "reeseob96@gmail.com",
    phone_number: "",
    major: "Art",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Dinesh",
    last_name: "Auti",
    email: "dauti@uncc.edu",
    phone_number: "",
    major: "Art",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  },
  {
    first_name: "Samuel",
    last_name: "Sutherland",
    email: "ssuther4@uncc.edu",
    phone_number: "",
    major: "Art",
    graduation_date: "May 2018",
    role: "general",
    is_executive: false,
    subscribed: true,
    executive_position: "",
    chapter: chapters.first
  }
])

news = News.create([
  {
    title: 'Niner Nights',
    date: '2014-07-12',
    mediatype: 'Image',
    description: 'Come out to visit the AIM booth during Niner Nights on the UNC Charlotte campus! future freshman signed AIM\'s door to "open your door from dreams to reality!"',
    chapter: chapters.first
  },
  {
    title: 'General Body Meeting',
    date: '2014-09-07',
    mediatype: 'Image',
    description: 'AIM launched this year with its first general body meeting! Members were introduced to AIM\'s purpose and goals for this year as well as information about future events and opportunities.',
    chapter: chapters.first
  },
  {
    title: 'CF Cycle for Life',
    date: '2014-10-18',
    mediatype: 'Image',
    description: 'AIM helped the Cystic Fibrosis FOundation hold the CF Cycle for Life bicycle marathon. Members helped out with the biker\'s celebrations for completing the marathon.',
    chapter: chapters.first
  },
  {
    title: 'Homecoming Parade!!!',
    date: '2014-10-24',
    mediatype: 'Image',
    description: 'AIM marched in the 2014 Homecoming Lights Parade! AIM represented this year\'s theme in style, displaying a truck covered in glowing sticks and balloons.',
    chapter: chapters.first
  },
  {
    title: 'Fall Interest Meeting',
    date: '2015-01-26',
    mediatype: 'Image',
    description: 'AIM welcomed new members at our second interest meeting. Guests were welcomed with fun activities and Bo-Berry Biscuits!',
    chapter: chapters.first
  },
  {
    title: 'Guest Jeff Brokaw',
    date: '2015-02-02',
    mediatype: 'Image',
    description: 'AIM had the pleasure to host successful entrepreneur Jeff Brokaw! He discussed his new company AppVested and the entrepreneurial workshops he hosts for Google\'s StartUp Grind.',
    chapter: chapters.first
  },
  {
    title: 'Investor Competition!',
    date: '2015-02-23',
    mediatype: 'Image',
    description: 'AIM members had five minutes to develop a pitch that would pique the investor\'s interests',
    chapter: chapters.first
  },
  {
    title: 'Investing 101: Campbell O\'Bleans',
    date: '2015-03-09',
    mediatype: 'Video',
    youtube_url: 'https://www.youtube.com/embed/JUKyaxz_1IY',
    description: 'AIM\'s Fundraising Chair Campbell O\'Bleans presented on tips for young investors and how to manage your finances.',
    chapter: chapters.first
  },
  {
    title: 'Using LinkedIn: Raymond Ferrell',
    date: '2015-03-16',
    mediatype: 'Video',
    youtube_url: 'https://www.youtube.com/embed/1i5Uf3SmUQU',
    description: 'Vice President Raymond Ferrell hosted a seminar on building a digital network on a global scale using LinkedIn',
    chapter: chapters.first
  },
  {
    title: 'Bark For Life!',
    date: '2015-03-21',
    mediatype: 'Image',
    description: 'AIM volunteered for Bark for Life, a canine event to raise funds for cancer research!',
    chapter: chapters.first
  },
  {
    title: 'UX Testing with Zerrick Bynum',
    date: '2015-04-13',
    mediatype: 'Video',
    youtube_url: 'https://www.youtube.com/embed/6beKnkPZRxE',
    description: 'President Dreu Dixon and the founder of Happzee.com, Zerrick Bynum hosted a usability testing workshop!',
    chapter: chapters.first
  },
  {
    title: 'New Student Org of the Year!!',
    date: '2015-04-20',
    mediatype: 'Image',
    description: 'AIM was chosen out of 51 new student organizations as the Outstanding New Student Organization of 2015!',
    chapter: chapters.first
  },
  {
    title: 'RECESS: Office Hours',
    date: '2015-10-06',
    mediatype: 'Image',
    description: 'RECESS brought the CEO of Life in Color Sebastian Solano to discuss being an entrepreneur',
    chapter: chapters.first
  },
  {
    title: 'RECESS: The Pitch',
    date: '2015-10-06',
    mediatype: 'Image',
    description: "Startup teams from AIM and across the state came to RECESS's pitch competition in the SAC",
    chapter: chapters.first
  },
  {
    title: 'RECESS: The Playground',
    date: '2015-10-06',
    mediatype: 'Image',
    description: 'LA Startup RECESS sponsored by Mark Cuban chose UNC Charlotte for their entrepreneurial music festival! We started off with an interactive career fair!',
    chapter: chapters.first
  },
  {
    title: 'UX Testing: Happzee & YouXpert',
    date: '2015-11-02',
    mediatype: 'Image',
    description: 'Zerrick Bynum stopped by for a second round of user testing, showing our members how validated learning can improve products',
    chapter: chapters.first
  },
  {
    title: 'Push for Pizza',
    date: '2015-11-05',
    mediatype: 'Image',
    description: 'AIM invited New York startup Push for Pizza to UNC Charlotte to give out pizza and show off their new app',
    chapter: chapters.first
  },
  {
    title: 'UNC Social Entrepreneurship Competition Prep',
    date: '2015-11-11',
    mediatype: 'Image',
    description: 'A team of AIM members met to prepare to pitch AIM as a nationwide non-profit',
    chapter: chapters.first
  },
  {
    title: "NorthWestern Mutual's Matt Abbott",
    date: '2015-11-30',
    mediatype: 'Image',
    description: 'Financial Representative Matt Abbott discussed business finance with AIM members',
    chapter: chapters.first
  },
  {
    title: 'UNC Social Entrepreneurship Competition',
    date: '2016-02-16',
    mediatype: 'Image',
    description: 'AIM was pitched as a nonprofit in Greensboro! We placed in the top 6 out of 28 companies!!',
    chapter: chapters.first
  },
  {
    title: 'Business Model Canvas Workshop',
    date: '2016-02-24',
    mediatype: 'Image',
    description: 'AIM was chosen out of 51 new student organizations as the Outstanding New Student Organization of 2016!',
    chapter: chapters.first
  },
  {
    title: 'New Student Org of the Year!!',
    date: '2016-04-20',
    mediatype: 'Image',
    description: 'Members learned how a business model canvas can make creating a business plan easier!',
    chapter: chapters.first
  },
  {
    title: 'Michael Umberger: The Fundamentals of Business Law for the 21st Century Entrepreneur',
    date: '2016-03-16',
    mediatype: 'Image',
    description: 'Lecture on business law',
    chapter: chapters.first
  },
  {
    title: 'Extraordinary Ventures',
    date: '2016-03-23',
    mediatype: 'Image',
    description: 'Extraordinary Ventures discussed their unique business model of preparing young entrepreneurs and employing people with autism.',
    chapter: chapters.first
  },
  {
    title: "AvidXchange's Chris Elmore",
    date: '2016-04-20',
    mediatype: 'Image',
    description: "AIM welcomed AvidXchange's Chris Elmore! He discussed his business, internship opportunities and his summer entrepreneurial course ITCS 4010-001",
    chapter: chapters.first
  },
  {
    title: "MapQuest Founder Chris Heivly",
    date: '2016-09-09',
    mediatype: 'Image',
    description: "AIM members met with entrepreneurial evengelist and founder of MapQuest Chris Heivly to hear is story and advice",
    chapter: chapters.first
  },
  {
    title: "Funding 101 with Devin Collins",
    date: '2016-09-15',
    mediatype: 'Image',
    description: "Ventureprise Assitant Director Devin Collins explained all of the on campus funds and resources for entrepreneurs",
    chapter: chapters.first
  },
  {
    title: "Venture into Entrepreneurial Awareness with Paul Wettenhall",
    date: '2016-09-22',
    mediatype: 'Image',
    description: "Ventureprise President Paul Wettenhall helped AIM members find their favorite roles in entrepreneurship",
    chapter: chapters.first
  },
  {
    title: "Finding your Entrepreneurial Groove with Steven Groves",
    date: '2016-09-29',
    mediatype: 'Image',
    description: "Founder of One Million Cups, Steven Groves spoke to AIM members about how to start a business",
    chapter: chapters.first
  },
  {
    title: "Keys to Presenting with Chris Elmore",
    date: '2016-10-20',
    mediatype: 'Image',
    description: "Chris Elmore stopped by our meeting for his second visit to discuss pitching advice from his books",
    chapter: chapters.first
  }
])
