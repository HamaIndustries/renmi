#require act modfest:lulu_2
#require act modfest:ugg_3
#alias actor s shrimple
#alias actor a ananas
#alias actor u ugg
#alias actor p plume
#alias actor b barebones
#alias actor l lulu


// we're actually gonna jump off ugg act 3/getting glasses and use this as a bridge into hololulu

// ACT 3: (requires ugg ACT 2) Shrimple made a nice lunch for the committee which everyone gets to enjoy... Except for Lulu. She kindly but sadly excuses herself, and the player goes to catch up. We find out some of her background--she was born in a field of flowers, doesn't know her history. She sometimes feels like a normal girl, but just as she starts to fit in, something happens and she feels like a fake girl again. a machine. But some people, like Ugg, help her forget more often than with others. What other things in her past were so painful that she forgot? What a funny world we live in! (maybe something about a trip to the city, where she obv can't go? shows her almost having a panic attack when the city is mentioned. She's terrified of cities for some reason.)

// you notice one of her stickers is peeling and fix it

//-----

// ACT 3: (requires ugg ACT 2) Shrimple made a nice lunch for the committee which everyone gets to enjoy... Except for Lulu. 

    s: Sorry to keep ya waiting folks. 

    ~ run_command("stopsound @s")
    ~ run_command("playsound modfest:music.stereo.shrine music @s ~ ~ ~ 1 0.8")
    
    s: It ain't much, but let's dig in.
    
    Shrimple is either disgustingly ambitious or disgustingly modest. There's enough food here for five committees.
    
    a: You're disgustingly modest, shrimple, you know that?
    
    That answers that question.
    
    s smile_blush: Aw, I try.
    
    u smile: Shrimple best chef Ugg know. And Ugg know many chef.
    
    p pout_side 0: Did they finally invent food in the stone age?
    
    They say, shovelling grapes into their mouth.
    
    s angry: Plume, leave it.
    
    p pissed: I ain't a dog, shrimp.
    
    b: Yous got something against shrimps, kid? They's good eating.
    
    s angry: ...
    
    b aura: I, er, was saying they <i>makes</> good eats. Fer us.
    
    s neutral_side: Thin ice, 'bones.
    
    Her tone too is ice, but she ribs him playfully. 

*   Let's dig in[]. You don't know where to start. Whatever you are, there's something for you here. 

    And I do mean <i>anything</>, if it's to your taste. Shrimple is nothing if not a connoisseur for accessibility.
    
    Your enjoyment is tempered, however, when your gaze drifts to the gentle giant, the apple that encompasses your eye, so to speak.
    
*   You're not hungry[]. 

    * *     You already ate[]. Treats from before, brunch, the various bits and bites on offer from every other booth. You're stuffed, as much as the smells tempt you now.
    
            Distracting yourself, you cast your eyes aside, inevitably focusing on the figure that takes up half the landscape near the scene.
    
    * *     There's someone missing[] from all of this. She's very large and is very noticeably sitting so as to not cast a shadow on the lovely scene.
    
    * *     You're [worried] too worried to eat.
    
            s frown: 's wrong, honey?
            
            Don't call <PLAYER_NAME> that.
            
            * * *   It's been a long day[]. It's mostly in an abstract sense, but a vague worry wraps itself over your shoulders.
            
                    Fog rolling down a hill.
                    
                    And then, there's Lulu.
            
            * * *   You're concerned about someone[]. Lulu has nothing to eat. 
-

    She already ate, in her way, but the purpose of a big meal in the presence of friends sits far and away from the food.
                    
    The thought conjures briefly what it looked like when you saw her consume the Deuterium. 
    
    For the sake of your image of her, you try hard to bury that memory deep.

// She kindly but sadly excuses herself, and the player goes to catch up. 

*   You [check in with her] come over to her side, preparing to sit down.
-
    l neutral 5: \[ovo\] ... #hide ananas #hide barebones #hide plume #hide barebones #hide shrimple #hide ugg

    She idly watches the scene through the glass, bees bumping aimlessly into her hull over and over.

    l: \[>.>\] Oh? <PLAYER_NAME>? Is there something that you need?
    
    She shuffles over a bit to accommodate you, scraping a huge chunk out of the freshly cut lawn.
    
    l: \[0.0\] Uwah! I did not mean to do that...
    
    l: \[<.<\] I think, um, I am going to step out and get some fresh air. If you do not mind.

    ~ run_command("playsound renmi_springfest:lulu.step ambient @s ~ ~ ~")

    ~ run_command("schedule command 10t playsound renmi_springfest:lulu.step ambient")

    ~ run_command("schedule command 20t playsound renmi_springfest:lulu.step ambient")

