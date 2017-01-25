class Timer
  #write your code here
  attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds= seconds
	end

	def time_string
		#there are 3600 seconds in one hour
		#the remaining minutes are seconds / by 60 - to get to minutes. If you then find the remainding minutes.
		#find how many remaining seconds there are

		hours = seconds / 3600
		minutes = (seconds / 60) % 60 
		rest = seconds % 60

		sprintf('%02i:%02i:%02i',hours,minutes,rest) #save print with format.
		
	end
end
