#require act modfest:intro_7

#alias actor p plume
#alias actor a ananas

//Ananas asks you to have plume take the expense reports into tow. Plume first pretends to not hear you, then taunts you to do it yourself. Shenanigans to get there happen. then you reach the end. Out of breath, you hand the report to--plume?? Who it turns out was already there. They gloat, but realize they cannot open the mailbox. You help them open it, to their frustration.

// can trigger PLUME:VALLEY if you mention being from there/visiting carnival, making you past friends.

-> begin
== begin ==

    a sad: Woah there, buddy. You got a minute?

*   ["What can I do for you?"] "Whaudgh caudsf ahh dfdgfudfdigun?" You mumble through your sandwich, nearly choking to death. Manners, honey.

    a: Believe it or not, I do in fact speak food. Please, continue your meal. I won't be long.
    
    * *     (eating) You continue eating[].
    * *     You motion for him to pause[] so you can finish your sandwich. Wow, compliments to Shrimple. That was incredible.
    - - 

*   You finish your sandwich[], then ask Ananas what he needs.

-   a neutral 3: Our dear sweet Lulu and I just finished reviewing the expense reports. We need them delivered to the district's office in the city.

    a: I'd normally have the treasurer do it, but...
    
    He shifts uncomfortably, sort of a spiralling motion. You've been learning a lot of non-humanoid body language today.
    
    a embarrassed: Between you and I, sometimes an extra little expense gets tacked on at the end for some reason. You read me?
    
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


-   a neutral 2: Here's the neat part: you don't.

    a: The admin building's a solid hour away by bus, and we need it there in half that.
    
    a: Can I ask you to get Plume on the delivery?
    

*   {eating} [That rude edgy kid?] "Thatdf rugfdghd edsf kisdf?"
*   (bird) {not eating} That rude edgy kid?[] Flipped you the bird?
    
-   a: That's the Plume we know and love.
    
    a: They have these skates, see. Not many people can use 'em--makes me sick, personally--but a pro can go a mile a minute.
    
*   "I'm pretty good with a Spirit Vector["], myself."
    
    a sad: That so? Did you bring yours to school?
    
    ...
    
    a: I figured. I hear they're considered military equipment up in Lemniscate Valley, but some people refuse to be anything but an exception to the rule.
    
    a: Plume sure as hell won't part with theirs, that's for certain.
    
    You tried. Maybe you can sneak your SV past train security next time?
    
    That sounds like a fun adventure... which will not be taking place today.
    
*   "They can go that fast with roller skates?"

    a: You must not be in the loop, the Spirit Vector is the hottest thing in our age bracket. You can do wall runs and backflips and stuff.
    
    a: Plume's the captain of the SV club here, actually. Our school's been to nationals.
    
    a: I heard at that level some people can do some crazy magic, use their "rune matrix" to access a "spell dimension". Wild.
    
    a embarrassed: Sorry, now it sounds like I'm doing an ad read. Go look them up, though, seriously. They're a lot of fun.

    Sure sounds like it.
    
-   a: So, can I count on you?

*   Might as well[] help out. It's hard to make friends without putting yourself out there.
*   Not really but[] he doesn't need to know you're unreliable. That's a special little surprise to be revealed in the third act.

-   a: Cheers. Keep in touch.

    Now to find the bird who flipped you. #hide ananas
    
    ...
    
    ~ run_command("tp @s 142 77 73 90 4")
    
    Easier done than said, it turns out. All you had to do was listen for crashing sounds and screaming about some stolen property.

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
    
*   "Didn't we see each other at the[ Carnival?"] Lemniscate Carnival?"

    -> gargoyle_remark ->
    
    * *     You ascended the mountain together.[] You were both dead tired by the end, but getting that last shard was a matter of life or death for the two of you.
        -> friend
    * *     You snuck into the old trainyard together.[] They showed you how it's done, and even helped you steal your own Spirit Vector from an unattended guard station.
        -> friend
    
    * *     Maybe you were mistaken.
        -> mistaken
    
    - -     (friend) p pout_side: You have acorns in your brain. I think I would remember something awesome like that.
    
            After the carnival, they showed you around the city, all the hidden corners only the kids and valley spirits knew about.
            
            It was only a fleeting moment in time, nearly two years ago now. But it was the kind of moment that leaves an impression in your soul's sand that doesn't wash away.
            
            p: Mmmmmm. Oh, that was you? 
            
            Finally, recognition.
            
            p smug: Sure you've been eating your wheaties? You haven't grown an inch.
        
            For better or for worse. You can't help but wonder what happened since then. They weren't always this mean.
            -> request
        
    - -     (mistaken) p smile: Mmmm, no. I recognize you.
    
            An impish smile. You'll be seeing this a lot.
            
            p smug: Did you ever figure out where those lost tickets went?
            
            That was--? And you wasted an hour on that blasted minigame! And then the staff came and said it was out of order all day!! Curse you!!!
            
            Don't give them what they want, honey. Play it cool.
            -> annoying
            

