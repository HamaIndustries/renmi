#require act modfest:barebones_plume_2
#alias actor c chai
#alias actor d delta
#alias actor x proxy
#alias actor b barebones

//ACT 3: (requires barebones + plume ACT 2) Tries to con the player into something again. Can't you say anything with a straight face? ah, you got me. turns to leave, but you say he's disingenuous. heh, what do you know about real? You see these fantasy animals and think any of this is real? Next you'll say you can talk to the dead.

// most act 3's won't be very long, they bridge the first and second parts of the narrative.


// ACT 3: (requires barebones + plume ACT 2) Tries to con the player into something again. 

    c focus_frown 1: Whew, last one.

    ~ run_command("stopsound @s music")
    ~ run_command("playsound modfest:music.stereo.pasuka music @s ~ ~ ~ 1 1")

    c happy: Thanks again, <PLAYER_NAME>. You've been a huge help all day.
    
*   "No problem["]." This has always been one of your specialties, so helping out really was nothing.

*   "I'm just glad it's over["]." What an exhausting endeavour, and you're completely soaked to boot.

-
    You dump the last bucket of piranhas into the pool. A strange club for sure, but you've seen stranger today.
    
    d happy_sweat 4: I know I'd be behind on everything if not for you.
    
    He throws the handful of hotdogs in for the test run. Before he was handed the bucket, there were more than a handful. You wonder where they all went.
    
    d smirk: Why didn't you transfer here sooner?
    
    Wouldn't he like to know.
    
    c smirk_smile: I'm just glad we're getting someone responsible on the committee this time.
    
    d frown: The committee has responsible members!
    
    c angry: They added Plume and Barebones most recently.
    
    d confident: Sure, but there's Ananas and Shrimple to lead them.
    
    c smirk: Delta, Ananas and Shrimple <i>brought them onto the committee</>.
    
    d shocked_sweat: Whoops :o3
    
    d confident_smile: Well, I am proud to report that our newest, most responsible committee officer comes with no strings attacked. I mean attached.
    
    ~ run_command("stopsound @s")
    x reading_intrigued 2: Speaking of reports, Professor Delta. Have we completed ours?
    
    d zoomies_sweat: YIP!
    
    Your animal companions both step back, fur raised on ends.
    
    d shocked: H-headmaster! 
    
    d confident_smile_sweat: I was right about to!
    
    He's shaking in his little boots. Professor Chai, as collected as ever, even looks a little disturbed.
    
    x side: I expect much to read, seeing how it took two full weeks to complete them.
    
    d smirk: N-naturally... :o3
    
    x reading: Excellent. Perhaps I can convince the board to raise your salary from two berries to three.
    
    x reading_intrigued: Professor Chai, I take it the event is proceeding as planned? 
    
    She jerks to attention, unready to respond. She absentmindedly knocks the hotdog bucket into the kiddy pool, which is prompty devoured.
    
    c focus_frown: No news on the northern front, Headmaster.
    
    x: I take it that all the smoke is intentional?
    
    c: Shrimple's running her barbecue seminar for another half hour. I'm keeping a close eye on it.
    
    x side: Oh? She's giving her seminar in the alley behind the gym?
    
    c angry: WHAT
    
    c smirk: ...I need to go.
    
    x reading: You are excused. Professor Delta, do we have something to keep ourselves occupied? #hide chai
    
    d adrenaline_sweat: I just remembered I had something extremely important I should have taken care of earlier sosorryIdidn'tbye--
    
    Professor Delta scampers off as fast as his little legs can carry him. #hide delta
    
    It's no wonder he used to coach the track team. That is, until he snapped and tried to fetch the baton during semifinals.

    ~ run_command("stopsound @s music")
    
    You are once again left alone with your thoughts.
    
    x staring 2: Eventful day?
    
*   [You could say so.]

    x reading: And yet you've handled it with poise. You come across to me as a bright eyed and bushy tailed kind of person.
    
    * *     [Physically?]
    * *     [Emotionally?]
    - - 

    ~ run_command("stopsound @s music")
    x reading_intrigued: Your question is an answer, I should think. So terse. Well done.

