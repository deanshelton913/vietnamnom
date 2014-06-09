require 'sinatra'

get '/' do
  catch_phrase = [
  	"Why for - how come it be... That da noodle be hard when dey be no bone in it?",
  	"100 years Vietnamnom. 100 years, Morty. www.vietnamnom.com. 100 years vietnamnom.comcom",
  	"Everybody's workin for the noodle.",
  	"Oh you into noodles? Well I'm a mushroom cloud layin motherfucker, motherfucker.",
  	"Sir mix a lot would like udon, and you can not lie.",
  	"The longest noodle ever created was over a mile long. <a href='http://metro.co.uk/2011/03/15/its-the-worlds-longest-noodle-644450/'>read about it</a>",
  	"Good pho broth is made from beef bone marrow. This is fact. Google it.",
  	"Pho. Ha. Good god ya'll. What it isnt good for? Absolutely nothing.",
  	"Frankly, my dear, i don't give a pho.",
  	"NO I CAN'T STOP EATING PHO! THIS IS HOW I EAT! HAVENT YOU SEEN MY MOVIES?!"
  	].sample
  haml :index, locals: {catch_phrase: catch_phrase}
end

get '/success' do
  haml :success
end
