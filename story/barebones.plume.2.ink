#require act modfest:barebones_2
#require act modfest:barebones_shrimple_1
#alias actor b barebones
#alias actor p plume


// **ACT 2**: Barebones is selling Lemonade, and Plume is helping. The stand is unlicensed. A teacher comes by and asks Barebones where the license is. Barebones again runs interference while plume runs off to steal another stall's license. The teacher reveals they know whats going on and just wanted to barebones alone. They're being a bad influence on plume. "its the kids fault..." you might be able to do some damage to his ego. Reveals this messed up Plume's grades.

    b neutral 3: 'at'll be 15 smackaroons, my friend.
    
    The visitor in front of him, a small wyvern in a shocking shade of purple, snorts with exasperation but hands over the amount.
    
    Purple is the most venomous color. Barebones is playing a dangerous game.
    
    b aura: Thank ya kindly! Come again fair stranger! <gray>sucker.</gray>
    
    You don't fully have a handle on the value of the local currency, but a lemonade at a school festival couldn't possibly warrant 15 of it.
    
    That, or the lady at the train station exchange desk pulled a fast one.
    
    Barebones drops the cash in a small bundle, then does some accounting on a ledger. He is so engrossed in his favorite activity that he has not yet recognized you.
    
*   "One lemonade, please["]."

    b frown: Comin' right up.
    
    He hollers over his shoulder.
    
    b neutral 2: HEYA KID! WE GOT A LIVE ONE! EXTRA SUGAR!
    
    b neutral 3: ...for our dear guest, sorry, I didn't catch the name--

*   "What's [this?"] the latest scam?" You don't pull your punches, do you?
-
	~run_command("stopsound @s")

    b googly: ...

    ~run_command("playsound modfest:music.stereo.pollen_bazooka music @s ~ ~ ~ 0.5 0.7")
    
    b sweating: What a coincidence, pal! We was just lookin' for yous.
    
    b frown_sweating: Right, kid?
    
    Plume looks at you with displeasure and grunts, then returns to their task. The task involves stirring a big bucket of what you hope is not lemonade with their entire arm.
-   (questions)
*   Does [Barebones have a license?]he  have a license?

    b: 'course I do, yous think I'm a numbskull?

    ...

    Long pause.
    
    Barebones makes a rattling sound that is probably intended to be a chuckle. 
    
    b frown: It's right here in my--
    
    He makes an exaggerated pantomime of checking all of his pockets. To nobody's surprise, he can't find it.
    
    b frown_blushing_sweating: Egads! I musta left it in my other pants.
    
    b sweating: Unfortunately, said pants are waiting all the ways across campus. Mind helping a brother out?
    
    You know what that means.
    
    * *     [Fetch quest!]He's obviously lying, honey. We are not doing shit for him.
    - - 
    b frown: Hey, who yous lookin around for? I'm right here!
    
    * *     [Is this necessary?]Do we really need to be going through this whole song and dance with him again?
    - - 
    b frown_blush: Ah, rats, yous caught me.
    
    b: Say, haven't we known each other hot a minute?
    
    A <i>least</> one minute, sure.
    
    b frown_blushing_sweating: Could I beg yous to turn the blind eye? Get on my poor little raggedy hands and knees?
    
    b frown_blush: I'm doing it for the kid, yous know. We can barely feed 'em with our profit margins.
    
    b: Look how scrawny they are! Theys starving!

    ~ run_command("playsound minecraft:block.anvil.place")
    
    Plume fastballs a metal ladle at the back of Barebones head with enough force to dent it. The ladle, that is. Barebones doesn't seem to notice. 
    
    So, they did have something to stir with.
    
    * *     What's in it for you?[] -> overlook
    * *     (owes) You'll turn a blind eye[], for now. But he owes you one.
    
        b aura: Hey! That's what I'm sayin'! Lemme get yous a drink, on the house.
    
    * *     You'll [talk to Ananas] go have a chat with Ananas, ask for a second opinion.
    
        b aura: Yous sure about that? Maybe we could chat about this over a drink?
    
