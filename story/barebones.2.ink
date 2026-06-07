#require act modfest:barebones_plume_1
#alias actor b barebones

// ACT 2 (requires barebones + plume ACT 1): "If it isn't my esteemed colleague." You're here to get your wallet. What wallet? Tell you what. he's got a deal coming up, needs your help to sell a fake id to someone. He'll help look for your wallet if you deliver the goods for him. You look at the id. its yours. whoopsie.

    b: Well, well. If it isn't my esteemed colleague.
    
*   Ever so esteemed[] is he, that you came straight over to him as soon as you could spare the time.

    b aura: I'm honored, truly. So how may I serve my distinguished coworker today?
    
    He's pushing it. <>

*   Sure, esteemed[] as far as you can throw Ugg.

    b frown_sweating: Yous breaking my heart here, pal. I thought we was thin as thieves.
    
    You don't think he said it that way on purpose.
-
    So, where's your wallet?
    
    b frown_blushing_sweating: What wallet? Yous calling little old me a thief?
    
*   He said it[.], not you.
-
    b: Yous a funny one. A real prankster.
    
    b: Say, while yous here, mind doing me a solid?
    
*   You [can do him one better] could call Lulu over and set up a picnic together, if Barebones wants.

    What sounds like a xylophone softly plays from somewhere in the vicinity.
    
    b frown_blush: That, that won't be necessary.
    
    b aura: Hows about we settle this civilized style? Real gentle bones-like.
    
    You're a little curious.

*   Let's humor him[]. Surely, he won't pull one over on you this time. Like they say: Fool me twice, shame on, can't get fooled again.

    b: Now we's cooking. 
-    
    b: Yous hear about those "real IDs" the big guys're flashing around, yeah?
    
    b: Let's just say I got a <i>very</> real ID right here I need brought over to a friend.
    
*   He wants you to mule[?] over a fake ID?

    b frown: No, not mule, wouldn't ask yous so low a thing.
    
    b aura: We's gonna <i>sell</> a fake, I mean real ID.
    
*   What will you get[?] out of it?

-
    b: I'll poke around for your thing if yous run it over for me.
    
    image black 1: This will take a lot less time than coaxing him into a snafu. Let's get it over with. #hide barebones
    
    ~ run_command("tp @s -124.726 105 172.099 -101 6.6")
    ~ run_command("stopsound @s")
    
    ...
    
    //
    You're here. Where's the buyer? #hide image
    
    ~ run_command("playsound modfest:music.stereo.basil")
    
    An ambient teru teru bozu slouches against a nearby tree. It must be on break.
    
    The little things are unpredictable, despite their rather uniform appearance. Their personalities encompass more archetypes than even the range you've seen spanned by the visitors.
    
    With any luck, this is not a tattle-type bozu. Not that you're worried either way.
    
    If it was, you doubt anyone could parse one of its obtuse poems to meaningfully make a dent in your alibi.
    
    <gray>the courier comes. #blur false
    
    <gray>it bears a promise of change,
    
    <gray>of evolution.
    
    It speaks in the mood characteristic of the Academy's staff.
    
    When you have no lungs, you shape the wind as it blows through, and whisper your poem into its passing.
    
    <gray>I endure a, a...
*   lifetime of subservience
*   an unfathomable grief
*   sadness, again and again
*   gladness, to share with a friend
*   madness. forever. and then...
-

    <>?
    
    <gray>i meant to say that.
    
*   You quote Barebones' price.

    <gray>my mask collection...
    
    <gray>shifting ephemeral form.
    
    <gray>i can go drink now
    
    ...
    
    They can be underage?
    
    You hesitate.

*   You skim a bit off the top.

    <gray> this a freakin' joke?
    
    <gray> i was not born yesterday
    
    <gray> i see through your game
    
    You tried.
-
    <gray> okay give it now
    <gray> i am a busy bozu
    <gray> i'm tired of you
    
    That's it.
    
*   [that will be enough] "that will be enough"
*   [time's wasted on you] "time's wasted on you"
*   [now listen, dumbass:] "now listen, dumbass:"
-
*   [no words will be sufficient] "no words will be sufficient"
*   [i have had it up to here] "i have had it up to here"
*   [cherry petals keep falling] "cherry petals keep falling"
-
*   [with all this bullshit] "with all this bullshit"
*   [get out of my face] "get out of my face"
*   [go walk off a bridge] "go walk off a bridge"
-
    ...
    
    It's speechless. #blur true
    
    image black 1: You leave it to reconsider its values.
    
    //
    What exactly <i>is</> this ID, anyway? It's not local.
    
    In fact, you're so familiar with this design, it hadn't registered that this is an ID from where <i>you're</> from.
    
*   The photo[?] comes off easily. It's exactly who you thought it was. 
-
    Not a bad photo, you're proud to say. That's rare.
    
    ~ run_command("tp @s 77.492 92.00 -66.03")
    
    Now it's time to go pick a bone.

    b: Look who's back! #hide image
    
    b: 'preciate it, pal. Sad to say I can't make it up to you.
    
    How unforseen.
    
    b frown_sweating: Hey, I don't appreciate that look. I'm sticking my neckbone out for you, calling in all sorts of favors.
    
    b frown: Yous wallet must be out of the country by now. Shame about the ID, too. Least yous cans get a new one from the school.
    
-   (this_one)
*   You let him continue.[]

    b: What they don't tell yous is they take the pics bad on purpose. Keeps the right customers coming back for the perfect shot.
    
    * *     "Go on["]."
    
    b aura: I know a guy, though. I'll set yous up with a professional. I'll even offer a discount for my arranging it.
    
    b: But I'll keep an ear to the ground for your old one anyways.
    -> this_one
    
*   This one?[]
-
    ~ run_command("playsound minecraft:entity.skeleton.hurt")
    
    b googly: ...
    
    b blushing_sweating: Would yous believe me if I said I ain't the foggiest how it got there?
    
*   And you have a bridge to sell him[]. It's right there out in front of the school. 
-
    Lulu crosses it every day, even, so the two of them will have a chance to bond every morning.
    
    b aura: Wow, would yous look at that. It was in my back pocket the whole time.
    
    b sweating: The kid musta reverse pickpocketed me. That's a trend now, I hear.
    
    b frown: I'll give 'em an earful when I see them.
    
*   [You will remember this] * <PLAYER_NAME> will remember this.
-
    b frown_sweating: Hey hey don't do that its scary.
    
    b frown_sweating: I don't like when people do that.

    Convinced his bones are suitably rattled, you waltz away the victor.
    
    He can't keep doing this to people. You're going to do something about it.
    








    
    -> END
