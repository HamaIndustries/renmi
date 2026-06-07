#require act modfest:lulu_2
#require act modfest:plume_2
#require act modfest:barebones_plume_1
#alias actor d delta
#alias actor l lulu
#alias actor p plume


// **ACT 2**: (requires Lulu ACT 2 and Plume ACT 2. By this point, Plume has been mean to Lulu several times.) Plume and Lulu are helping out in Delta's garden. Plume struggles to lift a heavy bag of fertilizer and Lulu offers to help, but Plume yells no, gets angry and kicks Lulu's hull. They realize what they've done and go scared and dead silent. Lulu's lights are off. "Plume..." Plume is terrified, but surprisingly apologizes. "[ovo] Ok! You've convinced me, I think you got this!" The player is tasked with finding some gold tool that plume can use to get a better grip on the fertilizer. Plume completes the task and grumbles "...thanks."

#alias actor p plume
#alias actor l lulu

    d zoomies 3: Catch!

    ~ run_command("stopsound @s music")
    ~ run_command("playsound modfest:music.stereo.trotting_fox music")

    ???

*   You [catch] attempt to catch

*   (fetch) You [fetch] attempt to catch 

*   (pcatch) You step aside[] to allow Plume the honor of catching
-   
    <> the fertilizer bag as large as you are{fetch: in your mouth}. It goes as you might expect.

	~ run_command("playsound minecraft:entity.slime.attack ambient @s ~ ~ ~ 1 0.5")
    
    {pcatch: -> plume_catch | -> you_catch}
    
=   you_catch

    Professor Delta shrugs. What a silly.
    
    d frown_sweat: Hehe, oops.
    
    If he was even a little less silly, though, you'd have some uncomfortable thoughts about those big sharp fox teeth of his.
    
    Plume plants their shovel in the ground and leans on it smugly. You didn't expect sympathy, but they're laying it on thick today.
    
    p pout 1: Nice reflexes, hummingbird.
    
    It wasn't <i>that</i> bad.
    
    d confident: Sorry, my hands are full. Plume, can you help?
    
    p pout_side: And ruin an opportunity for < PLAYER_NAME > to build some muscle?
    
    p pissed: You call yourself a professor?
    
    d shocked_sweat: Huh. I guess you're right?
    
    d: Come on, < PLAYER_NAME >! We believe in you!
    
    p pout: Come on, < PLAYER_NAME >. Don't you hear they believe in you?
    
*   You can do it[]! Just put some oomf into it!

    Muscles flicker to life. Synapses fire, spark out, then refire. Lightning impulses from mind to heart to flesh.

    With no small effort, you narrowly escape with your life. You looked good doing so, as always.
    
    l neutral 5: \[^o^\] Good job, <PLAYER_NAME>! I also believed in you!
    
    You weren't even aware she was watching, but it never hurts to impress new friends.

*   You aren't gonna make it[] out of this one, it seems.

    You had a good run. SASH was a weird school, but it helped you take your mind off of your previous circumstances.
    
    You hope you'll have a shot at making friends with such wacky characters again, in the next life.
    
    Your world fades to black.
    
    l neutral 5: \[O_O\] Uwah, <PLAYER_NAME>! What happened?
    
    l neutral 5: \[>_<\] Allow me to unburden you.

    Lulu gently nudges the ponderous fertilizer bag over like a hacky sack. 
    
    Her immense leg brushes within an inch of you. If she twitches even slightly, you will be reduced to a thin paste.
    
    You are not reduced to a thin paste, thankfully. Lulu's perfected motion impresses as always. 
    
    It does call into question why Barebones in particular is an exception. He doesn't have a blood or heartbeat, but you can hear his clackety clack from across the room.
-
    She steps back from the greenhouse entrance and settles on her haunches.

    l neutral 5: \[^_^\] I hope I have not come too late! You and Professor Delta look exhausted.

    Noticeably, she says nothing about Plume.
    
    d confident_smile: You're just in time, Lulu! Let me just move this out of the way before anyone else gets hurt.
    
    Professor Delta heaves the fertilizer over his shoulder. He overshoots slightly.

    ~ run_command("playsound minecraft:entity.slime.attack ambient @s ~ ~ ~ 1 0.5")

    The bag flips over him and splats Plume like a bug.

    -> plume_catch

= plume_catch
    
    p pissed: You freakn' moss eating
    
    A bit of fertilizer gets into their mouth.
    
    p: fsofdn bark chewing daffodil muncher! Get this offa me!
    
    {not you_catch: -> lulu_arrives -> }
    
	~ run_command("playsound renmi_springfest:lulu.step ambient")

    l neutral 5: \[o_o\] I could--
    
    p pout_side: Not you.
    
    d smirk_smile_sweat: Maybe I--
    
    p pissed: Absolutely not you either. <i>Especially</i> not you.
    
    That's what it sounds like they're saying, anyway. You can't tell for sure.
    
    Plume's head is directly under the bag, and their limbs barely stick out. It's like looking at an isopod from above. An earth dweller.
    
*   You'll help, if they insist.
*   You'll wait for them to ask nicely.
-
    p pout: ...
    
    p embarrassed_blush: I'm not asking for help.

-   (help) {!|||->helpful->}
+   [You wait.]

    p pout_side: ...
    {help > 3: -> greenhouse | -> help}
    -> help
    
    

= greenhouse

    d adrenaline_sweat: Plume?
    
    Dead silence.
    
    l neutral 5: \[o_o\] I am sensing reduced energy consumption. This is bad.

    l neutral 5: \[-n-\] It was my wish to avoid this outcome. My apologies, Plume.
    
    Reluctantly, she tips the bag off the poor bird, then sits back on her haunches pensively.
    
    Lucky for her, Plume is knocked out cold. Still breathing, you confirm, though you cannot confirm the passage of <i>air</>.
    
    d confident: That's spirits for you. Weirdest physiology I've ever seen.
    