*   ["You're kind of annoying"] p: You're kind of annoying.

    You-- whatever.
    
    p smug: Sorry, you were saying something? I can't hear you so well from up here.
    - -     (annoying)
    * *     You give them a blank stare[].
            
            p pout_side: ...
            
            {mistaken: p embarrassed: Yeah, you probably were mistaken. Whatever.|p embarrassed: I'm... just gonna go now.}
            
    * *     (rock) You throw a [rock at them]small rock at Plume. Surprisingly, it hits them square in the chest, knocking them on their ass.
    
            p pissed: The hell is wrong with you?
            
            Deserved.
            -> request
    
-   (request)
*   "Ananas needs these [delivered"] delivered to the city."

-   p pissed: Deliver 'em yourself. Dontcha see your public relations officer is preoccupied?

    They do seem quite preoccupied peacocking atop their latest ruined booth. In the corner of your eye, there is a very unhappy booth owner storming over from Shrimple's tent.
    
    Make this quick.
    
*   "It needs to be there by lunch"

    Another flash of that snaggletooth. You want to grab it and yank them around a little bit right now.
    
    p smug: Then you'd better get a move on, don't you think?

*   "This stays between us if you do it["]," you suggest, with a gesture to the newest victim of Plume's public relations campaign.

    p pout_side: Crap. Tell Ananas I'm resolving a participant dispute. He'll understand.
    
-   p: There's a bunch of booths around here with movement mods. Nothing as good as an SV, but I'm sure you can make do.

    They gracefully duck {rock: another|a} rock from their happy customer.
    
    p pissed 4: Dude! Festival complaint department that way!
    
    p pout_side: Later, losers.
    
    I don't see any way around it, honey. Let's go find you a movement mod. #hide plume

    -> give_report ->


-   (missing_report) (I need to deliver the report...)
    ~ temp has_report = run_command("clear @s mugann:grimoire_tome[minecraft:item_name='Report'] 0")
    ~ temp at_spot = run_command("execute if entity @s[x=179,y=80,z= -213,distance=..10]")
+   {not has_report} [I lost the report...]

    -> give_report ->

    After some scrounging, you find the misplaced report.
    -> missing_report

+   {has_report and not at_spot} [...]
    -> missing_report

+   {has_report and at_spot} [I made it...]

    ~ run_command("clear @s mugann:grimoire_tome[minecraft:item_name='Report'] 1")

    -> admin



= gargoyle_remark
    They position themself like a cat, or perhaps a gargoyle, made up of nothing but magic and rudeness.
    ->->

= give_report
    ~ run_command("summon minecraft:item ~ ~ ~ \{Item:\{id:'minecraft:stone',Count:1b\},Owner:[I;0,0,0,0],Age:5980,PickupDelay:0,Tags:['itemToModify']\}")
    ~ run_command("item replace entity @n[type=item,tag=itemToModify] contents from block 134 71 85 container.13")
    ~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[0] set from entity @s UUID[0]")
    ~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[1] set from entity @s UUID[1]")
    ~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[2] set from entity @s UUID[2]")
    ~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[3] set from entity @s UUID[3]")
    ->->




=== admin ===

The admin office looms overhead.

~ temp hasMovement = run_command("clear @s street_art:red_rollerblades 0")

{hasMovement > 0: -> has_movement | -> hasnt_movement}

=== has_movement ===

Ananas doesn't have his head(?) on right. These skates are fast as hell.

You made it with plenty of time to spare, provided the G-forces embattled with your former lunch do not sideline you.

Fortunately, they subside.
-> the_line

=== hasnt_movement ===

You've been doing a lot of running around already, what's another thirty minute sprint?

Cardio will keep you strong and healthy. Thank you for taking care of yourself, honey.
-> the_line

=== the_line ===

And then... the line.

There are too many terus to count, and your experience with them thus far indicates that it would be in your best interest not to violate social norms involving them.

They get grumpy, you understand. The line does not threaten to advance any time soon. The board will have to settle for a late report. Unless...

* [Devise a devious plan]
  A devious -> the_plan
* [Concoct a brilliant plan]
  A brilliant -> the_plan
* [Imagine an insane plan]
  An insane -> the_plan

=== the_plan ===

<> idea pops into your head. The office is on the top floor, and from here you can make out an open balcony.