*   You follow after her[]. #hide lulu
*   You call out for her to wait[],

    ~ run_command("playsound renmi_springfest:lulu.step ambient @s ~ ~ ~")

    ~ run_command("schedule command 10t playsound renmi_springfest:lulu.step ambient")

    ~ run_command("schedule command 20t playsound renmi_springfest:lulu.step ambient")

    ~ run_command("schedule command 30t playsound renmi_springfest:lulu.step ambient")

	<> but you are droned out by the massive hollow peals that announce her comings and goings. #hide lulu

    The others are fully immersed in their lunch, practically living in another reality altogether.
    
    s: Heya, <PLAYER_NAME>. Y'mind running along and keeping a tab on the poor girl?
    
    s neutral_side: I was hopin' it wouldn't happen today, but sometimes she gets in these moods, y'see.
    
    s embarrassed: Must be on account of you showing up. She's absolutely glowing today, showing you all her favorite spots and all.
    - -  (shrimple)
    * *     (feelings) You hurt her feelings?[]
    
            s frown: Not at all.
            
            s: If anything, you distracted her from them. Big feelings, too.
            
            s: But when things settle down like this, sometimes our thoughts drift and life catches up to us, follow?
            -> shrimple
    
    * *     What about the food?[]
    
            s angry: You kiddin'?
            
            s: I'll bake ya a muffin or something once you come back. {feelings:Now scoot.}
            
             {feelings:->follow}            
            
            -> shrimple
    
    * *     You're on it.
    
-   (follow)

    image black 1: ... #hide shrimple

// We find out some of her background--she was born in a field of flowers, doesn't know her history.

    For a girl as large as Block D, she's harder to find than even a few of the guests so small that you nearly stepped on them.
    
    But that's only for a day or two. You couldn't imagine having to worry about that all the time for the rest of your life.

    ~ run_command("tp @s 295 86 341 -175.8 0")
    
    Following the route she went, across the river, past makeout peak, to the very edge of the far forest, you eventually find her.
    
    She sits meditatively on a slight incline, raised just enough so that her massive legs can relax and stretch out a bit.#hide image
    
    Perhaps even massive unknowable machines--no, normal girls, need some rest from time to time.
    
    ~run_command("stopsound @s")
    ~run_command("playsound modfest:music.stereo.lily_of_the_valley music")

    She hums absently to herself as you approach from the side. She doesn't seem to notice you. #blur false
    