*   (overlook) You might [overlook this operation] be too distracted to discuss the finer details of his undoubtedly extant, provided you so happened to come across some "smackaroons" laying on the ground.

    b aura: Yous and I both, pal. That stuff don't grow on trees! Heh heh.
    
    b sweating: Say, what yous looking at me like that for?
    
    * *     You were asking for a bribe[]. It's a miracle that he hasn't ended up in a maximum security prison with that skull of his.
    - - 
    Then again, maybe he has, and he just busted straight through the wall with it?

    b frown: I don't appreciate yous fantasizing about putting my poor ol' cranium through the wall, pal.
    
    Was it that obvious?
    
    b aura: No worries, I always let bygones be whatever they're supposed to be. Speaking of, how about a drink? On the house.
    
-   (beverage) He slips you the ominously yellow beverage with conspiratorial elegance.
    
    You reach to pick it up, but he coughs loudly.
    
    b frown: There's, er, something under that, I think? Can't believe the kid didn't wash it thoroughly. I'll give 'em an earful.
    
    Beneath the cup is {overlook:your|an} illicit smackaroon. Or is this one of his "dabloons?"
    
    b frown 2: HEYA KID! HOW ABOUT YOUS WASH THE CUPS BETTER?
    
    p pissed 0: WASH 'EM YOURSELF, DIPSHIT!
    
    b neutral 4: 'Atta way. Takes after their old man, y'see.
    
    chai smirk_smile 2: Hello Barebones. Where is your license?
    
    ~ run_command("playsound minecraft:entity.skeleton.hurt")

    b blushing_sweating: Missus Professor Chailotl! What a coincidence! We was just lookin' for yous.

    c angry: "Professor" will do, Mr. Barebones. Let's not get ahead of ourselves.
    
    He makes eye contact with you, to the extent that he can. He also sweats nervously, to the extent that he can.
    
    b: You knows what? We was just discussing that, <PLAYER_NAME> and I. The kid's gonna go fetch it from home base. One sec.
    
    b : HEY KID! GO STEA-- I MEAN FIND OUR LICENSE!
    
    p: A real one, or a--
    
    Barebones rushes over to put a hand over their mouth. They stop speaking, more out of surprise than actually being able to be silenced by the bony fingers.
    
    b frown_sweating 1: Bup bup bup. Ixnay on the Ealingstay. Wink.
    
    p pout_side: You can't just say wink.
    
    b frown: Okay but yous get the point now get outta here.
    
    p pout_side: On it, boss.
    
    If anyone else had treated Plume like that, they'd be a splatter in the ground in a color of their choosing. Barebones must have leverage. #hide plume

    b neutral 4: They won't be a minute, Prof. C. May I interested yous in some beverages?
    
    ~ run_command("stopsound @s music")

    chai focus: Thanks for sending Plume off, Barebones. I was just about to do it myself.
    
    b: I-- Wha? Yous wanna leave me out on a limb like that?
    
    b: Throw me a bone, Prof. C.
    
    chai focus: < PLAYER_NAME >, did he rope you into this?
    
*   {overlook} [No (lying)]"No." (lying)

    chai focus_frown: Uh huh, and what is that in your hand there?
    
    * *     Aurora Borealis?
    - - 
    chai smirk: Do you have any idea how many times I've heard that one today?
    -> today

*   {overlook} [Yes]"Yes."
*   {not overlook} [No]"No."
*   (lying) {not overlook} [Yes (lying)]"Yes." (lying)
-
    chai angry: I honestly don't know how I expected you to answer. {overlook or lying: Let's have a chat about this later.}
    
    {overlook: It's so over. It's so over.}
    {lying: Why would you even lie about that?}
-   (today)

	~run_command("playsound modfest:music.stereo.heliograce music")

    chai focus_frown: Look, Barebones, you need to stop.
    
    b frown: Stop what?
    
    chai focus_frown: Dragging Plume around in your little schemes!
    
    b frown_blushing_sweating: I ain't doing nothing.
    
*   They're always hanging out[], though.

    b frown: We gots no affiliation, we just happen to be on the committee at the same time in the same place.

    b aura: ...Making similar amounts of money at the same time. Also being in detention at the same time.
    
    b blushing: It's not impossible! You know, like that slogan here? "Anything can hadpen?"
    
    chai smirk: Barebones, <i>you</i> made that up to sell tickets to Makeout Peak.
    
    chai focus_frown: It's a national park! Everyone can go there for free at any time!
    
    ~ run_command("playsound minecraft:entity.skeleton.hurt")

    b frown_blushing_sweating 5: Now how was I supposed to know that?
    
