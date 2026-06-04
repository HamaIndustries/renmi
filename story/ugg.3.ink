#require act modfest:lulu_ugg_1
#alias actor u ugg
#alias actor l lulu


//[ ] ACT 3: (requires Lulu + Ugg ACT 1) Ugg's trying to help out with setup but he's completely exhausted from studying with Lulu. You offer to ask Lulu to cool it down, but Ugg is actually the one asking to study so hard. He has some kind of plan, but he's not telling...

// very very short and cute. just gives a little more insight into ugg's mental habits


// --- In the Librateria ---
    u worried: Uoughhhhhhhh

	~ run_command("stopsound @s")
	~ run_command("playsound modfest:music.stereo.red_hot_poker music @s")
    
    u worried: Ugg head feel bad.
    
*   You [pat him on the shoulder] reach for his shoulder, but you are gripped by a sudden sense of vertigo.

    It's like every centimeter of travel becomes an exponential distance. It's like falling into a black hole. The universe will not permit you to truly grasp his size.
    
    u neutral 3: Is <PLAYER_NAME> okay? Do Ugg find Nurse?
    
    You'll be fine, as soon as your head stops spinning.

*   You look around for some ice[], or something else cool enough to quench the migraine.

	* * 	The [fridge] "fridge" turns out to be just a door and a dispenser. On second thought, how did you even mistake this for a fridge in the first place?
    * *     The hotdogs[]? Are you trying to kill him? Do you feel alright, honey?
    * *     The Eaterie[] has hot churros and room temperature berries. No dice.
    
        You consider checking under the hatch to the basement, but a deep-seated fear grips you. There is nothing good down there. 
        
    * *     The books[] would be a welcome distraction from the pain, if only they weren't its cause.
    - - 
    We're flat out of luck. Poor Ugg.
-   
    Ugg snacks absentmindedly on a Churro, a few crumbs lodging themselves in the pages of a rather prosaic technical manual that you're too distracted to parse.
    
    It's far from the strangest thing you've encountered at this school, but nonetheless a "Librateria" from the name alone is destined to fail.
    
    You havent come across a single unsmudged book. The apothecary you sit is mere meters away from the rare collectibles. A librarian would have a heart attack in here, but this Library--sorry, Librateria--is absent one.

- (questions)
*   Should we give up?[] They've been working towards this day for weeks. Ugg shouldn't waste it on cramming.

    u: No. Ugg have plan. Ugg need know much science before end of day.
    
    That's a tall order, when science hasn't even been invented yet.
    -> questions
    
*   His reading style could use some work.[] He's got that thing stuffed in his face as always, despite gentle prodding from both you and Lulu.

    Perhaps it is time to break out the sledgehammer.
    
    * *     Lulu [should cool it down] ought to sit back and let history take its course.
    
            It's endearing that she is so insistent about his studying--this is the first time you've seen her even the slightest bit aggressive about anything--but her attitude puts a lot of pressure on Ugg.
            
    * *     There's something else [] we haven't considered. There must be <>
    
            {questions > 1: -> continue}
    - - 
    He shakes his head solemnly. Dim light filters at just the right angle to highlight his face. A neolithic idol, carved in ancient clay.
    
    It's just past lunch, by the way. Did you remember to eat, honey? I'm afraid I wasn't paying attention there for a bit. Why don't you go grab something for yourself, even just a snack?

    There's a nice selection here at the apothecary, and there's the Eaterie downstairs.

    Not the hotdogs, though. You <i>must not eat the hotdogs</i>.
    
    u worried: Ugg not learn any other way.
    
    Cannot learn? Refuses to learn? His normally charming lack of qualifiers grows less charming by the minute.
    -> questions
*   ->

    You've run out of ideas. Still, you've noticed something.
    
-   (continue)

    It's the way his eyes unfocus when he talks about reading or studying.
    
    His almost eidetic memory for things he <i>does</> understand. Ugg isn't stupid. He takes a long time to read, and he definitely doesn't want to hold his friends up while studying just to keep pace.
    
*   He needs glasses[.], of course.

	Why didn't you see it sooner? Perhaps you're the one who need glasses?