*   "How are you feeling?"

    l  lulu_on_less_stickers 4: \[ovo\] Oh! I did not expect to see you here.
    
    l lulu_on_less_stickers: \[^_^\] I am doing perfectly fine, thank you for asking.
    
    l lulu_on_less_stickers: \[._.\] But you are missing out on lunch, are you not? Your food is getting cold.
    
    - - (lunch)
    
    * *     You're not hungry[]. You already ate, or you're worried, or whatever. The details aren't important.
    
            -> important
    
    * *     [She's more important] There are things more important than food out there, contrary to what Shrimple would say.
    
            - - - (important) l lulu_on_less_stickers: \[._.\] I do not know, it is my understanding that food is important to all living things.
            
            l lulu_on_less_stickers: \[ovo\] Let me go ask.
            
            l lulu_on_less_stickers: \[...\]
            
            You--
            
            l lulu_on_less_stickers: \[ovo\] Okay I am back.
            
            l lulu_on_less_stickers: \[-v-\] Miss biology core says it <i>is</> important. I have caught you fibbing!
            
            * * *   [Is she doing this on purpose?] She has to be doing this on purpose.
            
            l lulu_on_less_stickers: \[^-^\] Hehe. Am I?
            
            She is doing it on purpose.
            
            l lulu_on_less_stickers: \[ovo\] I think you get me.
    
    * *     You don't eat "food["]," not in any conventional sense.
    
            l lulu_on_less_stickers: \[o_o\] Is that so?
            
            There's some distant whirring and clicking somewhere deep inside. The sound of your character profile being updated.
            
            l lulu_on_less_stickers: \[^_^\] We have a lot in common, don't we? I'm glad to have someone that can really get me on the committee, now.
    - - 
    * *     Do the others not get her?
    
    l lulu_on_less_stickers: \[-vo\] Some do, some do not. But you do not need to be "got" in order to be friends.
    
*   "So this is where you've been hiding."

    l lulu_on_less_stickers 4: \[0.0\] Oh!
    
    l lulu_on_less_stickers: \[-v-\] You must not sneak up on me like that, <PLAYER_NAME>. I might die of fright!
    
    You do not believe it is her that will be doing the dying, should she be frightened.
    
    l lulu_on_less_stickers: \[o_o\] Speaking of living and dying. Did you not finish your lunch?
    
    Always looking out for others, isn't she?

-

    Lulu settles in a bit, scooching over to make some room to sit down next to her.

*   (leaning) You [lean on her chassis] rest your head against her. The metal is, surprisingly, warm--not hot, warm.

    l lulu_on_less_stickers: \[-v-\] Is it alright? I adjusted my hull temperature so that you could be comfortable. It usually takes several minutes to get to the right setting.
    
    Which means that she predicted your movement at least that far in advance. It's hardly surprising, at this point.

    ~ run_command("playsound renmi_springfest:lulu.steam ambient")
    
    She sighs, or you think she sighs. Bits of steam, hopefully not irradiated, drift away. A girl's got to let off some steam every once in a while, don't you know?
    
    * *     "Nice view?"
    
*   You stare out over the school.

-   (view)
    
    The bluff looks out over the flowers in front of you, across the river towards campus, the neighborhoods nearby, and out in the distance the silhouette of the city.
    
    Your gaze lingers at that silhouette for a while.

    l lulu_on_less_stickers: \[-v-\] Yes, I love this spot. It reminds me of the place where I was born.
-   (from)
*   The city[]?

    ~ run_command("stopsound @s music")

    ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 0.5")

    image black 1: \[ \] No-- NO!!!!! #hide lulu

    Steam erupts from several cracks in Lulu's chassis.
    
    She remains silent for several seconds. 

    ~ run_command("stopsound @s music")
    ~ run_command("playsound renmi_springfest:lulu.cockpit ambient @s ~ ~ ~ 0.5 0.5")
    
    Then,
    
    there's this raspy, repetitive sound from deep inside. 
    
    Like a rattling, 

    // just gotta be sure lol
    ~ run_command("stopsound @s music")
    
    panicked breath. 
    
    {leaning:You can even feel her shivering slightly.}
    
    She needs a few moments more to calm down.
    
    ...
    
    l lulu_off_less_stickers 4: \[;-;\] No, I just.
    ~ run_command("stopsound @s music")
    l lulu_on_less_stickers: \[u_u\] I am sorry you had to see that.
    
    * *     What happened?
    
            l lulu_off_less_stickers: \[u-u\] I--
            
            Static sounds. Hiccup?
            
            l lulu_off_less_stickers: \[;v;\] I am not good with cities.
    
    * *     You understand.
    
            Lulu was dead silent earlier when the committee discussed a trip into the city for more supplies.
            
            For someone who spends so much of her waking hours just trying <i>not to kill anybody by existing</>, a city is a material nightmare.
    - - 
    * *     "I'm sorry["]."
    * *     She shouldn't apologize[].
    - - 
	~ run_command("stopsound @s music")
	~ run_command("stopsound @s ambient")
    l lulu_off_less_stickers: \[u_u\] <PLAYER_NAME>, you are too kind. #hide image

    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music @s ~ ~ ~ 1 0.8")
    
    l lulu_on_less_stickers: \[^-^\] I am really, really glad that we are friends now.
    
    l lulu_on_less_stickers: \[;-;\] To be honest, the last person that happened around has not spoken to me since.
    
    l lulu_on_less_stickers: \[._.\] I know what you will say, do not worry. I try not take it to heart.
    
    So, take two: Where do we think she's from?
    -> from
    
