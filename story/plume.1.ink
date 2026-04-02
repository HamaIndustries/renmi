Ready?

* Let's dance.
-> plume_1

=== plume_1 ===
//Ananas asks you to have plume take the expense reports into tow. Plume first pretends to not hear you, then taunts you to do it yourself. Shenanigans to get there happen. then you reach the end. Out of breath, you hand the report to--plume?? Who it turns out was already there. They gloat, but realize they cannot open the mailbox. You help them open it, to their frustration.

// can trigger PLUME:VALLEY if you mention being from there/visiting carnival, making you past friends.


    a: Woah there, buddy. You got a minute?

*   ["What can I do for you?"] "Whaudgh caudsf ahh dfdgfudfdigun?" You mumble through your sandwich, nearly choking to death. Manners, honey.

    a: Believe it or not, I do in fact speak food. Please, continue your meal. I won't be long.
    
    * *     (eating) You continue eating[].
    * *     You motion for him to pause[] so you can finish your sandwich. Wow, compliments to Shrimple. That was incredible.
    - - 

*   You finish your sandwich[], then ask Ananas what he needs.

-   a: Our dear sweet Lulu and I just finished reviewing the expense reports. We need them delivered to the district's office in the city.

    a: I'd normally have the treasurer do it, but...
    
    He shifts uncomfortably, sort of a spiralling motion. You've been learning a lot of non-humanoid body language today.
    
    a: Between you and I, sometimes an extra little expense gets tacked on at the end for some reason. You read me?
    
*   [Loud and clear.] You nod.

    Who in their right mind made Barebones the treasurer anyway? Seems like a massive lapse in judgement.
    
    a: He means well. I think those empty sockets of his just have a little too much room for dollar signs to sprout.

*   [Beg your pardon?] You frown in confusion. How does an expense just appear out of nowhere? You've got some theories.

    a: ...
    
    a: You're a real trusting kid, aren't ya?
    
    a: I like that. Don't ever let the world change you.

-
*   {eating} ["Where do I take the reports?"] "Whredsf do Ifd tafs thsdf repgfdg?"

    a: You've got something on your, um, everywhere.
    
    a: Want to finish that, first?
    -> not_eating


*   (not_eating) {not eating} "Where do I take the reports?"


-   a: Here's the neat part: you don't.

    a: The admin building's a solid hour away by bus, and we need it there by noon.
    
    a: Can I ask you to get Plume on the delivery?
    

*   {eating} [That rude edgy kid?] "Thatdf rugfdghd edsf kisdf?"
*   (bird) {not eating} That rude edgy kid?[] Flipped you the bird?
    
-   a: That's the Plume we know and love.
    
    a: They have these skates, see. Not many people can use 'em--makes me sick, personally--but a pro can go a mile a minute.
    
*   "I'm pretty good with a Spirit Vector["], myself."
    
    a: That so? Did you bring yours to school?
    
    ...
    
    a: I figured. I hear they're considered military equipment up in Lemniscate Valley, but some people refuse to be anything but an exception to the rule.
    
    a: Plume sure as hell won't part with theirs, that's for certain.
    
    You tried. Maybe you can sneak your SV past train security next time?
    
    That sounds like a fun adventure... which will not be taking place today.
    
*   "They can go that fast with roller skates?"

    a: You must not be in the loop, Spirit Vectors are the hottest thing in our age bracket. You can do wall runs and backflips and stuff.
    
    a: Plume's the captain of the SV club here, actually. Our school's been to nationals.
    
    a: I heard at that level some people can do some crazy magic, use their "rune matrix" to access a "spell dimension". Wild.
    
    a: Sorry, now it sounds like I'm doing an ad read. Go look them up, though, seriously. They're a lot of fun.

    Sure sounds like it.
    
-   a: So, can I count on you?

*   Might as well[] help out. It's hard to make friends without putting yourself out there.
*   Not really but[] he doesn't need to know you're unreliable. That's a special little surprise to be revealed in the third act.

