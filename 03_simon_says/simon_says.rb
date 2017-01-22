#write your code here

def echo(say)
	return say
end

def shout(loud)
	return loud.upcase
end

#defaults times to 2
def repeat(rpt, times=2)
	rpt << " "
	x =  rpt * times
	x = x[0..-2] #spliced the last space
	return x
end

#splices a word based on the range. -1 because it counts 0 aswell.
def start_of_word(word,range)
	return word[0..range-1]
end

def first_word(sentence)
	x =  sentence.split(" ")
	x = x[0] #set x equal to the first word of the array.
	return x
end


def titleize(word)
	littleWords = ["and", "over" , "the", "or", "maybe"]
	
	x = word.split(" ")

	x.each_with_index do |a, b|
		if b == 0
			a.capitalize!
		else
			a.capitalize! unless littleWords.include? "#{a}"	
		end
		
	end
	x = x.join(" ")
	return x
end