You look down at your report again. Its expensive cover and lovingly written pages inspire in you a new path forward.

~ temp hasMovement2 = run_command("clear @s street_art:red_rollerblades 0")

{hasMovement2 > 0: You survey the town, mentally calculating imagined slick tricks across the rooftops. The planets align. Perfect, a direct route. Not to mention one with plenty of room to show off. | You survey town and spy an orphaned pair of rollerblades across the street. Perfect. Your rooftop route comes into view.}

-> give_report_2 ->

-   (how_its_done) Let's show 'em how it's done.

    ~ temp has_report = run_command("clear @s mugann:grimoire_tome[minecraft:item_name='Report'] 0")
    ~ temp at_spot = run_command("execute if entity @s[x=172,y=101,z= -217,distance=..10]")

+   {not at_spot} ...

    The office is at the top of this building. -> how_its_done

+   {not has_report} I lost the report...

    -> give_report_2 ->

    Wait, nevermind. It was in your Inventory, nestled next some suspicious crumbs.

    You wonder why those were there. You quickly retrieve the report before anyone notices.

    -> how_its_done

+   {has_report and at_spot}

    -> take_report ->

    -> end_office

=== take_report ===
~ run_command("clear @s mugann:grimoire_tome[minecraft:item_name='Report'] 1")
->->

=== give_report_2 ===

~ run_command("summon minecraft:item ~ ~ ~ \{Item:\{id:'minecraft:stone',Count:1b\},Owner:[I;0,0,0,0],Age:5980,PickupDelay:0,Tags:['itemToModify']\}")
~ run_command("item replace entity @n[type=item,tag=itemToModify] contents from block 177 75 -213 container.13")
~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[0] set from entity @s UUID[0]")
~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[1] set from entity @s UUID[1]")
~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[2] set from entity @s UUID[2]")
~ run_command("data modify entity @n[type=item,tag=itemToModify] Owner[3] set from entity @s UUID[3]")
->->

=== end_office ===

Out of breath, you drop to the floor, back to the wall. That asshat is getting {begin.rock: another rock|an earful} after this.

An empathetic young district employee walks over to accept the reports. You surrender them with gratitude, despite the fact that you can't even focus your eyes properly.

Once you can stand on two legs again, you may  ask the employee to play witness to Plume's delinquency. Ananas can take it from there.

~ run_command("stopsound @s")
~ run_command("playsound modfest:music.stereo.smoking_club")

p smug: Heh. Pleasure doing business with you, buddy.

*   Bastard!!!!

-   Plume holds the pages up for inspection, then pats some dust off of them ceremoniously.

    p smug: I'll put in a good word for you with the Boss.

*   Why are they talking like that?[] For some reason, you observe that Plume switches to a different but coldly familiar dialect whenever they gloat.

    This line of observation has also revealed a tell. They close their eyes for a second whenever their hubris peaks.

    In that very second, you strike.

*   Not if you get the report back first.

-   Faster than lightning, faster than even a Spirit Vector, you seize Plume by the collar like a kitten by the scruff. #hide plume

    Plume begins to yell and scratch at you, but you don't feel a thing. They quickly go limp. Not beating the kitten allegations.

-   You are faced with impatient dejection mixed with unadulterated odium. That is, they pout.

    They weigh almost nothing.

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

    Plume, becoming self conscious, blushes. Were you making a face, just now? They struggle to turn away from you. {not shake:Finally, a response.}

    -> inspection
*   ->

-   p embarrassed_blush: Fiiiine. Put me down already.

    You set them do--

    p smug: Psych! See ya, idiot!

    Plume slams face first into the door behind them, marked "OFFICE." Obnoxiously vague, but poignant. It's your delivery target.

    They shake the poor brass handle with increasing frustration, even going so far as to hang off of it and pull with their entire body.

    You fear the door's destruction, but once again, nothing happens. This is becoming a pattern with them.

    Plume collapses to the ground in exactly the same position you were in upon coming here.

*   "Need help?"[] You are rewarded with a new gesture, an unfamiliar one. Either you are not as versed in rude culture as you thought, or this is a local dialect.
*   "It's locked[?"] in the middle of the day?" Unlikely, especially as a student or two from other clubs were leaving on your way in.

-
*   You try the doorknob[]. It yields without complaint.

-   p pout_side: ...

    p: Just take it. You can tell Ananas whatever.

    Plume shoves the paper into your arms, and is gone before your next breath.

    For someone so small and curt, Plume might be the most mysterious of your new, strange crew.

    You doubt they'll give up their secrets so willingly, but everything you've seen so far enkindles a sharp feeling of curiosity.

    A mystery is at hand.
-> END
