#write your code here
def translate(word)
	newWord = ""
	vowels = ["a","e","i","o","u","y"]
	consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z']

	if word.include? " " #more than one word
		x = word.split(" ")
		x.each do |a|
			if consonants.include? a[0]
				a << a[0] + "ay"
				a[0] = ''
			else
				a << "ay"
			end
		end
		return newWord = x.join(" ")	

	elsif vowels.include? word[0]  #starts with a vowel
		
		return word << "ay"
	
	elsif word[0..2] =~ /^[^aeiou]{3}/ #three consonants - if the first three character does no match the vowel regex.
		
		word << word[0..2] + "ay"
		return newWord = word[3..-1]		

	elsif word[0..1] =~ /^[^aeiou]{2}/ #two consonants
			word << word[0..1] + "ay"
			return newWord = word[2..-1]					
	
	else	#just a consonant

		if ["q"].include? word[0]
			word << word[0..1] + "ay"
			return word[2..-1]
		else
			word << word[0] + "ay"
			return newWord = word[1..-1]	
		end
		

	end
end