# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
    password: ENV['ADMIN_PASSWORD'],
    role: 'webmaster',
    linkedinurl: 'https://www.linkedin.com/in/raymondferrell',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAVIAAAAJGYzMjhkZGE2LWUzNTYtNGZiZC1iMzNiLTNkN2UyYzZmZTIxMA.jpg',
    major: 'Computer Science',
    graduation_date: 'December 2016',
    is_executive: true,
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
    is_executive: true,
    subscribed: true,
    executive_position: 'Vice President',
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
    executive_position: 'Strategic Advisor',
    chapter: chapters.first
  },
  {
    first_name: 'Adina',
    last_name: 'Houston',
    email: 'aimunccpartnership@gmail.com',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'general',
    linkedinurl: 'http://s3.amazonaws.com/aimrailsapp/members/avatars/000/000/007/preview/Adina2.jpg?1451850003',
    linkedin_photo_url: 'http://s3.amazonaws.com/aimrailsapp/members/avatars/000/000/007/preview/Adina2.jpg?1451850003',
    major: 'International Business',
    graduation_date: 'December 2016',
    is_executive: true,
    subscribed: true,
    executive_position: 'Director of Strategic Partnerships',
    chapter: chapters.first
  },
  {
    first_name: 'Larry',
    last_name: 'Ogunjobi',
    email: 'aimunccprograms@gmail.com',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'general',
    linkedinurl: 'https://www.linkedin.com/in/larry-ogunjobi-779906b4',
    linkedin_photo_url: 'https://media.licdn.com/media/AAEAAQAAAAAAAAMWAAAAJDU5Y2Q3ZTAzLTIwMTAtNDcxMC05MmVjLTEzODhjZTk0YjI5MQ.jpg',
    major: 'Computer Science',
    graduation_date: 'December 2016',
    is_executive: true,
    subscribed: true,
    executive_position: 'Director of Programs',
    chapter: chapters.first
  },
  {
    first_name: 'Daniel',
    last_name: 'Brown',
    email: 'aimunccpr@gmail.com',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'general',
    linkedinurl: '',
    linkedin_photo_url: 'http://s3.amazonaws.com/aimrailsapp/members/avatars/000/000/008/preview/gpxxu5ka2ak000l.jpg?1451850055',
    major: 'Criminal Justice',
    graduation_date: 'December 2016',
    is_executive: true,
    subscribed: true,
    executive_position: 'Director of Public Relations',
    chapter: chapters.first
  },
  {
    first_name: 'TK',
    last_name: 'Jordan',
    email: 'aimunccdigital@gmail.com',
    phone_number: '',
    password: ENV['ADMIN_PASSWORD'],
    role: 'editor',
    linkedinurl: '',
    linkedin_photo_url: 'http://s3.amazonaws.com/aimrailsapp/members/avatars/000/000/011/preview/4tx8vjxwgd5if2s.jpg?1451850090',
    major: 'Mechanical Engineering Technology',
    graduation_date: 'December 2017',
    is_executive: true,
    subscribed: true,
    executive_position: 'Digital Administrator',
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
  }
])
