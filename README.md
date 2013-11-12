ReadTwitter
======================
Purpose
This Ruby script reads any Twitter users timeline and displays the text of the timeline in a plain-text file (.txt). This plain-text file can then be fed into the VectorSpace program: https://github.com/mmlumba/VectorSpace

----------------------

Prerequisites:

* Ruby
Install by Mac: RVM
Install by Windows: Download with RubyInstaller and matching DevKit (https://github.com/oneclick/rubyinstaller/wiki/Development-Kit)
* Twitter API Client Gem from https://github.com/sferik/twitter
``` gem install twitter --pre ```
* Choice (to define and parse command line options)
``` gem install choice ```

----------------------

How this works:

* From the command line, run ``` ruby twitterapi.rb --username "<INSERT USERNAME HERE>" ```
* Sample run:

``` ruby twitterapi.rb --username "Goku" 

How many Saiyans does it take to screw in a lightbulb?

None. That is what Chi-Chi is for.
RT @DBZ_Saiyan_Saga: Our Super Saiyan teaser clip will be online in early December! Here's some SSJ concept art to whet your appetite! http…
The most righteous thing one can do is place their wants to the side and focus on the needs of others.
If you fall, it is up to you to pick yourself up. If you fail, do not dwell on it, but learn from it.
Humans make mistakes. That is what it means to be a human. Not everyone gets it right the first time. But everyone can learn.
I'll go first! http://t.co/9sLGM0c8w3
Never give up hope, never give up trying.
What doesn't kill you, makes you stronger. Unless you're a Saiyan. Then being killed also makes you stronger.
RT if you are a fan of Dragon Ball Z!
Um... You did a good job. RT @Madison420Ivy: my #Goku #DragonBallZ costume!! ;D http://t.co/onrXH3Ga7n
There is a difference between trying to be better than you are and trying to change who you are. Train yourself, never change yourself.
If you’re having power level problems I feel bad for you, son. I got 99 problems but becoming Super Saiyan ain’t one.
A true friend doesn’t grieve at your funeral. A true friend searches for the Dragon Balls.
#GirlsLikeItWhen you transform into a Super Saiyan.
#SnakeWay

╭⇠⇠⇠╯
╰⇢⇢⇢╮
╭⇠⇠⇠╯
╰⇢⇢⇢╮
╭⇠⇠⇠╯
╰⇢⇢⇢╮
╭⇠⇠⇠ ╯
╰⇢⇢⇢╮
╭⇠⇠⇠╯ 
╰⇢⇢⇢╮
╭⇠⇠⇠╯ 
╰⇢⇢⇢╮ 
╭⇠⇠⇠╯
╰⇢⇢⇢╮
╭⇠⇠⇠╯
╰⇢ O King Kai’s Planet

#SnakeWay
RT if you want Netflix to add Dragon Ball Z!
A one in a million chance, is still better than no chance at all.
Dragon Ball Z: Battle of Z gets a January Release. Here is a NEW Trailer! 
http://t.co/d8MBwsbFjL
Live. Laugh. Love. Kamehameha.
Even when you don't get the results you want, trying your hardest and giving it your best show honor and true character.
```