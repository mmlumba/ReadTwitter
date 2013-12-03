require 'twitter'
require 'choice'
require 'uuid'

#shut up
#OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
#POST test1.txt
#Host: www.twitter.com

Choice.options do 
	option :userName, :required => true do
		short '-u'
		long '--userName=UserName'
		desc 'User name used to retrieve tweets'
	end
end

def read_twitter(userName)
	client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "hJ75vlDtueJeRauUXu5ow"
			config.consumer_secret     = "0lh6Lejgp8C9h2ZG2TvsAn2YkiRVESMIMHFefI3sE"
			config.access_token        = "14255934-et8BZO1mIvU0IrCfFUMX3dOAe5POOvoAyMpOlXEZg"
			config.access_token_secret = "omsato3lgDz2zMMD2zHTiqkSwyPw3Llp04jwX26wSr4JH"
	end
	uuid = UUID.new
	read = client.mentions_timeline(userName,{:count => 200})
	currentTime = (Time.new).strftime("%Y_%m_%d");
	fname="#{userName}_#{currentTime}.txt"
	somefile=File.open(fname,"w")

	read.each{ |tweet| somefile.puts(tweet.text) }
	somefile.close
end;


begin
	read_twitter Choice.choices.userName
rescue => e
	puts(e)
	puts("Username: '#{Choice.choices.userName}' does not appear to have a Twitter profile...")
end

