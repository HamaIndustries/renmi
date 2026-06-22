#require act modfest:lulu_plume_4
#alias actor a ananas
#alias actor b barebones
#alias actor p plume
#alias actor l lulu
#alias actor y lily
#alias actor u ugg
#alias actor s shrimple
#alias actor x proxy

// counts as both ugg and barebones act 4
/*
The goal here is to highlight Ugg's progress in building confidence. Ugg's biggest problem was his insecurity. Even confronted with the things he's done for others, it can be hard for him to accept.

    You are helping Ugg out with counting out the ballots. commentary on voting. ugg is just really happy you're around. he's confident, and not just bc of the glasses.
*/
    
    b neutral 1: C'mon, big guy! Throw me a bone!
    
    ~ run_command("tag @s remove bb_flirt_flag")
    ~ run_command("stopsound @s music")
    b frown: Yous gonna take all week if it's just the two of yous runnin' the numbers. 
    
    ~ run_command("playsound modfest:music.stereo.trotting_fox music @s ~ ~ ~ 1 0.7")

    u worried 3: Er... Ugg not sure that good idea.
    
    u: Ananas say Barebones not allowed even look at ballots.
    
    b: Yous wounding me, pal! Right here on my soft little heart, yous see those scratches?
    
    b aura:  Whatever happened to blood brotherhood? What happened to death and not parting at least a month?
    
    b frown_blush 2: I made us friendship bracelets, for crying out loud!
    
    More like a friendship belt, if Barebones is referring to the fashion statement barely clinging to life around Ugg's guns.
    
    ...they're surprisingly well-made, especially by Barebones' standards. Maybe he really does care?
    
    Ugg raises his hand to give his noggin a thinking scratch, but the friendship belt snaps and goes flying clear out of sight.
    
    Nevermind.
    
    u worried: Ugg sorry.
    
    He winces, slowly turning back to Barebones.
    
    b neutral 1: Not one fret, cute stuff. 
    
    b aura: Save those sweet little tears for all the joy yous gonna feel when you see me win in a landslide. Speaking of.
    
    He looks around Ugg to the boxes of uncounted ballots. Greedily so.
    
    b: Yous looking on pointers as to how to make it up to poor Barebones? 
    
    b: I gots a few if yous a taste for the purely unbiased variety.
    
*   You have a few of your own[]. For example, Barebones would love for Lulu to show him the special surprise that Ugg put together for her.

    b frown_sweating: Can't fool me twice, pal. 
    
    b sweating: I can see her clear over the river from here.
    
    b sweating: The big girl ain't going nowhere til the ceremony's good to go and folks stop running around willy-nilly like.
    
    Ugg <>

*   [Ugg can handle it] Ugg is a model caveman. He knows his way around a bone.

    He <>
-
    checks his phone.
    
    u smile: Good news for <PLAYER_NAME>! Lulu other body come soon.
    
    b frown_blushing_sweating: Other what.
    
    b blushing_sweating: Come again, my tremendous friend?
    
    u grin: Ugg say too much. Lulu surprise Barebones with other body!
    
    b sweating: Whyyyyyyy don't we save it for after the ceremony!
    
    b aura: It's my mind, y'see. So clouded, brows furrowed, et cetera. 
    
    He is clearly lying, and not just because you could visually confirm if his mind were to endure any kind of physical state.
    
    b sweating: Wouldn't wanna spoil whatever the <gray>sam hell that nightmare</>--
    
    b: I mean, whatever wonderful surprise that sweet little girl has in store for me!
    
    b frown: In fact, I just remembered a surprise of my own I gotta go grab! 
    
    b aura: Tell the poor girl I'm heartbroken I missed her. Destroyed. Hydraulic pressed, even.
    
    b: Toodles. #hide barebones
    
    Barebones makes a show of scurrying away.
    
    u: ...
    
    u worried: What that?
    
    u worried_glasses: <PLAYER_NAME>, why Barebones hide behind bush obviously?
    