-
    Sorry honey, I couldn't resist.
    
    He leans back from the bar and gives a wet, breathy snort, like a mammoth or similar charismatic megafauna.
    
    u: How glass help Ugg study? Ugg see glass all the time. It pretty but useless.
    
*   Not [that kind of glass] bonfire glass, the kind of stuff you see after a beach party. More like the thick heavy clear things the headmaster wears that make it look like she can see you from a mile away.
-
    u grin: Ohh, <PLAYER_NAME> mean spectacles.
    
    Which time period is he from, again?
    
    u: Ugg think about it. But glasses sold in city.
    
    u worried: By time we back, festival long gone.
    
*   There's no other option[]. You made it to the city once today, although it nearly killed you. What's another near death in the grand scheme of things?

    image black: It's in roughly the same place as before, honey. You know what to do. #hide ugg

    ~ run_command("tp @s 92.559 93 -62 -149 2")

    I must say, though. What a slog.

    ~ run_command("stopsound @s")
    ~ run_command("playsound modfest:music.stereo.pasuka music @s ~ ~ ~ 1 0.5")

    Or maybe not. Your muscle memory evolved so quickly that skating to town and back is as easy as blinking. #hide image #blur false

    How convenient.

    
*   There's another option[], horrific as it sounds. You've only seen glasses in one place on this entire campus, and they belong to the most terrifying person on said entire campus.

    u worried 2: Is <PLAYER_NAME> head on backwards?
    
    u worried: They still not find students who fail physhom midterm.

    ~run_command("stopsound @s")
    
    image black 1: It wasn't <i>that</> bad. They'll find them eventually.

    I mean, I wouldn't know. I've been with you the whole time, honey. #hide ugg
    
    Still, your curiosity as to Ugg's secret goal tugs you toward the edge of the abyss. Is your bravery intact? Are you ready to make that leap?

    The study is at the very top of the school. The Headmaster is out for lunch, last you saw her.
    
    There's bound to be a backup pair up there somewhere.

    ~ run_command("tp @s 92.559 93 -62 -149 2")
    
    Try not to get caught. Do mind the thetiscope, though.


    ~ run_command("stopsound @s")
    ~ run_command("playsound modfest:music.stereo.pasuka music @s ~ ~ ~ 1 0.5")
-


    u worried 1: < PLAYER_NAME > sure? Ugg never have glasses before. #hide image #blur true

    u: Glass just rock. Rock not help Ugg read.

    ~run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 2")

    l neutral 5: \[ovo\] It does not hurt to try!

    l: \[uvu\] Just this once, big guy? For me?

    u worried: Ugg not sure. Ugg must be strong and learn thing like man.

    l: \[-_-\] ...

    He flinches. He knows what he did.

    l: \[-_-\] Ugg, please look at me.

    l: \[-v-\] Strong men listen to women, do they not?

    u: ...

    u grin: Lulu make good point. Lulu strong woman who make good point.

*   You hand them over.
-
    u neutral_glasses: < PLAYER_NAME >? Lulu, where < PLAYER_NAME >?

    u neutral_glasses: Has pretty visitor seen < PLAYER_NAME >?

    He's talking about you, hot stuff.

*   You tell him.

*   You leave him in the dark.
-
    u neutral_glasses: Why visitor have < PLAYER_NAME > same shape and color--

    Realization dawns like the weight of a new age.

    u worried_blush_glasses 0: Aaah! Aaaaah! Ugg just joke! Ugg make funny haha Joke.

    l: \[\/\/w\/\/\] Uwah. Are you all recording this, girls?

    u neutral_glasses: Is this book? Letters so big now. Why rock so strong?

    l: \[ovo\] This must be what they call the power of technology!

    u smile_glasses 2: Hm. Ugg not thank Lulu and < PLAYER_NAME > enough. Ugg have lot think about.

    u neutral_glasses: And study.

    l: \[ovo\] I am always here if you would like a tutor!

    u grin_glasses: Ugg like one now, please.

    u neutral_glasses: Ugg have big idea.

    l: \[ovo\] So exciting! Do tell?

    u smile_glasses: Secret. But Ugg need study for happen.

    This might take a while. Go get your lunch.

    I'm proud of you, honey. You changed someone's life today.

    Even if you're  still on the fence about whether coming to SASH will work out, we know one thing.

    There's at least two people now who don't regret one bit that you did.
-> END
