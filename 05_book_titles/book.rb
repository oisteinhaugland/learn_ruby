class Book
# write your code here
	
	attr_reader :title
	
	def title= (book_name)
		little_words = ['for', 'and', 'or', 'in', 'the', 'of' ,'a', 'an']	
		word_array = book_name.split(" ")

		word_array.each_with_index do | i , index |
			if !little_words.include? i or index == 0
				i.capitalize!
			end
		end
		word_array = word_array.join(' ')
		@title = word_array
	end
end

	
