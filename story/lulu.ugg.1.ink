#require act modfest:ugg_2
#alias actor l lulu
#alias actor u ugg

// we're combining act 1 and 2 here it turns out

// (RequiresUgg ACT 2. Ugg's ACT 1 immediately declares his issues with school) Lulu is a naturally gifted student who wants to show Ugg how much she appreciates him for helping her fit in, but she isn't sure how. The player will have the option to develop this connection by looking for ways for her to express her appreciation, eventually settling on having her tutor Ugg.

// She offers to help, but Ugg resists at first. "No, Ugg must be strong and learn thing like man." Lulu: "Ugg, look at me." He gets scared and looks at her. "Strong men listen to women." Ugg: "You make good point. You are strong woman who make good point."

    It's lunch time. You're here, despite your reservations. Where are Ugg and Lulu?
    
*   Nuclear physics waits for [no one] apparently these two. Sad, you were starting looking forward to it. Did you get that lore ready?

    Lulu's supposed to be the club secretary, and someone told you she has a ton of CPU cores. You'd think one would be spared for a calendar, or at least a pocketwatch.

*   Nuclear physics can wait for lunch[]. It's hardly fair that Lulu got hers, but asks you to wait until after the study session for yours. 

-
    What are you saying? You can't stay mad at her. Not when you saw how giddy she was when you and Ugg brought back her lunch.

    ~ run_command("stopsound @s")
    ~ run_command("playsound modfest:music.stereo.pasuka music @s ~ ~ ~ 1 0.5")
    
    She even said it tasted great, whatever that means with respect to Deuterium.
    
    ~ run_command("playsound renmi_springfest:lulu.boot")

    A familiar chime plays. You can go ask her yourself in a moment.
    
    l neutral 5: \[ovo\] Hello < PLAYER_NAME >! Have you by any chance seen Ugg?
    
    l: \[-v-\] I was here precisely 15 minutes early as always, and he has not shown up within the window of courtesy.
    
    Now you feel a little bad for being the late one.

    The Luslate she speaks through distorts her voice somewhat, but it's workable enough for an ad hoc study date.

    Under normal circumstances the slates are rude little things, always touting their glancing remarks over whatever message Lulu left behind.

    Which one of her cores inhabits this slate, you wonder. The pettiness core? No wonder she ejected it into this dusty corner of SASH. As if she could ever possess such a core in the first place.

    For now, you can sit back and enjoy the presence of a good friend, and then leave before the slate wakes up to continue with the mean names it was calling you earlier.
    