*   [He's passive aggressive] If the world were a chip then Barebones' shoulder could bear it.

    Even if he can't execute his articulate and well-laid vote rigging plans, Barebones can at least settle for acting like a petulant child.
    
    u neutral_glasses: Barebones be sad if he hear you say that.
    
    Oh, he heard. You made sure of it.
    
    In fact, I'm quite certain your words hit their mark. You can hear the sound of bleached bones blushing from here.

*   [Ugg's glasses] If there's money in knowing, Barebones will know. 

    The profit motive dictates that Barebones paid close attention when he learned of Ugg's visual impairment.
    
    <i>Former</> visual impairment. Ugg is quite farsighted now, thanks you you. Unfortunately for Barebones, he was not party for that quest line. 
    
    Also unfortunately, you recall Barebones wearing glasses of his own back he was "counting" ballots at your first meeting.
    
    This is to say that Barebones is completely oblivious that he is under observation by his supposed prey.
    
    Rest assured, the ballots are in very safe hands.
-
    We can safely ignore Barebones, for now.
    
    u neutral_glasses: He problem for later us.
    
*   "Would you like me to [handle him?"] take a crack at him?"

    u worried_glasses: Barebones not cause <i>that</> much trouble...

    That sounded less violent in your head.

*   ["What about when he comes back?"]u: Ugg have one on one with Barebones.
-
    u neutral_glasses: Ananas always say Barebones mean well.
    
    u smile_glasses: Ugg remind Barebones later try harder at mean well.

    So decisive. For that matter, the way he pushed back against Barebones earlier was not what you would have expected from the Ugg of this morning.
    
    u worried_blush_glasses: <PLAYER_NAME> think so?
    
*   You do[]. You absolutely do. 

*   Time will tell[]. The glasses help a lot. I believe the technical term is "looks maximization?"

    But the glasses aren't the thing that clues you in.
-
    ~ run_command("stopsound @s music")
    You may have helped Ugg change Lulu's life today, but it was Ugg who changed that life.
    
    u grin_blush_glasses: Was hologram really big deal?
    
    ~ temp plulume_flag = 1// act_completed("modfest:lulu_plume_5")
    
    {plulume_flag: -> plulume | not_plulume}
    
=   plulume
    Did he not hear? Lulu and Plume are dating now.
    
    u neutral_glasses: Oh.
    
    ~ run_command("playsound modfest:music.momentum music @s ~ ~ ~ 1 1")
    
    u worried_glasses: OH!
    
    u smile_blush_glasses: Ugg not hear about that!
    
    u grin_glasses: ...
    
    u neutral_glasses: Lulu deserve better.
    
    Ouch. Benefit of the doubt be damned.
    -> then
    
=   not_plulume
    
    She would absolutely say so.
    
    After the talk about dreams, you and lulu spent far too much time in that field goofing off playing patty-cake and hopscotch.
    
    Childish... but imagine never having the chance to have been a child.
    
    Many people endure such a fate, even some flesh-and-blood girls almost as normal as Lulu.
    
    The world owes Lulu a childhood.
    
    -> then

=   then

    u neutral_glasses: ...
    
    Ugg looks off into the distance. The sun hangs heavy over the horizon, and Lulu sits heavy under it. Tomorrow will be here, any day now.
    
    u neutral_glasses: Ugg only want Lulu happy.
    
*   Of course he'd say that[]. It would be a huge deal if anyone else had changed a normal girl's life.
-
    To Ugg, this is just another school day.
    
    ... #hide ugg
    
    In this moment of clarity, watching the sun set on an old age in anticipation of the new, Ugg sits proudly.
    
    Literally, even. For the first time today, his shoulders are not slouched at all. 
    
    He sits up straight. Brows furrowed, but in focus rather than consternation. He is prepared for his personal Neolithic.
    
    u worried_glasses: <PLAYER_NAME>...
    
    The illusion shatters.
    
    Calling it an illusion is uncharitable. Ugg is a man of the earth.  He deserves to be confident, but for the sake of civilization he must also be realistic. 
    
    u smile_blush_glasses: Ugg happy Ugg work with <PLAYER_NAME> now.
    
    u smile_glasses: Ugg not wait to run next festival with <PLAYER_NAME>!
    
    It's hard to imagine running <i>any</> fest without Ugg.
    
    u grin_glasses 4: Also, Ugg mean ask. Will <PLAYER_NAME> go  BlanketCon next year?
    
    u grin_glasses: Committee always make it big trip. We learn lot from the fires.
    
    Before you can ask whether he takes interest in fires as an event organizer or as a caveman, you both freeze.
    
    ~ run_command("stopsound @s music")

    The air carries the glimmering chimes that signal impending theft. You look for Barebones, but he is nowhere to be seen.
    
*   You [go for the ballots] wrap around the ballot boxes, and Ugg wraps around you. 

    Voter security is a life or death matter. 
    
    It is so life or death, for that matter, that you barely pay any heed to the waves of warmth radiated towards you from all directions.
    
    An efficient heart that beats once every few seconds.
    
    Ugg is not under attack by Plume. Plume is about to be under attack by Ugg.

*   (rock) You grab a [rock] stone of suitable heft to knock over a valley spirit and keep it pinned. 

    Yes, that pebble there. That will be sufficient.
-
    p pout_side 0: Hey so Anan--
    
    p: Uh, what are you guys doing?
    
*   What is Plume doing?[] You sweep for Barebones again. Nothing. What is their game this time?

*   You [grip the box tighter.] clutch tight to your chosen box. 

    Not as tight as you could--you clutch just as tightly to your inventory for insurance--but tight enough.
-
    p pissed: What? You thought I was going to do something weird with the ballots?
    
    p: What the hell gave you that idea?
    
    Indeed, what might have tipped you off? Barebones is nowhere in sight.
    
    u neutral_glasses: Plume not fool Ugg. Ugg know Plume game.
    
*   No, they've changed[]. They are now a kind and sweet committee member who is only here to help!

    p embarrassed_blush: Don't say that it sounds stupid.
    
    They kick a rock and blush.
    
    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music @s ~ ~ ~ 0.3")
    
    y content 2: \[^_^\] Uwah! I was just thinking the same thing!
    
    y smile: \[ovo\] ...
    
    y misery: \[;_;\] Does that mean you think I am stupid...?
    
    p embarrassed_blush: No! I'm sorry I was joking I'm sorry--

*   Ugg's right[]. It hasn't even been an hour since Plume's "reformation," if we can call it that.

    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music @s ~ ~ ~ 0.3")

    y content 2: \[^_^\] How about "reformatting?"
    
    p smug: I'm gonna reformat your face.
    
    y hide_the_pain: \[;_;\]
    
    p embarrassed_blush: ...I'm sorry. That was mean.
-
    y smile: \[ovo\] Hehe. I got your ass.
    
    p pissed: HEY

    Lulu pokes her head over the wings of her newly aquired themfriend.
    
    The poor little robot that hosts her hologram equipment couldn't possibly keep up with the velocity of a modern relationship.
    
    Ugg, in his wisdom, fashioned a suspiciously Plume-sized sling for <i>someone</> to carry it around with ease. 
    
    He even inlaid it with small golden buttons, for purely decorative reasons of course. Its creation preceded that of the cube itself.
    
    How could he have known it would come in handy? Predicting such a thing would take no small amount of genius--or, perhaps, a miracle.
    
    The "genius" theory has merit. The LuCube's versatility is unparalleled. Holo-Lulu's virtual skates elegantly complement Plume's.
    
    She uses them to great effect, too, effortlessly teasing Plume while they chase her around to deliver a virtual noogie. #hide plume #hide lulu #hide lily
    
    Ugg is doubled over in laughter, setting down the table's worth of boxes to prepare to go save Lulu from her tormentor.
    
    It's a pleasant scene. You are pleased. #hide ugg

    b neutral 0: All's well that ends well, eh pal?
    
    He leans casually against several boxes on the desk.
    
*   (jump) [You jump him] His ass is grass. He knew the risks.

    b frown_sweating: Yikes! Hey pal what's the big idea!
    
    b frown: Yous got the wrong guy! I's was framed, I tells yous!
    
    You are eye to eye socket with him. You aren't even clutching his collar that hard, he's only frozen in fear.

*   You stare at him[]. He has five seconds to step away from the boxes.
-
    
*     You wink playfully[].
    
*     You wink flirtatiously[]. You've had your eye on this charmer for a while. 
    
        ~ run_command("tag @s add bb_flirt_flag")

        Has he not realized it yet?
        
        The only vote for him that matters should be yours.
        
        b blushing: I, uh... Look, I'm charmed. 
        
        b blushing_sweating: And I ain't sayin' no!
        
        b blushing: This is just so sudden... 
        
        Besides, the counting is complete.
    
*     You wink ominously[]. 
    
- <> You've already transmitted the results of the voting to the Headmaster.
    
    As we speak, she is likely going through the voting data for anomalies.
    
    He has absolutely nothing to worry about, in terms of voting security. If someone is cheating, she'll find them.
    
    // skeleton sfx
    b sweating: ...
    
    He recoils in horror.

    {jump: Satisfied, you release him, and|At last,} he steps away gingerly. 
    
    b: Happy ta see the books are in good hands.
    
    p pissed 5: Get back here you freaking nerd! 
    
    y content 3: \[^o^\] Eek! Help me <PLAYER_NAME>! There is a scary creature after me!
    
    u worried_glasses 4: Ugg protect from Plume! Get behind Ugg!
    
    p pout: Back off! One nerd at a time!
    
    They'll be fine.
    
    // skeleton sounds
    Barebones sighs. #hide plume #hide lily #hide ugg
    
    b neutral 3: Happy ta see the kid--Plume's in good hands, too.
    
    b: They's even got 'emselves a pretty new goilfriend?
    
    b frown: Talks funny, though. Wonder what's her name? 
    
    b aura: I oughta introduce myself later. Give 'er my maternal blessing.
    
    b frown: ...
    
    b: Yous done good today, pal.
    
    b frown_sweating: Yous remind me of another chum a'mine. Ain't been the same since that job on the train last fall.
    
    You look at him.
    
    b frown_blushing_sweating: We ain't steal nothin'! <i>successfully...</>
    
    b aura: I'll see yous at the closin' party. Get the crew a lil treat for me, would yous?
    
    ~ run_command("playsound minecraft:block.amethyst_block.break ambient @s ~ ~ ~ 1 2")
    He flips you another "dabloon." #hide barebones
    
    ...it carries some real heft.  
    
*   [You bean Plume with it] If you can dodge a girl, you can dodge a coin.

    ~ run_command("playsound minecraft:block.amethyst_block.break ambient @s ~ ~ ~ 1 2")

    p: OW
    
*   [You toss it to Plume] Girlfriends don't come cheap.

    ~ run_command("playsound minecraft:block.amethyst_block.break ambient @s ~ ~ ~ 1 2")

    p: OW

    Perhaps you should have warned them first. <>
-
    Yes, that is real gold.
    
    You turn to thank Barebones, but he's gone. 
    
    u neutral_glasses 2: Did <PLAYER_NAME> talk to someone?
    
    It's hard to say. Probably not.
    
    It must have been the wind.

// tells them: tf? you telling everyone???
    
// different behavior based on if plume and lulu have gotten their act 5 yet?

// the moment you say he has good posture he slumps. but it looks more comfortable than you'd thought.

// the... infirmary won an award? the infirmary won the "funniest" award? a diease??

// bb: nope. no hand in it. (lead up from other obvious jokes)

// bb was trying to take advantage of ugg's blindness, but ugg comedically whips out his spectacles.


// what's the prize, anyway?
// a sticker.
// [^_^] I hope we win!


// (requires Barebones + Plume ACT 4) Ugg's confident, finally. He's not used to the feeling. 

// Plume skates by and Ugg asks for advice on how to handle it. Plume's caught off guard, like is this a joke or what? 

// So Plume awkwardly but honestly gives advice on this kind of stuff. 

// In some dialogues they even admit that they never actually feel the way they act, but behaving confident helps trick themself into believing it.

// plume also apologizes for earlier. still can't understand ugg though.

    -> END