-   a: Cheers. Keep in touch.

    Now to find the bird who flipped you.
    
    ...
    
    Easier done than said, it turns out. All you had to do was listen for nearby crashing sounds and yelling about some stolen property or magic graffiti.

    Plume vaults off a bench and blinks past you at eye level. For a microsecond, your eyes make contact.
    
*   You [catch them by the collar] catch only the afterimage by its collar, and even that blurs away through your fingers.

*   You call out that Ananas has a request[] for them.

-   <> Plume flies by with only a snaggletoothed grin, 

immediately followed by crashing through an unfortunate booth left unattended while its owner is out for brunch. 
    
    Crashing might be the wrong word; The booth itself is fine, despite Plume's momentum. 
    
    However, most of its contents, gold jewelry and trinkets, now lay in an unfathomable heap covering every surface.
    
    They crawl out gingerly from the wreckage, only to see you standing before them judgementally.
-
    Before you can react, Plume footstools a stunned but otherwise unharmed visitor. They land gracefully on the roof of the ruined stall, before turning to inspect you.
    
*   "Didn't we see each other at the[Carnival?"] Lemniscate Carnival?"

    -> gargoyle_remark ->
    
    * *     You ascended the mountain together.[] You were both dead tired by the end, but getting that last shard was a matter of life or death, for the two of you.
        -> friend
    * *     You snuck into the old trainyard together.[] They showed you how it's done, and even helped you steal your own Spirit Vector from an unattended guard station.
        -> friend
    
    * *     Maybe you were mistaken.
        -> mistaken
    
    - -     (friend) p: There're acorns in your brain. I think I would remember something awesome like that.
    
            After the carnival, they showed you around the city, all the hidden corners only the kids and valley spirits knew about.
            
            It was only a fleeting moment in time, nearly two years ago now. But it was the kind of moment that leaves an impression in your soul's sand that doesn't wash away.
            
            p: Mmmmmm. Oh, that was you? 
            
            Finally, recognition.
            
            p: Sure you've been eating your wheaties? You haven't grown an inch.
        
            For better or for worse. You can't help but wonder what happened since then. They weren't always this mean.
            -> request
        
    - -     (mistaken) p: Mmmm, no. I recognize you.
    
            An impish smile. You'll be seeing this a lot.
            
            p: Did you ever figure out where those lost tickets went?
            
            That was--? And you wasted an hour on that blasted minigame! And then the staff came and said it was out of order all day!! Curse you!!!
            
            Don't give them what they want, honey. Play it cool.
            -> annoying
            

*   ["You're kind of annoying"] p: You're kind of annoying.

    You-- whatever.
    
    p: Sorry, you were saying something? I can't hear you so well from up here.
    - -     (annoying)
    * *     You give them a blank stare[].
            
            p: ...
            
            {mistaken: p: Yeah, you probably were mistaken. Whatever.|p: I'm... just gonna go now.}
            
    * *     (rock) You throw a small rock at [them] Plume. Surprisingly, it hits them square in the chest, knocking them on their ass.
    
            p: The hell is wrong with you?
            
            Deserved.
            -> request
    
-   (request)
*   "Ananas needs these [delivered"] delivered to the city."

-   p: Deliver 'em yourself. Dontcha see your public relations officer is preoccupied?

    They do seem quite preoccupied peacocking atop their latest ruined booth. Out of Plume's line of sight, you see a very unhappy looking booth owner storming over from Shrimple's tent.
    
    You should make this quick.
    
*   "It needs to be there by lunch"

    Another flash of that snaggletooth. You want to grab it and yank them around a little bit right now.
    
    p: Then you'd better get a move on, don't you think?

*   "This stays between us if you do it["]," you suggest, gesturing to the newest victim of Plume's public relations campaign.

    p: Crap. Tell Ananas I'm resolving a participant dispute. He'll understand.
    
