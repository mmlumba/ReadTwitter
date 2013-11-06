require 'open-uri'
require 'twitter'

POST test1.txt
Host: www.twitter.com

	def read_twitter()
		client = Twitter::REST::Client.new do |config|
  			config.consumer_key        = "hJ75vlDtueJeRauUXu5ow"
  			config.consumer_secret     = "0lh6Lejgp8C9h2ZG2TvsAn2YkiRVESMIMHFefI3sE"
  			config.access_token        = "14255934-et8BZO1mIvU0IrCfFUMX3dOAe5POOvoAyMpOlXEZg"
  			config.access_token_secret = "omsato3lgDz2zMMD2zHTiqkSwyPw3Llp04jwX26wSr4JH"
		end
		read = client.user_timeline("paramore")
		fname="test1.txt"
		somefile=File.open(fname,"w")
		somefile.puts(read)
		somefile.close
	end