*   [He studies that?]Professor Delta studies physiology?
-
    d happy: Nope!
    
    You hope he's at least mentally engaged with the subject he does teach. You are afraid to ask.
    
    l neutral 5: \[^_^\] My diagnostic cores want me to reassure you that they are stable.
    
    l neutral 5: \[ovo\] Plume is small, so I expect that bag will put them out of commission for some time.
    
    l neutral 5: \[-v-\] I hope they do not mind if we complete the work without them.
    
    A sharp breath. How long were they awake? Plume gets up, slowly and without comment.
    
    p pout_side: I'll be fine. I'll put this away.
    
    They turn to the subject of their consternation. The bag subject, not the girl subject.
    
    Plume tries to lift it. As expected, nothing happens. The fertilizer's not laced with gold, obviously.
    
    Plume knows they can't lift the bag. You know, Lulu knows. Every Professor Delta probably knows.
    
    Why do this in front of everyone? What are they trying to prove?
    
    l neutral 5: \[>.>\] ...
    
*   Don't do it, Lulu[.], you think. This never goes well.
-
    l neutral 5: \[>_>\] Plume, may I...?
    
    p pissed: NO!
    
    They kick one of Lulu's legs, hard. But this time is different.

    ~ run_command("playsound minecraft:block.bell.use ambient @s ~ ~ ~ 10 0.5")
    
    Unlike the time with the eyeport, and all other incidences of Plume-object violence, this produces an extremely loud sound that reverberates for meters.
    
    Even Plume is shocked. They freeze, unsure if what just happened was real. They look to you for confirmation.
    
*   You shrug[]. Even Lulu said she couldn't resolve the composition of Armisteel. Apparently, gold is there somewhere in the recipe.

*   You nod[]. Lulu's stated weight is far heavier than even some buildings her size, according to her. At least one component of Armisteel has been thus revealed.
-
    While you are all left reeling, Lulu is silent. Her lights are off. This went horribly before. 
    
    l lulu_off 5: \[ \]

    l lulu_off 5: \[ \] Plume...
    
    p: Shouldn't have done that.
    
    Plume's predictable response falls on-- Sorry, what? 
    
    They apologized?
    
    Plume turns their face away from all of you.
    
    p pout_side: Stupid. Bird brained.

    It's not quite an apology, but its more humility than you thought you'd ever see out of them.
    
    Professor Delta shifts nervously, missing the characteristic :o3 he bears carries in the darkest of times.
    
    Ever so slightly, Plume is trembling. Are they scared? Sad?
    
    l lulu_off 5: \[...\]

	~ run_command("stopsound @s music")
    ~ run_command("playsound renmi_springfest:lulu.boot")
    
    l neutral 5: \[^o^\] Okay!
    
    p pissed: Wh--
    
    p embarrassed: What?

    ~ run_command("playsound modfest:music.stereo.momentum music @s ~ ~ ~ 1 2")
    
    l neutral 5: \[ovo\] You have convinced me! I think you have this in the bag!
    
    d smirk_smile_sweat: :o3
    
    Nature is healing.
    
    l neutral 5: \[>v>\] Uwah, sorry. I could not resist that joke.
    
    p embarrassed_blush: I, um. Okay.
    
    p pout_side: I left my gloves at my dorm, though. I need to go back and get them.
    
    l neutral 5: \[^_^\] No need. Inventory analysis suggests several suitable tools are in stock.
    
    d zoomies: You know what that means, <PLAYER_NAME>! Fetch quest!
        
*   [Why you specifically?] image black 1: Let's not look this gift horse in the mouth. #hide plume #hide lulu #hide delta
-
	...

	Sure is weird how after that first fetch quest with Plume, all the others went by in a flash.

	In retrospect they wouldn't have been in the time budget anyway, so you aren't complaining.
    
    p pout_blush: ...Thanks. #hide image
    
    That's all, but it's plenty. No insults or anything.
    
    Lulu, on her part, remains as charming and opaque as ever for the reset of the scene. 
    
    She cheerfully performs her duties until the greenhouse is fully stocked, then excuses herself without fanfare.
    
*   You check up on Plume[], who is occupied with lacing their skates back up. They make eye contact with you, then return to their task wordlessly.

*   You check up on Professor Delta[], who is occupying himself with a frisbee he procured from who knows where.

    You play fetch for a few minutes, then decide to leave before he can rope you into anything else.
-
    Something stirs in you. Something might have changed. What, exactly, is anyone's guess.
    
    This probably won't be resolved by the end of the festival.
    
    The committee's been around for a while, it's not like one day can change everything....
    
*   But you're here now[], and that changes things.
    
*   You're not [that special] any more special than any one of the colorful cast of the committee.
    
    Oh? <>
-
    You think so, honey?
    
    Only time will tell.


    -> END

= helpful
    d confident: I have a handtruck, I could--
    
    p pissed: Shut.
    
    d adrenaline_sweat: ...
    
    d neutral_sweat: :o3
->->

= lulu_arrives
    Lulu lumbers from around the greenhouse, oblivous to the unfolding catastrophe. 
    
    l neutral 5: \[^_^\] Hello! Here is the second batch of fertilizer.
    
    She emits a scary sound, as if her systems had just detected an adversary entering firing range.

    l  neutral 5: \[O_O\] Goodness! I think I have arrived in the nick of time.
->->
