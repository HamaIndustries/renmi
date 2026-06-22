#require act modfest:plume_4
#require act modfest:lulu_4
#alias actor p plume
#alias actor l lulu
#alias actor y lily

// (2) [ ] **ACT 5**: (requires Lulu + Ugg ACT 3) Lulu has a plan. She wants to show Plume something special, but they've been avoiding her. You give her an idea: Write an anonymous letter sharing how she feels, and to meet at a designated location. If you know Plume's favorite flower, you can tell her that, and she'll choose to include it in the letter (she wants to be besties?).

// ----

// lulu invites you over to help her with something. she wants to show this off to plume, but can't find them anywhere. You suggest she go to plume's garden. you might offer to take her there, but she insists she do it herself. 

    l neutral 5: \[-v-\] Thank you for coming on such short notice, <PLAYER_NAME>!
    
    ~ run_command("stopsound @s music")
    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music")
    l lulu_off: \[ovo\] I had an idea I wanted to run by you.
    
    y smile 2: \[ovo\] I was wondering... what do you think would happen if I showed this little old thing off to Plume?  
    
    y content: \[^_^\] I think they would not feel so jealous if they saw me stumbling around trying to pick things up!
    
*   [They don't owe her anything] After the way Plume has treated Lulu, it should be them trying to cheer her up.

    y: \[-v-\] Maybe. <>

*   That would be kind of her[]. Maybe too kind.

    y: \[-v-\] <>
-
    I mean, they did apologize to me at the greenhouse, did they not?
    
    y stare: \[._.\] Sort of.
    
    y flustered: \[\>_\>\] I do not see any harm in it.
    
    Holo-Lulu kneels down next to your place on the picnic blanket, but then flops onto her back to watch the clouds.
    
    y: \[u_u\] We were not exactly friends, but when they first came here, we got along quite amicably.
    
    y smile: \[ovo\] We even share a taste in a lot of the same games.
    
*   [Mario?] I'm not sure if it's even safe to mention him. Let me run ahead and take some precautions.

    y smile: \[ovo\] I set up a little emulator for the one where your friend can be \[NAME_EXPUNGED\] and then you can be the star that shoots the little chunks that make everyone dizzy.
    
    y: \[-v-\] You can probably guess who played who...
    
    y: \[-v-\] I do not like when \[NAME_EXPUNGED\] squishes the enemies, but I looked past it. And also closed my eyes every time so I did not have to see the squishing.
    
    Okay, I'm back. Did I miss anything?

*   Ultrakill?[] You are joking, right?

    y stare: \[._.\] You are joking, right?
    
    Told you so.

*   Minecraft?
    
    y stare: \[._.\] Not Minecraft. They did not like that I play on Peaceful mode.
    
    y content: \[^_^\] They tried to show me these things "mods" but it all went over my head!
    
    y: \[-v-\] I wonder if those "mods" have the same etymology as the projects we are showcasing here at the festival?
-
    y smile: \[ovo\] Uwah, that brings back some memories.
    
    y stare: \[o_o\] I have no idea when it started, but things just got worse and worse over time. 
    
    y: \[-_-\] Could it have been their dark past finally catching up with them...?
    
    Sigh.
    
    ~ run_command("stopsound @s music")
    y content: \[^_^\] I must admit, I even liked them a little bit!
    
    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music @s ~ ~ ~ 1 0.8")
    What. Wow.
    
*   Does she still like them?

    y flustered: \[\>.\>\] Uwah, well.
    
    y: \[-v-\] We have spoken enough for you to know the forecast on my romantic prospects.

*   [Girl. Let's talk.] You give her the what's for on having self respect.

    And, for that matter, remind her how much everyone loves a tall girl. She can do so much better it's not even funny.
    
    y: \[-v-\] Yes, you are right. 
    
    y content: \[^_^\] I am a hot honcho with a sick bod!!
    
    And the world damn well better know it.
    
    y: \[u_u\] I cannot deny that Plume is "smoking" too, however.
    
    * *     [To each her own] You never would have pegged her as one with an eye for twinkbutches. Butchtwinks?
    
            y stare: \[._.\] That is... one way to describe them.
            
    * *     [Yeah...] They say that true beauty is on the inside. Whoever said that would likely revise their opinion after meeting Plume. 
    - - 
    y content: \[^_^\] I kind of just want to run my fingers through their hair. It looks so soft!
-
    y: \[-v-\] I do not know why I brought that up. Silly me.
    
    y smile: \[ovo\] Anyway, it would be a good idea to show them this body before the closing ceremony just so they are not distracted
    
    y smile: \[-vo\] ...by these big guns! Uwah!
    
    She flexes at you. Makes the motion of flexing at you.
    
    Whether this image is shaped by Ugg's or her own perception of herself, Lulu's idealized form is a record-setting stringbean.
    
    y smile: \[ovo\] I do have one problem. Do you know where they might have scooted off to?
    
    y: \[-v-\] I have checked every slate on campus, and they are nowhere near any of the booths.
    
    ...
    
    It's her life, honey.
    
*   [Fiiiiine] Against your better judgement, you tell her about Plume's rooftop garden.
-
    y smile: \[ovo\] I had been wondering about that place.
    
    y angry: \[¬_¬ꐦ\] And why people were dodgy when I asked about it.
    
    y stare: \[._.\] I should not walk over there with my real body with all the visitors getting ready to leave.
    
    y stare: \[._.\] Uwah, and my little cube will take some time to get there on its own without any help...
    
    She looks at you with sparkles in her eyes. Emotionally.
    
    y smile: \[ovo\] Well, you know what that means!
    
*   [Fetch quest!]y: \[-v-\] No...? I meant that I will start walking that way now. 

-

    y smile: \[-vo\] Thank you so much for the offer! But you have so much on your plate already.

    y stare: \[._.\] Actually, do you mind keeping an eye on my body for a bit? 
    
    y smile: \[ovo\] I have all my cores off, so if anyone comes by with a question they will be posing it to a hunk of junk!
    
*   [It's her life] If Lulu insists, there is nothing stopping her. Presumably she has a map from A to B uploaded in that cube somewhere.

    Out of an abundance of precaution you still go over the route several times with her. 
    
    Even if she isn't so worried, you spied the cost of materials on Ugg's cragtop before he cleaned up. 
    
    If that cube gets lost, there's no making another, even with Ugg's funding.

*   [How's your Lulu impression?] You ask Lulu for a few pointers on being Lulu.

    y smile: \[ovo\] Well for one thing you should probably answer people immediately instead of staring at them.
    
    y: \[-v-\] And maybe try to act like they are the only one you are having a conversation with.
    
    y smile: \[ovo\] You are such an interesting person. I should be getting lessons on how to be like you, not the other way around.
    
    y content: \[^_^\] I would love to pick your brain some time!
    
    Please don't.
    
    y smile: \[ovo\] Hehe. Tell whoever that is hi for me. I think we would make for great friends.
    
    ...
-
    y: \[-v-\] I should get going now. These little cube legs were made for walking, you know!

    y smile: \[ovo\] I will be fine. I pinky promise.
    
    You accept, or at least tolerate that promise, not mentioning that the pinkies are supposed to touch for it to count.
    
    ... #hide lily
    
    You breath a sigh of relief as the cube finally turns the corner. 
    
    At least she got that far without incident, barring a few particularly troublesome clumps of flowers to traverse.
    
    It should be fine. She loves new challenges, and with her favorite flowers at that! I'm sure she's having the time of her life.
    
    The trail down from makeout peak leads across the bridge, past the beach and then winds back to campus.
    
    Not too dangerous, you tell yourself. You hope she finds Plume without incident.
    
    

// Plume shows up shortly later, carrying some flowers. they want to talk to lulu, but she's off. probably napping or remoting into something. They say it as stupid, and drop the flowers. but they change their mind and pick it up. just gonna go put them back at the garden.

    ~ run_command("stopsound @s music")
    p: What are you doing here?

    ~ run_command("rotate @s 73 0")
    What is Plume doing here?
    
    p pout_side: I was gonna, um. 
    
    ~ run_command("playsound modfest:music.stereo.smoking_club music @s ~ ~ ~ 1 0.9")
    
    p pout_side: I was going to talk to Lulu. Alone.
    
*   [You tell Plume she's gone] p: She's gone? Where?

    * *     We just don't know.[] We simply have no way to know. We likely will never find out, either.
    - - 
    p:  Huh? Why wouldn't we?
    
    p embarrassed_blush: ...whatever. This was a stupid idea anyways.

*   [By all means] You walk off to a nearby stand of trees to give Plume and Lulu's hollow shell some privacy.

    Not enough privacy for you not to hear and see what's happening, obviously.
    
    p pout_side: Okay, so. 
    
    p pout_side: Let me finish before you say anything.
    
    p: I've been a shithead. I know.
    
    p: I'm dropping out next week, so I'll give you some space.
    
    p embarrassed: And I know it doesn't fix anything.
    
    p embarrassed_blush: But since it's the Spring Festival and all, I dunno. Just take this--
    
    p pout_blush: Shit. You're probably off talking to Ananas or something.
    
    Their voice wavers. There are no tears, yet.
    
    p pout_side: Being an actual contributor to the team.
    
    p pout_side: ...
    
    p: Thanks for not letting me waste your time.
-
    image black 1: Plume drops the pot of lovingly kept Peace Lilies, larger and more beautiful than any in this whole field, so hard that you fears its shattering.
    
    Mercifully, it lands in a patch of mud, which in turn dirties their skates in retribution.
    
    p pissed: Shit.
    
    They quickly regret the decision, collecting the pot and inspecting it and the lilies for signs of damage.
    
    ~ run_command("tp @s 66.281 122.5 -14.599 -131.5 15.4")
    
    Then... they simply stare into the sky for a while. You can't imagine what they're thinking right now.
    
    Plume leaves without another word, sliding down the hill and skipping like a stone straight across the river back to campus. #hide plume
    
    ...
    
    I think we're thinking the same thing here, honey. #hide lulu
    
    Let's go see what happens.
    
    ~ run_command("stopsound @s music")
    ...
    

// you follow them back discretely, and watch as they carefully put the flower pot back where it was. They crouch there for a while, and you can almost see tears.

// lulu finally arrives, cube tucked discretely out of sight. plume acts annoyed, but since they're turning over a new leaf decides to entertain them.

// lulu pretends to be some student. "you new here?" "I am something like that!" great, more weirdos. At least you don't stare so much.

// lulu asks what's wrong, and plume divulges their issues. 

// much of (1) is divulged here, with lulu speaking indirectly and saying how a particular person would act.

    You follow Plume discretely, leveraging your world-class expertise in rude little spirit hunting.

    You don't need to leverage much of it at all, however. 
    
    ~ run_command("playsound modfest:music.stereo.assc_midnight music @s ~ ~ ~ 1 0.5")
    
    Plume is so occupied with their thoughts, they struggle to weave in and out of the crowd with remotely the ease you know them to be disposed of.
    
    You can't help but feel something when you watch them give up at the rear entrance to the Donut, untie their skates and walk the rest of the way up.
    
    Taking some shortcuts of your own, you reach the rooftop to find a secure lookout position just before Plume arrives. #hide image
    
    You aren't the first, however. You take care to stay out of her sight too.
    
    y neutral 5: \[-v-\] ...
    
    y smile: \[ovo\] Where are they...?
    
    p pissed 1: Who the hell are you?
    
    y content 3: \[^_^\] I am j--
    
    y flustered: *Cough, cough*.
    
    y content 4: I am just another student!
    
    p: You can't just say cough.
    
    y stare: Oh. Is that not allowed here? I am so sorry...
    
    p: Are you trying to piss me off on purpose?
    
    y content: I am not!
    
    p embarrassed: ...
    
    p: Sorry.
    
    y smile: Do not worry. I forgive you.
    
    p: You--okay.
    
    p pout_side: ...
    
    p neutral 0: Look, I'm gonna do my thing. Please just stay out of my way.
    
    y: It would be my pleasure!
    
    ...
    
    p pout_side: Are you a new student?
    
    y content: I guess you could say so, in a way!
    
    p pissed: Is that a yes or a no.
    
    y smile: No! I am not a new student. Hehe.
    
    p: Weird. Never seen you before.
    
    ...
    
    Plume finishes re-potting the lilies, then with a sigh sits down with their back to them.
    
    The lilies cast long shadows over plume and much of the garden.
    
    Peace lilies are famously challenging to cultivate outdoors. 
    
    They have very strict tolerances for temperature and moisture, and burn quite easily.
    
    A peace lily field as big and open as Lulu's is an anomaly.
    
    She told you when you first visited that the field was not always so open.
    
    Right before she came to SASH, a major fire broke out on the hill and wiped out most of the trees.
    
    While the field is a great place for her to stay out of the way while remaining within slate transmission distance, Lulu's main objective at the field is always to properly shade the peace lilies.
    
    She has spent a lot of time meticulously planning the exact places she needs to be and at what times so as to ensure the adequate hydration and lighting of every single lily in her care.
    
    To even care for a pot of them in the open, as Plume has done here, is no small feat either.
    
    These lilies in particular must have taken significant care to cultivate to such a stature.
    
    Significant time in adjusting their light and water intake several times per day.
    
    ...
    
    y content: Those are beautiful!
    
    p pout_side: I sure as hell hope so. I work my ass off for these bastards every goddamn day.
    
    y stare: Do you resent them?
    
    p: No, it's worth it.
    
    p: It would just suck if they weren't the best.
    
    y: I think you did an amazing job.
    
    p: Didn't ask.
    
    y blank: ...
    
    p pout_blush: Sorry. Thank you.
    
    ...
    
    p: What are you doing here, anyway?
    
    y: Someone said my friend would be coming up here soon. I wanted to show them something before the festival ends.
    
    p: Here? Why?
    
    y content: I do not know! 
    
    p pout_side: You and me both, lady.
    
    ...
    
    p: Are you guys close?
    
    y stare: Not as much as I we used to be...
    
    y: I am hoping when we meet we can get to talking and become super close again.
    
    p pissed: Before the festival ends? That's nuts. The sun's setting in an hour or two.
    
    y smile: I want it more than anything else in the whole world. They say that at Sakura Academy Secondary High, "anything can happen!"
    
    p smug: Yeah, I wouldn't count on that buddy. I know the guy who made that up. Real piece of work.
    
    y hide_the_pain: Miracles are real. It could hadpen.
    
    p pout_side: So you're like, not close? But you still want to put in that much effort for someone?
    
    y smile: They're not just anyone.
    
    y content: They're the only person in the world who has never been afraid of me even once!
    
    Plume shoots a side-eye at her.
    
    p pout_side: Afraid of you, squirt?
    
    They're precisely the same height, down to the millimeter.
    
    y content: It is more likely than you think!
    
    y smile: They are not very kind to me, but they are the bravest, strongest person in my entire world.
    
    p pissed: They sound like an asshole. 
    
    y: I think they have just been through a lot. They had to become strong to deal with everything they were never allowed to do.
    
    y content: But they never gave up ever. They do not back down from any challenge. 
    
    y smile: And they are the only person in my entire world who can look at me in the eyes without fear.
    
    p embarrassed: That doesn't excuse them being a shitbag.
    
    p: It sounds like they don't respect you at all and you're just idolizing them for it.
    
    y: No, I think we are getting somewhere.
    
    y: We have had some rocky times, but the two of us finally started talking again today. We are making progress!
    
    p pout_side: How is that fair to you?
    
    y smile: It is not! 
    
    y: But I will make sure after we make up that they will feel soooooo sad and apologize to me over and over.
    
    p: Dude.
    
    p: I think both of you need therapy.
    
    y smile: Hehe.
    
    y: Probably.
    
    ...
    
    y smile: Are those for anyone?
    
    p pout_side: Yeah. No. Kind of.
    
    y: Three people?
    
    p pissed: Girl.
    
    y stare: Sorry...
    
    p embarrassed_blush: No, I'm sorry. God. Why can't I just be normal?
    
    y stare: Why would you ever want to be normal? That sounds so boring.
    
    p pout_side: Not normal. Just. Not shit.
    
    p: I dunno. I was going to give these to someone, but honestly just talking to you I can see why it wasn't gonna work.
    
    p pissed: I'm so stupid. Ugh.
    
    y stare: Really? Those flowers are huuuuuge. Peace lilies are so hard to care for, so you must care about that person a lot!
    
    p: You know about these?
    
    y content: They are my absolute favorite!
    
    p pout_side: Huh. Funny.
    
    y: So, you were going to follow the Spring Festival tradition and tell them you wanted to be best friends?
    
    y blush: Uwa--um. That's super duper sweet of you.
    
    p smug: Heh. It's dumber than that.
    
    ~ run_command("stopsound @s music")
    p: I was gonna ask them out.
    ~ run_command("playsound minecraft:entity.villager.work_mason ambient @s ~ ~ ~ 1 1.5")
    
    // crash sound.
    p neutral 1: WOAH HOLD UP #hide lily
    
    p embarrassed: Are you, like okay? Why'd you just collapse like that?
    
    y misery 4: Sniff--I...
    
    ~ run_command("playsound modfest:music.stereo.lily_of_the_valley music @s ~ ~ ~ 1 0.6")
    
    y stare: Huh? How are you able to touch me?
    
    p: I'm a valley spirit. I can only move around gold and nature shit.
    
    p: You're like, made of light, right? That's super pure and natural.
    
    y stare: ...
    
    y misery: *SOB*
    
    p pout_side: Hey hey it's okay. You're not dying.
    
    y tearful: Why does it feel like I'm dying?
    
    p: That's just what feeling things feels like.
    
    p pissed: Were you born yesterday?
    
    y tearful: Today, kind of.
    
    p: You're a weird girl.
    
    y tearful: Hic--hehe. Thank you.
    
    y stare: Well... If you don't want to give the peace lilies to that person, I would be honored to take care of them for you.
    
    p smug: Little too friendly there, aren't you buddy?
    
    p smug: Look, you're my type, but it's first come first served.
    
    y stare: \[O.O\] I am your type???
    
    y content: \[^_^\] You are my type too, Plume!
    
    p: I never told you my...
    
    // new song
    ~ run_command("stopsound @s music")
    p pout_blush: Oh my god. You're fucking joking.
    
    ~ run_command("playsound modfest:music.stereo.reset music @s ~ ~ ~ 1 0.7")
    y content: \[^_^\] Hehe. Thaaaaats checkmate!!
    
    y tearful: \[u_u\] Hic--uwah. Sorry. Did I get snot on you somehow?
    
    y flustered: \[\>_\<\] Ugg's hologram is just too good!
    
    p: Hologram? Ugg? Like, Fred Flintstone's Grand Dad Ugg? 
    
    p pissed: The hell kind of side quest were you on today?
    
    y smile: \[ovo\] Hehe. It is a loooooong story.
    
    y: \[-v-\] It seems like you have been through quite the side quest as well.
    
    y blush: \[\/\/v\/\/\] Uwah, A little birdie told me you were going to admit your feelings to someone...
    
    p embarrassed_blush: She goes to another school. You wouldn't know her.
    
    y smile: \[ovo\] It is such a coincidence that she likes the same flower as me!
    
    p smug: Heh. It's a good flower.
    
    y smile: \[ovo\] Hm... one second... And my girls say someone juuuust like you showed up in front of me with flowers juuuuuust like those...
    
    p pout_blush: Shit.
    
    y smile: \[ovo\] Is there anything we have to say for ourselves?
    
    p pout_side: ...
    
    p pout_blush: Ugh. Fine. I'm sorry.
    
    y: \[-v-\] Nuh uh. Wrong answer.
    
    p pissed: What?
    
    p pout_side: I... like you?
    
    y smile: \[ovo\] You are getting warmer.
    
    p pout_blush: I... really like you...
    
    y blush: \[\/\/w\/\/\] Uwah, really??
    
    y blush: \[\/\/w\/\/\] You mean it??
    
    p embarrassed_blush: rrmfjgh
    
    Plume buries their face in Lulu's chest.
    
    y smile: \[ovo\] I will take that as a yes.
    
    y: \[-v-\] I was serious earlier, though.
    
    p pout_blush: Abou whuh--?
    
    y content: \[^_^\] I am ensuring now that we have made up that you will feel soooooo sad and apologize to me over and over.
    
    p embarrassed_blush: *SOB*
    
    y: \[-v-\] Hehehe.
    
    image black 1: Let's give them some time to sort themselves out, honey. And for Plume to apologize over and over.
    
    ~ run_command("stopsound @s music")
    image black 1: ...
    
    ~ run_command("playsound modfest:music.stereo.assc_midnight music")
    gay plulume 3: Still, in your mind's eye, you can't help but see them.
    
    p: It's so over. Everyone's gonna make fun of me. #hide plume #hide lily
    
    y: \[ovo\] Not if I can help it. #hide plume #hide lily
    
    p: What are you gonna do about it? Cry? #hide plume #hide lily
    
    y: \[ovo\] I distinctly remember you suggesting earlier today that I was built to "hurt people" #hide plume #hide lily
    
    y: \[-v-\] You are far from the only person who believes that. Perhaps I should put my reputation to some use. #hide plume #hide lily
    
    p: ...Shit. I'm really sorry, Lulu. Fuck that was stupid. #hide plume #hide lily
    
    p: I don't believe that. Nobody does. #hide plume #hide lily
    
    p: I'm such a piece of shit. Sorry again. #hide plume #hide lily
    
    y: \[ovo\] Hehe. I know. #hide plume #hide lily
    
    y: \[^_^\] But it feels really good hearing it from you. #hide plume #hide lily
    
    y: \[\>_\<\] You big bully!! #hide plume #hide lily
    
    p: Okay well if you hold it over my head like that then maybe I should take it back! #hide plume #hide lily
    
    y: \[ovo\] I am going to fix you. #hide plume #hide lily
    
    p: You can't fix me! I'm a terminal delinquent! They're about to kick me outta here forever! #hide plume #hide lily
    
    y: \[-v-\] You are joking but also I am making you catch up on homework with me. #hide plume #hide lily
    
    y: \[-v-\] I have seen your grades this semester. #hide plume #hide lily
    
    p: You--! #hide plume #hide lily
    
    p: ... #hide plume #hide lily
    
    p: <gray><i>sigh.</></> #hide plume #hide lily
    
    p: Yeah. #hide plume #hide lily
    
    ... #hide plume #hide lily
    
    p: You doing anything for the summer? #hide plume #hide lily
    
    y: \[^_^\] I was thinking of going on a cruise! #hide plume #hide lily
    
    p: What? How? #hide plume #hide lulu #hide lily
    
    y: \[-v-\] Of course not. #hide plume #hide lulu #hide lily
    
    p: Dammit. #hide plume #hide lulu #hide lily
    
    p: You're really funny. How did I forget that. #hide plume #hide lulu #hide lily
    
    y: \[ovo\] I have at least one or two redeeming qualities, if you can get past my prickly personality. #hide plume #hide lulu #hide lily
    
    p: Stop stop oh god my stomach hurts. Stop being so goddamn funny. Oh my god. #hide plume #hide lulu #hide lily
    
    p: Okay. Whew. #hide plume #hide lulu #hide lily
    
    p: No more jokes until I finish, okay? #hide plume #hide lulu #hide lily
    
    y: \[-v-\] I am holding it in with all of my might. #hide plume #hide lulu #hide lily
    
    p: Okay okay, so. How about coming back to the Valley with me? #hide plume #hide lulu #hide lily
    
    y: \[o_o\] Uwah, is that okay? Would I even fit? #hide plume #hide lulu #hide lily
    
    p: There's a ton of space. #hide plume #hide lulu #hide lily
    
    p: ...and, um. It's got a history. There's been bigger things than you in the Valley before. #hide plume #hide lulu #hide lily
    
    y: \[\>_\<\] Uwah, so scary... #hide plume #hide lulu #hide lily
    
    p: We could run around Granbury. Meet my folks. #hide plume #hide lulu #hide lily
    
    y: \[ovo\] That sounds amazing. #hide plume #hide lulu #hide lily
    
    y: \[._.\] But I am concerned for my poor lilies... #hide plume #hide lulu #hide lily
    
    p: About that. #hide plume #hide lulu #hide lily
    
    p: It might have slipped my mind. #hide plume #hide lulu #hide lily
    
    p: But I mayyybe know a spell that could bring back a lot of those trees. #hide plume #hide lulu #hide lily
    
    y: \[-v-\] ... #hide plume #hide lulu #hide lily
    
    p: I have!! Been through a lot of stress!!!! #hide plume #hide lulu #hide lily
    
    y: \[ovo\] Just kidding. Thank you sweetie. Kiss kiss. #hide plume #hide lulu #hide lily
    
    p: You can't just say--smghhgsh #hide plume #hide lulu #hide lily
    
    y: \[-v-\] Come on, you thought I was just the hand holding kind of girl? #hide plume #hide lulu #hide lily
    
    image black 1: Okay, let's give them some actual space. #hide gay 
    
    ~ run_command("tp @s -19 80 -65")
    Yes I know you were looking there's no way you imagined all that in your head.
    
    Of course you didn't.
    
    The world is stranger, more fascinating, and far more beautiful than you could have possibly imagined.
    
    
    // "Little too friendly there, aren't you? Look, you're my type, but first come first served." "I am your type?? You are my type too, plume!"
    
    
    

// (1) [ ] **ACT 4**: (requires Plume ACT 4) Plume comes to apologize. They can't bring themself to say it: "I can't, I just can't..." Lulu: "Do anything? Be anything?" Plume cries "I can't tell you I'm sorry! Why can't I make myself tell you I'm sorry? I'm such an idiot." Lulu reassures that Plume doesn't need to apologize. She loves being around Plume even when they're mean. Not to say she's okay with it, rather she knows they'll grow out of it. But what she really admires about Plume is how Plume is the only person she's ever met that can look her in the eye without fear. Plume is the bravest, strongest person in her entire world. Plume leaves, overwhelmed with emotion. She shouldn't have to put up with that.


// (3) Later. They meet. Plume realizes who it is and tries to make an excuse to leave, but Lulu says to wait there's something important she wants to show them. Holo-Lulu appears. They're taken aback, then call Lulu a shorty. They both laugh and warm up to each other. Lulu suggests they take a walk, to which Plume agrees. Lulu stops short of the door, then shyly says "Plume, could you help me out? I can't open this." Plume blushes and can't say anything, then accepts and opens the door. The ending CG depends on whether you told Lulu about the flower: If not, then she walks through the door with Plume bowing as if she's royalty. If you did, then she hugs Plume instead of walking through the door, and explains that she meant what she said: She really likes Plume, would they be okay with going out with her? You can probably imagine how Plume responds.


// "why are you up here, anyway?" "I was about to go ask someone I know if we could be friends, but now I think I might have a little crush on them!"
// "Little too friendly there, aren't you? Look, you're my type, but first come first served." "I am your type?? You are my type too, plume!"
// maybe callback to when they were a little closer?

// this one will be really long.


// what if we dated?
// heh. sure, why not. nobody else will have me. I'm probably dropping out next week.

// then we had better make it count, should we not, plume?

-> END