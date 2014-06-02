require 'ap'
#connection types 
	#First - if two users both have 1 or more tweets that mention each other - ex: Kyle has tweet that mentions Becca and Becca has tweet that metnions Kyle 
	#Second - if Kyle & Becca have a first order connection and Becca & Sid have a first order connection, then Kyle & Sid have a second order connection 
	#Third - same as second but a 3rd level down 
	#Fourth - same as 3rd but a 4th level down 
	#Etc.


	#have to list out in alphabetical order 





#######Steps#######

# 1 - read each line of the input file 
# 2 - from each line capture who tweeted, and who they mention - hash of arrays, person tweeting is key & array of mentions is value 
# 3 - compare each person to the other to see if they both tweeted about each other. If so record that they are 1st level connections 
# 4 - compare each person's first level connections and add differences as 2nd degree connection 
# 5 compare each person's first level connections with their 2nd level connections & any differences are recorded as 3rd level 
# 6 continue increasing level by 1 until there are no more connections 


# tweets = File.open("sample_input.txt", "r"){|file| file.read}



#create person objects out of lines - need ability to check if person already exists



def parse_line(line)
		@name = line.split(":")[0]
		puts "name from this line is: #{name}" 
		words = line.split(" ")
		@mentions = []

		words.find_all do |item| 
	      if item.include?("@")
			mentions << item 
		  end 
	    end 
		ap mentions	

		#split this into 3 methods & add file.open(read_file).readlines... to 1st method
end 

def person_generator(name, mentions)

  #1st check to see if person has been created 
  #if they have add mentions to their mentions collection 
  #if they haven't been created then create the person w/ name & mentions 

end 






read_file = "sample_input.txt"
	
File.open(read_file).readlines.each do |line|
  puts line
  parse_line(line)
end









class TweetParser

	



#takes in line and parses out name & mentions 

#checks Person class to see if person with name already exists, 
#if so then adds mentions with the mention=(mention) method in the 
#person class


end 






class Person 
	PEOPLE = []
	attr_reader :name 
	attr_accessor :mention 

	def initialize(name, *mention)
		@name = name 
		@mention = mention 
		PEOPLE << self 
	end 



end 


# k = Person.new("Kyle", "@becca", "@jason")
# j = Person.new("Jason", "@kyle")
# b = Person.new("Becca", "@kyle", "@porscha")






