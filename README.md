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

* From the command line, run ``` ruby twitterapi.rb -u "<INSERT USERNAME HERE>" -w "<INSERT WORD HERE>"```
* Sample run:

```

ruby twitterapi.rb -u "paramore" -w "happy"

[densmiffy68:] @paramore , can you wish my daughter @hanban_123  a happy 15th birthday, she loves your concerts in birmingham, can't wait till the next one
[CateyGrace16:] @Paramore makes me happy @yelyahwilliams @itstayloryall @schzimmydeanie :) &lt;3
[theworldis0urs:] @paramore makes me happy.
[whoa_lashton:] @paramore you make me super happy, love you so much ♥
[samwalkwitz:] @paramore was incredible tonight and I almost cried when they brought the girl on stage she was so happy she was awesome  @yelyahwilliams
[cait_veronica:] @paramore is perfect😍 happy birthday Molly! I love my little sistaaa😘👭 #Q102JingleBall
[cait_veronica:] @paramore is perfect😍 happy birthday Molly! I love my little sistaaa😘👭
[Barbilina:] “@paramore: NEW BLOG: Update from the band! http://t.co/1ahZhTwkLX” omg I can't handle this, I'm so happy and proud of you guys 😭❤️😘
[ParamoreAUT:] @paramore i'm so proud of you and happy aaah i can't even put my feelings into words i love you so much
[BealerAmy:] @paramore Happy Holidays from Central PA!!!!
[ItsJustA_Spark:] @paramore They did such a good job! i got so emotional watching videos with u and Erica in Nashville tho. so happy for u guys!
[BVB_Revelation:] @paramore can you guys please say happy birthday to my friend Athena @AngelOfDark2013
[raynjhart:] So Happy #EEEEE “@paramore: We shot a video today for Ain't It Fun. This time it's for real. #AintItFun http://t.co/zAtLhzaIgI”
[_WhatisAlecx:] @paramore THIS MAKES ME SO HAPPY
[crrfs98:] @paramore ’s iTunes festival makes me so happy


```

----------------------

Coming Soon (To-Do List):

- [] Make program more compatible for windows by creating executable (.exe) with ocra gem
- [] Make program more compatible for windows/linux by creating gem out of this script