*   He's stalling[].

    b neutral 5: Uh, <i>yeah</i> I'm stalling. Yous see this thing?
    
    b: Me and the kid spent weeks throwing it together?
    
    b frown: Yous think we'd not go outta our ways and get our magnum opus licensed?

    ~ run_command("playsound archery_gimmicks:entity.ancient_arrow.impact_reverberation ambient @s ~ ~ ~ 1 0.5")
    
    Halfway through the last word, the entire lemonade sign above him comes crashing down, spilling everything on the table. 
    
    **   You leap into Professor Chai's waiting arms[].
    
        chai frown: Oh! <PLAYER_NAME>? You're a little... Actually not that heavy. Are you eating enough?
        
        She sets you down gingerly. Depending on your physiology, you may have just induced massive implications about this creature's muscular density.
    
    **  You have some self respect[] and dignity and allow the beverage to pass over you like a wave.

        It doesn't taste that bad, really. It is, however, more sticky than anything that can be ethically called lemonade.
-   
    
    

// A teacher comes by and asks Barebones where the license is. 

// Barebones again runs interference while plume runs off to steal another stall's license. 

// The teacher reveals they know whats going on and just wanted to barebones alone. They're being a bad influence on plume. 
    chai focus_frown: Plume has been following you around like a lost duckling.
    
    b aura 4: I can't help that I'm the motherly type.
    
    chai angry: Can you be serious for a minute?
    
    chai angry: Do you even know what their grades were before they joined your little gang?
    
    b: ...
    
    b frown: 'ts the kid's fault if their grades suck.
    
*   You saw them in detention[], when the headmaster sat them in there for half an hour after they tried to steal one of her tomes.

When the petals cleared and their eyes refocused, the two were already huddled together, scheming their next scheme.
-
    Plume's bag, stuffed to the brim with overdue homework, sat forgotten in the other corner of the room.
    
    b frown_blush: Look, I... I ain't their pop. They can do what they want.
    
    chai focus_frown 3: That's the problem, Barebones, they <i>are</i> doing what they want. They want to self sabotage because they see you self sabotage.
    
    chai frown: Are you saying you're okay with that?
    
    b: Why wouldn't I?
    
    chai frown: Do you realize that they're here because they can't be anyplace else? That they've been kicked out of every school they've been to?
    
    chai angry: I know you get your buddies to do your homework for you, but Plume's too prideful for that.
    
    chai focus_frown: Plume's here because this is a place they could finally fit in. But if they fail out? Where do you think they can go?
    
    chai smirk: Can you think of any other school that takes people like us?
    
    b blushing: ...
    
    Realizing how worked up she is, the Professor draws a deep breath and lets it out slowly.
    
    chai neutral 2: Please think about it, Barebones. The term is ending in two months. You could be the one who saves them.
    
    She walks away without another word, leaving you and Barebones deep in your thoughts. #hide chai
    
    b neutral 2: It really ain't that deep. Why don't she see that, <PLAYER_NAME>?
    
*   She's right[], Plume is sabotaging themself. 

    You can't think of anyone else on campus who better meets the title of "master of sabotage"
    
    b frown: Yous always have a way with words, dontcha?
    
    b frown: ...

*   Barebones is right[].

    b: Exactly. Yous get it.
-
    b: Ima go find the kid. Usually they don't take that long to ste-- I mean find-- what the hell, sure, steal. Stuff for me.
    
    b aura: If yous see Prof. C, put in a good word for me, yeah?
    
*   You won't[].
    --  (wont)
    b: Eh, fair's fair. Won't blame yous. {owes: I still owes you that favor, too.}

*   You will[].

    b: You mean it?
    
    **  Yes[], for some reason. You have the heart of an angel, or the conscience of a sack of bricks.
    
    In some cultures, those can be the same thing.
    
    **  No[]. -> wont
-
    Will anything get through that dense skull?
    
    It's not your job to find out, of course. It's their business. #hide barebones
    
    ...but you'll also be seeing them for a long time coming, if all goes well.
    
    If Plume fails out or Barebones gets into some deep trouble, that will make things weird in the committee, to say the least.
    
    And that's just pragmatically; You're not a crazed monster. Hopefully, you care at least a little about getting the good ending. But I can't decide that for you. 
    
    How do you feel, honey?


-> END
