Ready?
*   Let's dance.
-> barebones_3

//placeholder
== function run_command(cmd) ==
    ~ return true

== barebones_3 ==
//ACT 3: (requires barebones + plume ACT 2) Tries to con the player into something again. Can't you say anything with a straight face? ah, you got me. turns to leave, but you say he's disingenuous. heh, what do you know about real? You see these fantasy animals and think any of this is real? Next you'll say you can talk to the dead.

// most act 3's won't be very long, they bridge the first and second parts of the narrative.


// ACT 3: (requires barebones + plume ACT 2) Tries to con the player into something again. 

#alias actor c chai
#alias actor d delta
#alias actor x proxy
#alias actor b barebones


    c: Whew, last one.
    
    c: Thanks again, <PLAYER_NAME>. You've been a huge help all day.
    
*   "No problem["]." This has always been one of your specialties, so helping out really was nothing.

*   "I'm just glad it's over["]." What an exhausting endeavour, and you're completely soaked to boot.

-
    You dump the last bucket of piranhas into the pool. A strange club for sure, but you've seen stranger today.
    
    d: I know I'd be behind on everything if not for you.
    
    He throws the handful of hotdogs in for the test run. Before he was handed the bucket, there were more than a handful. You wonder where they all went.
    
    d: Why didn't you transfer here sooner?
    
    Wouldn't he like to know.
    
    c: I'm just glad we're getting someone responsible on the committee this time.
    
    d: The committee has responsible members!
    
    c: They added Plume and Barebones most recently.
    
    d: Sure, but there's Ananas and Shrimple to lead them.
    
    c: Delta, Ananas and Shrimple <i>brought them onto the committee</>.
    
    d: Whoops :o3
    
    d: Well, I am proud to report that our newest, most responsible committee officer comes with no strings attacked.
    
    ~ run_command("/stopsound @s")
    x: Speaking of reports, Professor Delta, have we completed ours?
    
    d: YIP!
    
    Your animal companions both step back, fur raised on ends.
    
    d: H-headmaster! 
    
    d: I was right about to!
    
    He's shaking in his little boots. Professor Chai, as collected as ever, even looks a little disturbed.
    
    x: I expect much to read, if you're only completing these reports after you began on them two weeks ago.
    
    d: N-naturally... :o3
    
    x: Excellent. Perhaps I can convince the board to raise your salary from two berries to three.
    
    x: Professor Chai, I take it the event is proceeding as planned? 
    
    She jerks to attention, unready to respond. She absentmindedly knocks the hotdog bucket into the kiddy pool, which is prompty devoured.
    
    c: No news on the northern front, Headmaster.
    
    x: I take it that all the smoke is intentional?
    
    c: Shrimple's running her barbecue seminar for another half hour. I'm keeping a close eye on it.
    
    x: Oh? She's giving her seminar in the alley behind the gym?
    
    c: WHAT
    
    c: ...I need to go.
    
    x: You are excused. Professor Delta, do we have something to keep ourselves occupied? #hide chai
    
    d: I just remembered I had something extremely important I should have taken care of earlier sosorryIdidn'tbye--
    
    Professor Delta scampers off as fast as his little legs can carry him. #hide delta
    
    It's no wonder he used to coach the track team. That is, until he snapped and tried to fetch the baton during the semifinals.
    
    You are once again left alone with your thoughts.
    
    x: Eventful day?
    
*   [You could say so.]

    x: And yet you've handled it with poise. You come across to me as a bright eyed and bushy tailed kind of person.
    
    * *     [Physically?]
    * *     [Emotionally?]
    - - 
    x: Your question is an answer, I should think. So terse. Well done.

*   [Nothing unusual.]
    
    x: You must have had quite the eventful life if you find all this to be nothing out of the ordinary.
    
    * *     [You meant unusual for this school.]
    
            x: I suppose that is true, isn't it?
            
            x: The festival concentrates all of our oddities into one place and one day.
            
            x: But those oddities had to originally be present for this to be true.
            
            x: You are an observant one, aren't you?
            
    * *     [This school barely registers to you.]
    
            x: Shame. It's a unique place, I hope you will come to find.
-
    x: Someone of your background could fill a niche this school has been waiting for.

*   [What background?]
-
    x: Quite so.
    
    x: In fact, I had a proposition for you, if you would hear it. 

    b: Oi, <PLAYER_NAME>! I gots something for yous! #hide proxy
    
    This should be good. 
    
*   (bridge) A bridge to sell yous[].
*   (prince) He's an exiled prince[].
*   (giveaway) He's running a giveaway[].
-
    b: How did yous--
    
    b: Yous been spying on me?
    
    Barebones climbs carefully out of the box he'd stowed away in. He smells faintly of hotdogs.
    
    b: I'm flattered, course, but a lad's gotta have some privacy, eh?
    
*   You're not falling for it this time[].
*   You're falling for it this time[]. <>

{
- bridge: A whole bridge?
- prince: A princely inheritance?
- giveaway: A whole lot of money?
} Just for you?

    No, honey, of course not. Please tell him what's what.
    
    * *     You [tell him what's what] you reveal to him that you saw through this scheme from the moment he opened his mouth. Good save.
-
    b: Eh, it was worth a shot. 
    
    b: Can yous blame a guy for trying? Living the life I'm living? Would you believe it if I told yous I was an orphan boy?
    
*   You could believe it.

    b: That's what I like about yous. You see the best in people.
    
    b: Even poor little orphan boys such as I...
    
    Barebones turns to leave. There's a piranha chewing on the tip of his tail, but you can't bring yourself to point it out.

*   Does he ever stop?
    
    b: Stop what? Being a poor little orphan boy?
    
    b: For shame, <PLAYER_NAME>!
-
    ...
    
*   "You're disingenuous"
-
    b: Wadda hell's gotten into yous?
    
    b: 'course I'm a genius.
    
*   He heard you[]. Can't he say anything with a straight face?
-
    Can he be real with it for one minute out of his elaborate little gangster roleplay? 

    b: ...

// Can't you say anything with a straight face? ah, you got me. 

// turns to leave, but you say he's disingenuous. 

// heh, what do you know about real? You see these fantasy animals and think any of this is real? 

    b: Heh. Real? Wadda yous know about reals?
    
    b: Yous see all these fantasy talking animals and think any a' this is reals?
    
*   He is one[] of these funny talking animals. A skeleton of one, anyway. Maybe a fox?

    b: Yous barking up the wrong tree, pal.

    A dog, then? It would explain no small number of his idiosyncrasies.
    
    b: Eh? Yous got something against dogs?

*   Does it matter[?] to what extent this place is reality? It's a world, and for that matter a world he lives in.

    He can't deny his own solipsistic reality.

//Next you'll say you can talk to the dead.
-   
    b: Look, pal. Nobody cares. I can rock up tomorrow and yank something outta a pocket and nobody'll bat an eye.
    
    b: They expect it of me, y'see. It's why I'm here, same as yous I bet. Gotta look out for number one, and they all knows I knows that.
    
    b: You ain't got yous cranium on straight if yous think it matters what people think a' me.
    
    At last he notices the piranha. With a practiced flick of the tail, it arcs cleanly into the water without even a splash.
    
    b: Next you'll say yous can talk to the dead.

    -> END
