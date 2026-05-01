Ready?

*   Let's dance.
-> lulu_plume_2

== lulu_plume_2 ==
// **ACT 2**: (requires Lulu ACT 2 and Plume ACT 2. By this point, Plume has been mean to Lulu several times.) Plume and Lulu are helping out in Delta's garden. Plume struggles to lift a heavy bag of fertilizer and Lulu offers to help, but Plume yells no, gets angry and kicks Lulu's hull. They realize what they've done and go scared and dead silent. Lulu's lights are off. "Plume..." Plume is terrified, but surprisingly apologizes. "[ovo] Ok! You've convinced me, I think you got this!" The player is tasked with finding some gold tool that plume can use to get a better grip on the fertilizer. Plume completes the task and grumbles "...thanks."

    d: Catch!

*   You [catch] attempt to catch

*   (fetch) You [fetch] attempt to catch 

*   (pcatch) You step aside[] to allow Plume the honor of catching
-   
    <> the fertilizer bag as large as you{fetch: in your mouth}. It goes as you might expect.
    
    {pcatch: -> plume_catch | -> you_catch}
    
    
=   you_catch

    Professor Delta shrugs. What a silly.
    
    d: Hehe, oops.
    
    If he was even a little less silly, though, you'd have some uncomfortable thoughts about those big sharp fox teeth.
    
    Plume plants their shovel in the ground and leans on it smugly. You didn't expect sympathy, but they're laying it on thick today.
    
    p: Nice reflexes, hummingbird.
    
    It wasn't <i>that</i> bad.
    
    d: Sorry, my hands are full. Plume, can you help?
    
    p: And ruin an opportunity for < PLAYER_NAME > to build some muscle?
    
    p: You call yourself a professor?
    
    d: Huh. I guess you're right?
    
    d: Come on, < PLAYER_NAME >! We believe in you!
    
    p: Come on, < PLAYER_NAME >. Don't you hear they believe in you?
    
*   You can do it[]! Just put some oomf into it!

    Muscles flicker to life. Synapses fire, spark out, then refire. Lightning impulses from mind to heart to flesh.

    With no small effort, you narrowly escape with your life. You looked good doing so, as always.
    
    l: \[^o^\] Good job, <PLAYER_NAME>! I also believed in you!
    
    You weren't even aware she was watching, but it never hurts to impress new friends.

*   You aren't gonna make it[] out of this one, it seems.

    You had a good run. SASH was a weird school, but it helped you take your mind off of your previous circumstances.
    
    You hope you'll have a shot at making friends with such characters again, in the next life.
    
    Your world fades to black.
    
    l: \[O_O\] Goodness, <PLAYER_NAME>! What happened?
    
    l: \[omo\] Allow me to unburden you.

    Lulu gently nudges the ponderous fertilizer bag over like a hacky sack. 
    
    Her immense leg brushes within an inch of you. If she twitches even slightly, you will be reduced to a thin paste.
    
    You are not reduced to a thin paste, thankfully. Lulu's perfected motion impresses as always. 
    
    It does call into question why Barebones in particular is an exception. He doesn't have a blood or heartbeat, but you can hear his clackety clack from across the room.
-
    She steps back from the greenhouse entrance and settles on her haunches.

    l: \[^_^\] I hope I have not come too late! You and Professor Delta look exhausted.

    Noticeably, she says nothing about Plume.
    
    d: You're just in time, Lulu! Let me just move this out of the way before anyone else gets hurt.
    
    He heaves the fertilizer over his shoulder. He overshoots slightly. The bag flips over him and splats Plume like a bug.
    -> plume_catch

= plume_catch
    
    p: You freakn' moss eating
    
    A bit of fertilizer gets into their mouth.
    
    p: fsofdn bark chewing daffodil muncher! Get this offa me!
    
    {not you_catch: -> lulu_arrives -> }
    
    l: \[o_o\] I could--
    
    p: Not you.
    
    d: Maybe I--
    
    p: Absolutely not you either. <i>Especially</i> not you.
    
    That's what it sounds like they're saying, anyway. You can't tell for sure.
    
    Plume's head is directly under the bag, and their limbs barely stick out. It's like looking at an isopod from above. An earth dweller.
    
*   You'll help, if they insist.
*   You'll wait for them to ask nicely.
-
    p: ...
    
    p: I'm not asking for help. 

-   (help) {!|||->helpful->}
+   [You wait.]

    p: ...
    {help > 3: -> greenhouse | -> help}
    -> help
    
    