-   p: There's a bunch of booths around here with movement mods. Nothing as good as an SV, but I'm sure you can figure it out.

    They gracefully duck {rock: another|a} rock from their happy customer.
    
    p: Dude! Festival complaint department that way!
    
    p: Later, losers.
    
    I don't see any way around it, honey. Let's go find you a movement mod.
    
    NOTE: This is a fetch/deliver quest. The following happens after.
    ...
    
    -> plume_1_city
    
// adventure happens

= plume_1_city
    Out of breath, you drop to the floor, back to the wall. That ass is getting {rock: another rock|an earful} after this.
    
    An empathetic young district employee walks over to accept the reports. You hand them over with gratitude, despite the fact that you can't even focus your eyes properly.
    
    Once you can stand on two legs again, you might be able to ask the employee to be a witness to Plume's delinquency. Ananas can take it from there.
    
    p: Heh. Pleasure doing business with you, buddy.
    
*   Bastard!!!!

-   Plume holds the pages up for inspection, then pats some dust off of them ceremoniously.
    
    p: I'll put in a good word for you with the Boss. 

*   Why are they talking like that?[] For some reason, you observe that Plume switches to a different but coldly familiar dialect whenever they gloat.

    This line of observation has also revealed a tell. They close their eyes for a second whenever the pridefulness peaks.
    
    In that very second, you strike.

*   Not if you get the report back first.

-   Faster than lightning, faster than even a Spirit Vector, you seize Plume by the collar like a kitten by the scruff.
    
    Plume begins to yell and scratch at you, but you don't feel a thing. They quickly go limp. Not beating the kitten allegations.

-   You are faced with impatient dejection mixed with unadulterated odium. That is, they pout.

    Curiously, they weigh almost nothing.
    
-   (inspection)
*   (shake) You shake them a little[] just to see if anyone's home. Their limbs wiggle around a bit. {not eyes:There's life in there, somewhere.}
    -> inspection

*   (eyes) You stare intensely into their [eyes] deep red eyes. 

    * *     They're quite beautiful[], actually. 

            As human as they look on the outside, you feel something ancient just below the surface somewhere. Something sad, even, though perhaps unconsciously.
            
            It's like looking into a shallow pool, but what you thought was the bottom was only a filmy layer over a fathomless depth.
            
    * *     They're angry looking[]. Fierce, like a massive beast that doesn't accept its destined place in the food web.
    
            Being anything less than an apex is insufficient, in rejection of its material reality.
            
            The others make light of Plume, but in this first real encounter, you start to wonder if all this attitude isn't just for show.
    
    - -     Who is this person?

    Plume, getting self conscious, blushes. Were you making a face, just now? They struggle to turn away from you. {not shake:Finally, a response.}
    
    -> inspection
*   ->

-   p: Fiiiine. Put me down already.
    
    You set them do--
    
    p: Psych! See ya, idiot!
    
    Plume slams face first into the door behind them, marked "OFFICE." Obnoxiously vague, but poignant. It's your delivery target.
    
    They shake the poor brass handle with increasing frustration, even going so far as to hang off of it and pull with their entire body. 
    
    You fear the door's destruction, but once again, nothing happens. This is becoming a pattern with them.
    
    Plume collapses to the ground in exactly the same position you were in upon coming here. 
    
*   "Need help?"[] You are rewarded with a new gesture, an unfamiliar one. Either you are not as well acquainted with rude culture as you thought, or this is a local dialect.
*   "It's locked[?"] in the middle of the day?" Unlikely, especially as a student or two from other clubs were leaving on your way in.

-   
*   You try the doorknob[]. It turns without complaint.
    
-   p: ...
    
    p: Just take it. You can tell Ananas whatever.
    
    Plume shoves the paper into your arms, and is gone before your next blink.
    
    For someone so small and curt, Plume might be the most mysterious of your new, strange crew. 
    
    You doubt they'll give up their secrets so willingly, but everything you've seen so far enkindles a sharp feeling of curiosity.
    
    Why does this keep happening?
-> END

= gargoyle_remark
    They position themself like a cat, or perhaps a gargoyle, made up of nothing but magic and rudeness.
    ->->
    