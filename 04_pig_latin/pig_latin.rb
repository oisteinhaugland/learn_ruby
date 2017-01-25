#write your code here

def translate(word)
	vowels = ['a','e','i','o','u','y']
	
	sentence = word.split(" ")


	sentence.each do |word|
		temp = ''
		until ['a','e','i','o','u'].include? (word[0])
			if 0 < word.length - 1 && word[0] == 'q' && word[1] == 'u' then
			  	temp << word[0,2]
        				word[0,2] = ''
			else
				temp << word[0]
        				word[0] = ''
			end				
		end
		word << temp + "ay"
	end	
 	sentence.join(" ")
end


=begin
other atemps

#consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','z']


#first attempt, failed second to last test.
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
=end



=begin
#a solution i dont understand
def translate(str)

	vowels = ['a', 'e', 'i', 'o', 'u']	
	s = str.split(' ').map{ |i| (vowels.include? i[0]) ? i = i + "ay" : i = i.gsub(/\b([bcdfghjklmnprstvwxyz]|qu)+/, '') + i.slice(/\b([bcdfghjklmnprstvwxyz]|qu)+/) + "ay" }.join(' ')
	
end
=end