= greenhouse

    d: Plume?
    
    Dead silence.
    
    l: \[o_o\] I am sensing reduced energy consumption. This is bad.

    l: \[-n-\] It was my wish to avoid this outcome. My apologies, Plume.
    
    Reluctantly, she tips the bag off the poor bird, then sits back on her haunches pensively.
    
    Lucky for her, Plume is knocked out cold. Still breathing, you confirm, though you cannot confirm the passage of actual air. 
    
    d: That's spirits for you. Weirdest physiology I've ever seen.
    
*   Professor Delta studies physiology?
-
    d: Nope!
    
    You hope he's at least mentally engaged with the subject he does teach. You are afraid to ask.
    
    l: \[^_^\] My diagnostic cores want me to reassure you that they are stable.
    
    l: \[ovo\] Plume is small, so I expect that bag will put them out of commission for some time.
    
    l: \[-v-\] I hope they do not mind if we complete the work without them.
    
    A sharp breath. How long were they awake? Plume gets up, slowly and without comment.
    
    p: I'll be fine. I'll put this away.
    
    They turn to the subject of their consternation. The bag subject, not the girl subject.
    
    Plume tries to lift it. As expected, nothing happens. The fertilizer's not laced with gold, obviously.
    
    Plume knows they can't lift the bag. You know, Lulu knows. Every Professor Delta probably knows.
    
    Why do this in front of everyone? What are they trying to prove?
    
    l: \[>.>\] ...
    
*   Don't do it, Lulu[.], you think. This never goes well.
-
    l: \[>_>\] Plume, may I...?
    
    p: NO! 
    
    They kick one of Lulu's legs, hard. But this time is different.
    
    Unlike the time with the eyeport, and all other incidences of Plume-object violence, this produces an extremely loud sound that reverberates for meters.
    
    Even Plume is shocked. They freeze, unsure if what just happened was real. They look to you for confirmation.
    
*   You shrug[]. Even Lulu said she couldn't resolve the composition of Armisteel. Apparently, gold is there somewhere in the recipe.

*   You nod[]. Lulu's stated weight is far heavier than even some buildings her size, according to her. At least one component of Armisteel has been thus revealed.
-
    While you are all left reeling, Lulu is silent. Her lights are off. This went horribly before. 
    
    l: \[ \]

    l: \[ \] Plume...
    
    p: Sorry.
    
    Plume's predictable response falls on-- Sorry, what? 
    
    They apologized?
    
    Plume turns their face away from all of you.
    
    p: I shouldn't have done that. Bird brained.
    
    Professor Delta shifts nervously, missing the characteristic :o3 he bears carries in the darkest of times.
    
    Ever so slightly, Plume is trembling. Are they scared? Sad?
    
    l: \[...\]
    
    l: \[^o^\] Okay!
    
    p: Wh--
    
    p: What?
    
    l: \[ovo\] You have convinced me! I think you have this in the bag!
    
    d: :o3
    
    Nature is healing.
    
    l: \[>v>\] Uwah, sorry. I could not resist that joke.
    
    p: I, um. Okay.
    
    p: I left my gloves at my dorm, though. I need to go back and get them.
    
    l: \[^_^\] No need. Inventory analysis suggests several suitable tools are in stock.
    
    d: You know what that means, <PLAYER_NAME>! Fetch quest!
        
*   [Why you specifically?] Let's not look this gift horse in the mouth. 
-
    FETCH QUEST
    
    p: ...Thanks.
    
    That's all, but it's plenty. No insults or anything.
    
    Lulu, on her part, remains as charming and opaque as ever for the reset of the scene. 
    
    She cheerfully performs her duties until the greenhouse is fully stocked, then excuses herself without fanfare.
    
*   You check up on Plume[], who is occupied with lacing their skates back up. They make eye contact with you, then return to their task wordlessly.

*   You check up on Professor Delta[], who is occupying himself with frisbee he procured from who knows where.

    You decide to leave before he can rope you into anything else.
-
    Something stirs in you. Something changed. What, exactly, is anyone's guess. 
    
    This probably won't be resolved by the end of the festival.
    
    The committee's been around for a while, it's not like one day can change everything. 
    
*   But you're here now[], that changes things.
    
*   You're not that special[].
    
    Oh? <>
-
    You think so, honey?
    
    Only time will tell.


    -> END

= helpful
    d: I have a handtruck, I could--
    
    u: Shut.
    
    d: ...
    
    d: :o3
->->

= lulu_arrives
    Lulu lumbers from around the greenhouse, oblivous to the unfolding catastrophe. 
    
    l: \[^_^\] Hello! Here is the second batch of fertilizer.
    
    She emits a scary sound, as if her systems had just detected an adversary entering firing range.

    l: \[O_O\] Goodness! I think I have arrived in the nick of time.
->->