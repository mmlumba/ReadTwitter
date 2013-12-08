require 'twitter'

def read_twitter ()
	client = Twitter::REST::Client.new do |config|
			config.consumer_key        = "hJ75vlDtueJeRauUXu5ow"
			config.consumer_secret     = "0lh6Lejgp8C9h2ZG2TvsAn2YkiRVESMIMHFefI3sE"
			config.access_token        = "14255934-et8BZO1mIvU0IrCfFUMX3dOAe5POOvoAyMpOlXEZg"
			config.access_token_secret = "omsato3lgDz2zMMD2zHTiqkSwyPw3Llp04jwX26wSr4JH"
	end

	read = client.search("to:justinbieber marry me", :count => 3, :result_type => "recent").collect do |tweet|
  		"#{tweet.user.screen_name}: #{tweet.text}"
  	end

	fname = "jbtest.txt"
	somefile=File.open(fname,"w")
	somefile.puts(read)
	#read.each{ |tweet| somefile.puts(tweet.text) }
	somefile.close
  end

begin
	read_twitter
end