
class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]		
	end	

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookietype)
		puts "That was a good #{cookietype} cookie!"
	end

	def celebrate_birthday
		@age = rand(140)
		@age += 1
		puts "Next year I will be #{@age} years old!!"
	end

	def get_mad_at(name)
		@reindeer_ranking.delete(name)
		@reindeer_ranking << name
	end 
end

gender_list = ["agender", "female", "bigender", "male", "female", "gender fluid", "two-spirit"]
ethnicity_list = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "Mongol"]
cookies = ["oatmeal", "chocholate chip", "sugar", "oreo", "nilla wafer", "gingerbread", "M & M"]

20.times do |gender, ethnicity|
  gender = gender_list.sample
  ethnicity =  ethnicity_list.sample
  cookie = cookies.sample
  santa = Santa.new(gender, ethnicity)
  puts "I am a #{gender} Santa who is #{ethnicity}!"
  santa.eat_milk_and_cookies(cookie)
  santa.celebrate_birthday
  santa.speak
  puts "-"*30
end 


