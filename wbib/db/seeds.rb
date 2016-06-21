# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
references = Reference.create(
  [{URL: 'http://www.whattheheck.com', topic: 'What is WTH?', annotation: 'WTH stands for What The Heck. This is something that we sometimes say when things do not go according to what we have planned. For example, such as the timing of working on this programming assignment. I was supposed to do this assignment as I have wanted to 2 days ago but WTH, life has come in between me and this programming assignment.'}, 
{URL: 'http://www.google.com', topic: 'Search Engine', annotation: 'This is a search engine for looking things up when we are lost or confused, or simply when we need to know something.'},
{URL: 'http://www.yahoo.com', topic: 'YAAHHOOOOOOOOO!', annotation: 'When Yahoo first did their ads, YAHHOOOOOOOOOO! was something we often hear a big scary lady yell at the end of the commercial'},
{URL: 'http://www.facebook.com', topic: 'How to waste time.', annotation: 'Do you like to waste time? If so, make a facebook account and add a whole bunch of strangers. Then, cyber-stalk them everytime you do something that does not require your hands. For some, they can do this even while driving, taking a poop, while at the bar, at the dinner table, while driving, the list goes on and on and on.'},
{URL: 'http://www.myspace.com', topic: 'Design you own html website', annotation: 'Back when myspace was still popular, there were many people who believed it was fun to write html or use html generated code to designed their own "MYSPACE". Now it seems of the past, cuzz people like me used to have a myspace but SUCK at html.....NOW!!!'},
{URL: 'http://youtube.com', topic: 'By now you probably figured this is not really a bibliography.', annotation: 'By now you are probably confused, if you have been reading these useless and unmeaningful so called "bibliography". But you see I am too lazy to look up real references because I am simply testing this in developement mode atm.'},
{URL: 'http://www.someaddress.com/ok', topic: 'ME NO NO', annotation: 'Me no no what you say, you say you love me but me nono'},
{URL: 'http://www.liveleak.com', topic: 'Some CRAZY STUFF HERE', annotation: 'Yeah this is supposed to be a web bibliography but you never specified if the reference had to be of something legit in reality.'},
{URL: 'http://www.zillow.com/home-buying-guide/buying-homes-for-sale-by-owner/', topic: 'Tips on how to buy from owner.', annotation: 'Supposedly, you can get a great deal. Well, I am currently trying to locate one. Part of my summer, according to my wife, is to find a suitable home for us. If you are reading this and have any suggestion, let me know.'},
{URL: 'http://www.lookingforahousetobuyisexhausting.com', topic: 'Maybe I should have not taken this class this summer.', annotation: 'Me, I am a procrastinator as you can already tell. Maybe I should have waited to take this class next semester. But the thought of you not teaching this class and having someone else teach this class is a big risk I am not willing to take. Yes your classes are tough, but I learn more from your tough class then other tough classes that have been taught at Chico State. I am pretty sure it is because you care about your students success unlike the other professors who only cares about their reputation.'}
]
) 