-   (waiting) {!|l: \[>w<\] Uwah, where is he? I was hoping I could get a little review in, myself...}
*   [Let's look for him] You should go look for him. He might have gone off and waddled into trouble.

    l: \[ovo\] Ugg is a big boy. I am of the opinion that he can be left unattended.
    
    * * [He dropped boulders on the train tracks.] The reports of a mysterious rockslide aren't exactly mysterious for those in the know.
    --
    l: \[\>_\>\] That was one time. He is usually quite careful. The chaos of the festival must be getting to him.
    
    l: \[u_u\] As the event organizer, he is the front line of fixing festival problems. Some of these mods cause trouble the second you look away.
    
    l: \[ovo\] Some even say their mods are cursed!
    
    l: \[¬_¬ꐦ\] I do not enjoy those mods.
    
    l: \[ouo\] Ugg should be here any moment. I am a little concerned that he would become more confused if we were gone upon his return.
    
    l: \[¬_¬ꐦ\] Or use it as an excuse to skip out on studying.
    
    At this rate, you will have a very good reason to understand nuclear physics in your near future.
    
    -> waiting
    
*   Let's wait here a bit[]. It's always nice to spend a little alone time with Lulu.

    l: \[\/\/v\/\/\] Uwah, really?
    
    Did you say that? I don't remember you saying that out loud. Weird.
    
    * *     Naturally[]. She's such a popular girl, it's a rare delight to have her full attention.
    
            l: \[ovo\] Perhaps not my <i>full</> attention. That is a good thing.
            
            l: \[-v-\] Not all of my cores like you, even though I have tried to convince them otherwise.
            
            Lulu doesn't like you completely? Devastating.
            
            l: \[0.0\] Nonono they do not <i>dislike</i> you.
            
            l: \[-v-\] One or two only think there is something off. They cannot find all the variables they would like in order to predict your actions, which is rare.
            
            * * * Isn't that invasive?[]
            - - - 
            
            ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 2")

            l: \[>w<\] That is what I am saying! Please, help me convince them.
            
            l: \[ovo\] There are no hidden variables at play that they are missing, correct?
            
            Please change the subject, honey.
    
    * *     Just kidding[].
    
            l: \[o_o\]
            
            You like hanging out with her and the rest of the committee even more! You love to watch Lulu having fun with her friends.
            
            l: \[ovo\]
    
    * *     What do[ you think?]es she think, you wonder?
    
            l: \[o-o\] Ehe, well. You are catching me in quite a pickle. I feel like you are trying to tell me something indirectly.
            
            l: \[^-^\] I am afraid I am at a loss for words. Your cipher escapes me!
            
            She'll catch on, one of these days.
    - - 
    -> waiting
*   {waiting > 1} [Why does she need to review?] What could a godlike machine wrapped around a fusion reactor have to learn from secondary school nuclear physics?

    l: \[ovo\] < PLAYER_NAME >... what makes you think I would not need to study?
    
    l: \[-v-\] May I inquire as to your familiarity with the anatomy of the heart?
    
    That's reasonable, in retrospect. You can't expect a normal girl who snacks on tritium to understand how tritium works.
    
    * *     You learned a thing or two about hearts[] back in nineteen aught seven.
    
            l: \[o.o\] I beg your pardon?
            
            Nevermind.
    
    * *     You know more about nuclear physics[] than about the heart. Which can be construed in different ways, depending on your background.
    
            The circumstances were a little grim, but we can gloss over the details. 
    
    - -     <> It's a bad story, anyway.
    
    l: \[ovo\] Even a bad story is a story people tell each other.
    
    * *     [Did she come up with that?] "Did you come up with that yourself?"
    - - 
    l: \[-v-\] No.
    -> waiting

*   {waiting > 1} You're done waiting.[] Lucky for you, Ugg comes around the corner. What uncanny timing.
-
    l: \[ovo\] Hello Ugg!

    ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 1.7")

    Her terminal chirps happily. You are concerned that her grasp of it will slip and its rude little inhabitant will come to the forefront, but the danger quickly subsides.
    
    l: \[-v-\] Dare I ask where you were?
    
    u worried: Ugg... <i>gasp</i> sorry. Chickensaur accident. Many head almost cut off.
    
    l: \[0_0\] Goodness! I am pleased to hear that the chickensaurs are safe.
    
    u: Ugg not mean chickensaur head.
    
    You cannot fathom what transpired offstage. Rest assured, you may safely assume it was not nearly as interesting as you might think. We really don't need to pad for time here.
    
*   [Let's get intimate with some physics] You develop a queerplatonic relationship with nuclear physics. It's a real thing that happens and it just happened to you. Congratulations.
-
    u worried: Ugg not get iiiiiit.
    
*   Could it be his reading style?[] You have not seen anyone else comment on the proximity of his face to the book while reading.
    
    Or rather, the lack thereof.
    
    l: \[-v-\] You make a canny observation. However,

*   Could it be the [language?] technical language? This stuff is drier than BB's bones.

    l: \[-v-\] 
-
    <>  I find that unlikely. Ugg has the highest scores in literature exams among all students. Even me!
    
    l: \[ovo\] I found a backdoor that allows me to view them for
    
    l: \[>.>\] friendly, sportsmanlike reasons. I was a tiny bit curious.
-
    So he can read, somehow, and quite well. That eliminates one possibility.
    
    l: \[ovo\] My puzzle cores tell me to look for some sort of tool.
    
    l: \[-_-\] In classic form, they are making me solve the puzzle myself.
    
    u smile: Ugg good with tool!
    
    One might say the best, given where we are now.
    
    u grin: Ugg help find puzzle.

    l: \[>.>\] Hmmmmmm.

    The air around the two of you warms with calculation. It's quite comforting, really.

    l: \[ovo\] Okay you two go to the librateria. I have a hunch that my--

    l: \[¬_¬ꐦ\] --extremely unhelpful--

    l: \[ovo\] puzzle cores are hinting at an answer somewhere in there.

    Ugg shrugs with reluctance.

    u: Things Ugg do for Lulu.

    l: \[^_^\] That is one of the many reasons why I like you so much!

    u: Ugg, er. Yeah.
    
    Shall we?
-> END
