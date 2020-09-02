def substrings(str,dictionary)
listerHash = Hash.new(0) #create counter hash
dictionary.each do |substr|
unless str.downcase.include?(substr.downcase) 
	next 
end
i = 0
count = 0
(str.length-substr.length+1).times do 
if str[i,substr.length].upcase == substr.upcase
	count+= 1
end
i+=1
end
listerHash[substr] = count
end
return listerHash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

