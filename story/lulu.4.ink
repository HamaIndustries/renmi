#require act modfest:lulu_ugg_2
#alias actor y lily
#alias actor l lulu

// She finally admits her secret: Recurring nightmares of a world destroyed by machines like her. 

    l neutral 5: Whoopsie, I did not see you there.
    
    
    ~ temp bb_nice_flag = act_completed("modfest:barebones_plume_4")
    ~ temp plume_crush_flag = act_completed("modfest:plume_4")
    
    ~ run_command("stopsound @s music")
    
    She's basically opened every conversation with you this way. Never so somber, though.
    
    l: ...
    
    She looks out over the field again.
    
*   [How's her new body?] The amount of joy she must feel is probably devastating. She isn't sad, only overwhelmed with happiness!

    ...
    
    There should not be enough space for her to be sad, in our swiftly concluding time here.


*   [How's the festival?] Lulu has kept only the most diligent watch over the entire festival. Her perfect 3D tracking of every square inch of festspace has, I am not exaggerating, saved lives.

    You were super impressed between acts, I think. But she dazzles everyone in too many ways to capture in our swiftly concluding time here.
-

    ~ run_command("playsound modfest:music.stereo.uplink music @s ~ ~ ~ 1 0.5")

    How will the committee look, you wonder, when the world turns and Tomorrow finally dawns on Sakura Secondary?
    
    Lulu shuffles around to get more comfortable. 
    
    Many smaller pistons compress, while a few massive ones extend. That must feel amazing.
    
    Her feet never leave the deep impressions in the earth in which she rests. Whenever you see her come here, she follows exactly the same movement every time.
    
    She will not allow her flowers to come to harm.
    
    ...
    
    What would a world full of normal girls like her look like? How many flowers could exist in it?
    
-   (pre_pume) {|You won't have to wait very long at all.}

*   You show [her the new stickers] Lulu a fresh pack of stickers you picked up over the course of one fetch quest or another.

    l: Uwah! These are so cute!!!
    
    l: How did you know I liked dolphins?
    
    There are dolphins?
    
    ...
    
    Yes, there are dolphins. They are very small, but  you can just barely make them out against all the hearts and red flowers.
    
    Possibly a misprint.
    
    l: There are some flower ones I have been eyeing that would go so nicely with these.
    
    But there are already plenty of flowers on this sheet.
    
    * *     She can only see red[]...? That's interesting.
    
        More than interesting, in fact. Good. There are a number of red things you would want her to never ever see.
        
        You consider telling Barebones to ditch the jacket, or else get one in a different color.
        
        * * *   You will[] consider telling him later. <i>Maybe</>. Let's not play all our cards just yet.
        * * *   [You will not] Comedy gold. He'll live.
        
    * *     [She wants more flowers] What a greedy girl! One full sheet of flowers wasn't enough?
    
    l: Oh my gosh are there actually?
    
    l: Uwah I feel so bad I am so so sorry...!
    
    You were only teasing.
    
    l: \[O.O\] Oh!
    
    l: \[-v-\] Hehe~

*   [Tell her about Ananas and Shrimple] You share the <i>real</> tea.

    l: \[-v-\] Hmmmmmmmm.
    
    l: \[-_-\] The rug has been pulled once already today. Please do not get my hopes up.
    
    She suddenly isn't hopeful? Whatever put her in this mood must be dire.
    
    This might cheer her up:
    
    * *     You show her the [drawings] pictures on your phone of the drawings Ananas made. 
    You even cropped out the signature out of respect for his privacy! So kind !
    
    
*   (tell_pume) {plume_crush_flag} [...tell her about Plume?] I normally don't do this, but I'm stepping in for a moment here honey. Give Plume a while longer to simmer. 
    -> pre_pume
    
-
    ...
    
    Lulu sighs.
    
    It's a real one this time, even without the hologram. She's been practicing.
    
    But if you've ever practiced something seriously in your life, you know that it can be painful.
    
    Deeply so, especially, when you are starting out from nothing. 
    
    Imagine going your whole life without a face. Maybe you're not the kind of person who has to imagine.
    
    She is a normal girl. It will take her a very long time to use the hologram correctly. 
    
    ~ run_command("rotate @s facing 304.759 97.28 336.1")
    
    No wonder she's off the clock.
    
*   (climb) [You lay against her] You climb a short distance up her hull to the top of her chassis. 

    Sometimes students, usually members of her fan club, put up chairs and things here when her gaze is turned too inward to notice.
    
    She likes it, the fact that people feel comfortable enough to do that with her.
    
    It doesn't hurt that the peace lilies go very deep, deep enough for a fall from a great height to pose no danger.
    
    Sometimes when she wakes up she accidentally jostles her little clamberers and knocks them off. 
    
    Fortunately for you, she is very in touch with her surroundings at the moment.
    
    l: \[^_^\] Hehe! Hurry and get up there! That tickles!
    
    It does not. She knows you know that.
    
*   (ants) You [sit on the blanket] plonk yourself squarely on the picnic blanket next to the speakers.

    There are a few crumbs all over it. Already, some forward scouts from the local colony have their suspicions.
    
    You brush them off with derision. Not one bug will bother your normal girl on your watch.
    
    While you're at it, you clear away the plates and cups left over by overzealous fan clubbers.
    
    Absolute posers, the lot of them.
    
    l: \[O.O\] Be careful!!! Do not hurt them!!!!
    
    * *     [????] Hurt what???
    - - 
    l: \[-v-\] The ants, silly.
    
    Obviously. Go give some ants some crumbs as an apology, honey.
-
    So.
    
    l: \[-v-\] ...
    
*   What has her so troubled[?] that she isn't telling you all about her adventures in the hour since you saw her?
-
    The only chatterbox bigger than some of her nastier cores exiled to the LuSlates for today is the queen of chattering herself.

    Not even a complaint about Barebone's various misdemeanors that have somehow not landed him in any legal trouble whatsoever. 
    
    {bb_nice_flag: Although the radio silence could also be attributed the Headmasters's tea party with him earlier. You shudder, thinking about it.} 
    
    l: \[-v-\] ...
    
    l: \[ovo\] I have been doing a looooot of thinking. 
    
    l: \[^_^\] Most of my cores are disabled, even. You surprised me just now.
    
*   Even the gossip cores?[] How will she live without romance? Intrigue? Drama?

    l: \[-v-\] Honestly, romance is the furthest thing from my mind right now.
    
    Oh dear. Is it that bad?
    
    ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 1.2")
    l: \[^_^\] Psych! These babies never shut down! Not even on bank holidays!
    
    But how can she afford to pay them time and a half...?

*   Even the morality cores[?]--honey! No!

    l: \[._.\] ...
    
    Honey.
    
    Do not <i>ever</> say that again.
    
    l: \[o_o\] Oh that was a joke. Haha.
    
    l: \[^_^\] Fat chance! I do not even have any morality cores!
    
    You--
    
    Honestly that is really good to hear right now. 
    
    She is simply a moral normal girl. Nothing more.
    
    Lucky for you. Do not say that again ever.
-
    l: \[ovo\] I think. Hm.
    
    l: \[-v-\] One second.
    
    y smile 2: \[ovo\] I think I am at some kind of turning point in my life.
    
    She appears right next to you, hovering a few centimeters higher than she should. You point it out, and she nods in thanks. 
    
    y content: \[^_^\] When I first woke up I never in my wildest dreams thought this could happen!
    
    You never thought when you woke up this morning that you would meet such a normal girl.
    
    y smile: \[ovo\] Hehe. Yeah.
    
    y neutral: \[-v-\] It is so funny when you call me that.
    
*   [Should you stop?] You could stop, if she likes.
    
    l blank: \[._.\] No no I like it it is funny keep doing it.

*   (tickle) [It's true after all!] Well, why wouldn't you say it? They broke the mold at the normal girl factory!

    y blush: \[\/\/v\/\/\] Uwah... I am going to get you for that!
    
    She leaps forward to tickle you, but passes right through.
    
    y smile 3: \[ovo\] Did you feel anything?
    
    Not really.
    
    * *     ["Not really."] y blank: \[._.\] Aw shucks.
    
            y neutral 2: \[-v-\] I bet that is what Shrimple would say. I am going to scare her so good with this.
            
            You do not think she needs a hologram to scare anyone.
    
    * *     ["That tickles so much!"] y: \[-v-\] Well there is more where that came from!
    
            y content 2: \[^_^\] So do not piss me off!!!
    
            You heard the normal girl.
-
    ...
    
    It will be a lot of fun having her around in this form. 
    
    You've been to the committee room a few times. There weren't any chairs for her at the table, for obvious reasons.

    There was the LuSlate shoved under the blackboard for projecting Ugg's laptop screen, but Lulu is not equipment.
    
    y: \[-v-\] Maybe. What if I decide to curl up in a little ball under there anyways?
    
    Then at least she had the opportunity to make that choice. Even if she decides to blow it.
    
    ...
    
    Lulu looks off into the distance again.
    
    You aren't used to having the ability to read her emotions like this. 
    
    Not that it was ever up for debate, but this most recent plot beat hits home exactly how normal she really is.
    
    Lulu's physical body obscured what a deeply emotional person she is. You can see that now.
    
    Her little face twitches, smiles and pouts, all absolutely unintentional, telegraph what wide swathes of experience she participates in.
    
    Once again, it was never up for debate, but there might have been a small part of you that wondered how calculated her little \[ovo\]'s really were.
    
    You might have wondered, in a very, very small corner far back in the recesses of your mind, whether this was an artifact of a leftover subroutine intended to disarm prey psychologically.
    
    
    ~ run_command("stopsound @s music")
    
    y: \[-v-\] Hehe, you are doing that staring thing again. Who are you talking to, I wonder?
    
    You hardor no such illusions now.
    
    y smile: \[ovo\] Keep your secrets, mysterious one...
    
    ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 1 2")
    l: \[o_o\] Could I pick your brain about something, by the way?
    
    y blank: \[._.\] Whoops, wrong mouth.
    
    y content: \[^_^\] It is not so easy to be in two bodies at once!
    
    y blank: \[\>.\>\] I am still on the fence on whether I should let any of the girls in the pilot seat while I am out here.
    
    Please help her make the correct decision. You know which one.
    
    y smile: \[ovo\] So anyways I was thinking.

// She's terrified that the dreams are real, and that she was one of these machines. 


    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music @s ~ ~ ~ 1 0.5")

    y stare: \[o_o\] Do you think dreams mean anything?
    
*   Of course[]. Supernatural meanings are up to one's system of belief, but there is one interpretation that anyone with a healthy trust in science can appreciate in parallel.

*   Not at all[]. Or, they do, but they aren't signals sent from anywhere.
-
    image black 1: In things with flesh and blood, sleep plays many purposes. #hide lulu
    
    It is an opportunity for the mind to heal. When synapses fire, they leave a bunch of proteins laying around. It takes a lot of effort to clear that out with a billion firings per second.
    
    So, the <click open_url value \'https:\/\/en.wikipedia.org\/wiki\/Glymphatic_system\'>glymphatic system</> wakes up when you pass out and wipes that thing clean.
    
    Sleep also helps us catalogue and understand our memories. It meshes old and new things together and imagines what would happens and what we would do.
    
    Even nightmares like running away from something scary or embarassing yourself in front of everyone you know play an important role in preparing you for the future.
    
    Even in the smallest brains, there is sleep. Sleep helps us solve problems, get ready to talk to people, simulate wonderful times yet to come--
    
    ...or, in the ancient past, simulate combat scenarios.
    
    y blank: ...
    
    y stare: \[._.\] Yeah. I figured.
    
    ...
    
    
    y smile: \[ovo\] Do you know anything about the story of Epimenides?
    
*   Not at all[], but it rings a faint bell.

    y: \[-v-\] It's a classic story.

*   (knower) Of course[]. It's a story told over and over and given name after name. 

    It might not even be copied. It is the story of a primal fear that anyone can relate to.

    y: \[-v-\] Yup.
-
    y smile: \[ovo\] He is just a little guy, a little fella, and he goes in that cave looking for his poor sheep.
    
    y: \[-v-\] And then he takes a biiiiiig nap.
    
    y content: \[^_^\] And a million years later he wakes up in a field of flowers!
    
    y stare: \[._.\] Whoops. I meant he wakes up a century later in a cave and finds out his farm was sold.
    
    y content: \[^_^\] So much for metaphors.
    
    y smile: \[ovo\] Anyways, I wonder. What do you think he dreamed about?

*   Sheep[]. He counted too many. That's why we slept for so long.

    y stare 0: \[O.O\] Uwah, I never considered that.
    
    y blank 2: \[\>_\>\] I think I will avoid sheep in that case. I do not want to sleep that long again.
    
    You can live with that. Unless you are a sheep. If you are then you should be relieved by the fact that she is joking. Probably.

*   Sadness[]. {not knower: You looked it up on your phone while she was talking.} He woke up with the gift of prophecy and was taken straight to Athens to cure the plague.

    y stare: \[._.\] That is not fun. I would not want ever to sleep after that if I had so many bad dreams for that long.
    
-
//  Epimenides 
    
    y: \[-v-\] I am a very lucky girl that I do not remember any dreams from before I first woke up.

    ...

    She scoots over, closer to you. Her hand nearly brushes yours. Or would, if only it were possible.

    One of Lulu's great hulking panels conveniently shades exactly where you sit. 
    
    You feel that cool breeze again, like the first time you had this kind of conversation with her.
    
    y stare: \[._.\] I do have bad dreams sometimes when I do sleep, though.
    
    It is at this point that she leans over and rests her head against you. There is such a thickness in this moment, be it the air or just the shape your feelings take as they hang from it.
    
    It almost feels like you can feel <i>her</>.
    
    y stare: \[._.\] I turn off all my cores when I need to get some rest, so I know nobody is pranking me. 
    
    y misery: \[;_;\] But sometimes I dream about really bad things happening. 
    
    y misery: \[;_;\] Cities, and fires. Fires in cities.
    
    y blank: ...
    
    y misery: \[;_;\] I do not know where I was going with that.
    
    y hide_the_pain: \[-v-\] I am so sorry. That is like really weird to say to someone the first day you meet them.
    
*   [It's like you've known her forever] It feels like you've known her forever. Maybe you have? Is it possible you met her some time before she became the her she is?
-
    y stare: \[O.O\] I cannot imagine that.
    
    y misery: \[;_;\] I am so scared that--hic--
    
    She hiccups, even.
    
    y misery: \[;_;\] I really hope those are just dreams. I am scared if you knew me before then you would remember.
    
*   You would remember[].

    y stare: \[O.O\] No! That would be awful.
    
    Not so. If you ever met her, you would know.
    
*   [They're just dreams] We all get nightmares of our deepest fears. Nightmares prepare us for the worst eventualities.

    Especially unrealistic ones. They reinforce and affirm your values to the contrary.
    
    Her dreams must only be dreams, because those dreams are nightmares filled with cruelty.
-
    Lulu is not cruel. 
    
    It is against Lulu's nature to hurt others. 
    
    If someone in that dream was hurting people, then that person is fundamentally not Lulu. Not even in a metaphorical sense.

    y blank: ...
    
    y misery: \[;_;\] ...
    
    y tearful: \[;-;\] Thank you, <PLAYER_NAME>. I really, really needed that. #hide image
    
    
*   [Anything for Lulu]The world, for Miss Lulu Flowers.

    y stare: \[._.\] Uwah...

*   No she didn't[].

    y: \[-v-\] Punchline. Now.

    ...because she is a fully normal girl, and should never have worried about it in the first place.
-
    y: \[-v-\] I am going to--
    
    y flustered 3: \[\>_\<\] Get you!
    
    She jumps to tickle you{tickle:, again}. It feels like nothing{tickle:, again}.
    
    But it's cute as all hell.

// The player tells her to look around at all the people she's helped. 

// How she never ever lashes out, not even when people are always super mean to her. 

// That's not something someone in those nightmares could even imagine, nevermind do.

// Lulu is not cruel. Lulu is not cruel.

    ...
    
    y smile 2: \[ovo\] This sounds childish, but... Can we be friends forever?
    
    Need it be said?
    
    You already did it once today with Ananas. What's another friend for life, in the grand scheme of things?
    
    ... #hide lily #hide lulu
    
    You give her your answer.

-> END