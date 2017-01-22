#write your code here

#converting farenheit to celcius. 
def ftoc(degrees)
	return (degrees - 32) * 5/9 
end

#converting celcius to farenheit
#0 degrees is 32 farenheit.
#to_float for decimals in both for body temperature.
def ctof(degrees)
	return degrees * 9/5.to_f + 32.to_f
end

ctof(37)