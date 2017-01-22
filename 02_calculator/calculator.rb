#write your code here

def add(num1,num2)
	return num1 + num2
end

def subtract (num1,num2)
	num1 - num2
end


#adding numbers in an array
def sum(array)
	answer = 0
	if array.length > 0 then
		array.each {|x| answer += x}
	else
		return 0
	end
	return answer
end


def multiply(*args)
	return args.inject(&:*) #wow this works
	#return args.inject {|a,b| a * b }
end

def power(a,b)
	return a**b
end	

#recursion cool
def factorial(num)
	if num > 0 then
		return num * factorial(num-1) 
	else	
		return 1
	end
end