*   The flower field[]?
-
    l lulu_on_less_stickers: \[^_^\] How did you know?
    
    {from:That was the only other option, to be honest.|A wild guess.}
    
    l lulu_on_less_stickers: \[ovo\] It still feels like yesterday.
    
    l lulu_on_less_stickers: \[^-^\] To be fair, everything feels like that. My memory is a little too perfect for its own good!
    
    l lulu_on_less_stickers: \[-v-\] ...
    
    l lulu_on_less_stickers: \[-v-\] Yeah, a little too good.
    
*   What [about the flower field?] was that about a flower field? She grew up there? Really?
-
    l lulu_on_less_stickers: \[o_o\] Uwah, I got distracted.
    
    l lulu_on_less_stickers: \[-v-\] Yes, my earliest memories were of years and years half buried in a field of flowers just like this.
    
    Lulu shifts one of her weighty appendages and rotates it slowly to gesture to the splendor before you. She might have meant it to be grandiose, but it's just cute.
// She sometimes feels like a normal girl, but just as she starts to fit in, something happens and she feels like a fake girl again. a machine.

    ...
    
    l lulu_on_less_stickers: \[-v-\] Between you and me, sometimes I forget about all my troubles. I get too comfortable and spend too much time in the flower petals, so to speak.
    
    l lulu_on_less_stickers: \[-_-\] Like a normal girl.
    
*   She is a normal girl.[] Normal girls can be huge and impossibly heavy.

    She likes flowers and spending time with friends. Singing and gardening. These are extremely, nay, excruciatingly normal things.

*   What even is a normal girl?[] What is normal? You look around at every single student at the school, and think she's anything out of the ordinary?
-
    l lulu_on_less_stickers: \[\/\/_\/\/\] Uwah, I guess that is true.
    
    l lulu_on_less_stickers: \[^_^\] That is why I love my friends so much!
    
    l lulu_on_less_stickers: \[ovo\] Forgetting is hard, but people like you and Ugg help me forget even harder.

// But some people, like Ugg, help her forget more often than with others. 

// What other things in her past were so painful that she forgot? What a funny world we live in! 

// (maybe something about a trip to the city, where she obv can't go? shows her almost having a panic attack when the city is mentioned. She's terrified of cities for some reason.)

// you notice one of her stickers is peeling and fix it

	~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 1.5")
    She makes that sound that you've come to recognize in her as giggling. You're doing your job right--she doesn't even notice that one of her stickers has begun to peel.
    
*   You fix [it]the sticker for her. There, good as new.
-
    l: \[._.\] What are you--
    
    l: \[\/\/_\/\/\] Oh, my. Thank you so much. I did not even realize it was like that.
    
    //l: \[-v-\] Haha, that is funny.
    
    l: \[^_^\] I have sensors out the wazoo and I did not even notice it was coming off!
    
    l: \[ovo\] I am a very lucky girl to have observant people around like you!
    
*   And you're lucky to have Lulu[].

    ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 2")
    l: \[\/\/_\/\/\] Stop itttttt!!!!
    
    l: \[-v-\] You are giving my girls far too much ammunition to use against me.
    
    l: \[@﹏@\] You have no idea how much gossip I have to deal with on a daily basis.
    
    l: \[ovo\] I am only joking, of course. About the ammunition being too much.
    
    l: \[¬_¬ꐦ\] Not about the gossip. I am going to have a chat with them later. I have been putting up with way too much backseating over the last ten minutes.

*   And she's also lucky for the committee[]. They aren't all the most observant (cough, barebones), but they all look out for each other when push comes to shove. 

    Even normal girls need a helping hand from time to time.
-
    You spend a while longer together before heading back to the others to finish lunch. #hide lulu
    
    image black 1: You do wonder, though, what happens with the truly painful memories.
    
    Most living things have imperfect memories because they can't handle the strain of having their most painful moments remain as fresh and raw as the moment of their creation.
    
    For everyone, you included, there are flashes of memories that are like touching a hot stove. You have to let go immediately or else get burned.
    
    It's not tenable.
    
    So, what happens if you do have a potentially perfect memory?
    
    Lulu is, quite obviously, not a machine. Not in any conventional sense. She has emotions, and apparently uncomfortable and even somewhat painful memories. She is, in all seriousness, a completely normal girl.
    
    She would need to shut those out completely. Delete them, even, from her drives. Not even a little bit, an absolute wipe. 
    
    Which begs the question:
    
    Who was she, before she woke up in her field of flowers?


-> END