*   [Nothing unusual.]
    
    x reading_intrigued:: You must have had quite the eventful life if you find all this to be nothing out of the ordinary.
    
    * *     [You meant unusual for this school.]
    
            x staring: I suppose that is true, isn't it?
            
            x side: The festival concentrates all of our oddities into one place and one day.
            
            x: But those oddities had to originally be present for this to be true.
            ~ run_command("stopsound @s music")
            x: You are an observant one, aren't you?
            
    * *     [This school barely registers to you.]
    
            x: Shame. It's a unique place, I hope you will come to find.
-
    ~ run_command("stopsound @s music")
    x staring: Someone of your background could fill a niche this school has been waiting for.

*   [What background?]
-
    x reading: Quite so.
    
    x staring: In fact, I've'a proposition for you, if you would hear it. 

    ~ run_command("playsound modfest:music.stereo.pasuka music @s ~ ~ ~ 1 0.8")

    b: Oi, <PLAYER_NAME>! I gots something for yous! #hide proxy
    
    This should be good. 
    
*   (bridge) A bridge to sell yous[].
*   (prince) He's an exiled prince[].
*   (giveaway) He's running a giveaway[].
-
    b googly: How did yous--
    
    b frown_blushing_sweating: Yous been spying on me?
    
    Barebones climbs carefully out of the box he'd stowed away in. He smells faintly of hotdogs.
    
    b aura: I'm flattered, course, but a lad's gotta have some privacy, eh?
    
*   You're not falling for it this time[].
*   You're falling for it this time[]. <>

{
- bridge: A whole bridge?
- prince: A princely inheritance?
- giveaway: A whole lot of money?
} Just for you?

    No, honey, of course not. Please tell him what's what.
    
    * *     You [tell him what's what] reveal to him that you saw through this scheme from the moment he opened his mouth. Good save.
-
    b frown: Eh, it was worth a shot. 
    
    b: Can yous blame a guy for trying? Living the life I'm living? Would you believe it if I told yous I was an orphan boy?
    
*   You could believe it.

    b: That's what I like about yous. You see the best in people.
    
    b aura: Even poor little orphan boys such as I...

*   Does he ever stop?
    
    b frown_sweating: Stop what? Being a poor little orphan boy?
    
    b frown: For shame, <PLAYER_NAME>!
-

    Barebones turns to leave. There's a piranha chewing on the tip of his tail, but you can't bring yourself to point it out.
    
    ...
    
*   "You're disingenuous["]."
-
    b frown: Wadda hell's gotten into yous?
    
    b aura: 'course I'm a genius.
    
*   He [heard you] knows what you meant. Can't he say anything with a straight face?
-
    Can he be real with it for one minute out of his elaborate little gangster roleplay? 

    b: ...

// Can't you say anything with a straight face? ah, you got me. 

// turns to leave, but you say he's disingenuous. 

// heh, what do you know about real? You see these fantasy animals and think any of this is real? 

    b frown: Heh. Real? Wadda yous know about reals?
    
    b aura: Yous see all these fantasy talking animals and think any a' this is reals?
    
*   He is one[] of these funny talking animals. A skeleton of one, anyway. Maybe a fox?

    b sweating: Yous barking up the wrong tree, pal.

    A dog, then? It would explain no small number of his idiosyncrasies.
    
    b blushing: Eh? Yous got something against dogs?

*   Does it matter[?] to what extent this place is reality? It's a world, and for that matter a world he lives in.

    He can't deny his own solipsistic reality.

//Next you'll say you can talk to the dead.
-   
    b frown: Look, pal. Nobody cares. I could rock up tomorrow and yank a pocket and nobody'll bat an eye.
    
    b: They expect it of me, y'see. It's why I'm here, same as yous I bet. Gotta look out for number one, and they all knows I knows that.
    
    b: You ain't got yous cranium on straight if yous think it matters what people think a' me.
    
    At last he notices the piranha. With a practiced flick of the tail, it arcs cleanly into the water without even a splash.
    
    b aura: Next you'll say yous can talk to the dead.

    -> END
