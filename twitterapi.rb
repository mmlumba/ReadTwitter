require 'twitter'
require 'choice'

Choice.options do 
        option :userName, :required => true do
                short '-u'
                long '--userName=UserName'
                desc 'User name used to retrieve tweets'
        end

        option :word, :required => true do
                short '-w'
                long '--word=keyWord'
                desc 'What type of tweet content you were looking for'
        end
end

def read_twitter(userName,word)
        client = Twitter::REST::Client.new do |config|
                        config.consumer_key        = "hJ75vlDtueJeRauUXu5ow"
                        config.consumer_secret     = "0lh6Lejgp8C9h2ZG2TvsAn2YkiRVESMIMHFefI3sE"
                        config.access_token        = "14255934-et8BZO1mIvU0IrCfFUMX3dOAe5POOvoAyMpOlXEZg"
                        config.access_token_secret = "omsato3lgDz2zMMD2zHTiqkSwyPw3Llp04jwX26wSr4JH"
        end
        #read = client.user_timeline(userName,{:count => 200})
        read = client.search("to:#{userName} #{word}", :count => 200).collect do |tweet|
                  "#{tweet.user.screen_name}: #{tweet.text}"
        end
        currentTime = (Time.new).strftime("%Y_%m_%d");
        fname="#{userName}_#{word}_#{currentTime}.txt"
        somefile=File.open(fname,"w")

        #read.each{ |tweet| somefile.puts(tweet.text) }
        somefile.puts(read)
        somefile.close
end;

#:result_type => "recent"


begin
        read_twitter Choice.choices.userName,Choice.choices.word
rescue => e_username
        puts(e_username)
        puts("Username: '#{Choice.choices.userName}' does not appear to have a Twitter profile...")
rescue => e_keyword
end