require 'twitter'
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
		desc 'What type of tweet content you were looking for. You can pass more than one word.'
	end

	option :directory, :required => true do
        short '-d'
        long '--dir=directory'
        desc 'The directory to place your file in'
    end
end

#keyWord = Array.new(option)
#keyWord.each {|x| puts x}

def read_twitter(word,directory)
	client = Twitter::Streaming::Client.new do |config|
			config.consumer_key        = "hJ75vlDtueJeRauUXu5ow"
			config.consumer_secret     = "0lh6Lejgp8C9h2ZG2TvsAn2YkiRVESMIMHFefI3sE"
			config.access_token        = "14255934-et8BZO1mIvU0IrCfFUMX3dOAe5POOvoAyMpOlXEZg"
			config.access_token_secret = "omsato3lgDz2zMMD2zHTiqkSwyPw3Llp04jwX26wSr4JH"
	end

    topics = ['paramore']
    
    currentTime = (Time.new).strftime("%Y_%m_%d");
	startTime = Time.now
	fname="#{directory}/#{word.join("_")}_2.txt"
	somefile=File.open(fname,"w")


    begin
	    
		#puts "made it here"

	    count = 0
		    client.filter(:track => Choice.choices[:word].join(",")) do | object |

		    	somefile.puts object.text if object.is_a?(Twitter::Tweet)
		    	count +=1
		    	if(count == 40)
		    		abort
		    	end
		    end

	    somefile.close

	rescue Exception => e
	    somefile.close
	    puts e
    end


    #client.filter do |object|
    #	puts object.text if object.is_a?(Twitter::Tweet)
    #end
	#read = client.user_timeline(userName,{:count => 200})
	#read = client.search("to: #{word * ' '}", :count => 200).collect do |tweet|
  #		"#{tweet.text}"
	#end
	
	#read.each{ |tweet| somefile.puts(tweet.text) }
	#somefile.puts(read)
	#somefile.close
end;

#:result_type => "recent"


#begin
#	read_twitter Choice.choices.userName,Choice.choices.word
#rescue => e_username
#	puts(e_username)
#	puts("Username: '#{Choice.choices.userName}' does not appear to have a Twitter profile...")
#rescue => e_keyword
#end

read_twitter(Choice.choices[:word],Choice.choices[:directory])