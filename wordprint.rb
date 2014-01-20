require 'choice'

Choice.options do 
	#option :userName, :required => true do
	#	short '-u'
	#	long '--userName=UserName'
	#	desc 'User name used to retrieve tweets'
	#end

	option :word, :required => true do
		short '-w'
		long '--word *WORDS'
		desc 'What type of tweet content you were looking for with the given words. You can pass multiple words for your arguments.'
	end
end


puts Choice.choices[:word]

keyWord = Array.new()[option]
keyWord.each {|x| puts x}