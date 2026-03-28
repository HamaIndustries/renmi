-> act_1

VAR PLAYER_NAME = "PLAYER_NAME"


=== act_1 ===
    Ready?
//  Lulu asks the player if they've seen Barebones, she needs him for something. The player checks various places, then hears voices on the other side of a fence: they're all alone, nobody saw them coming. Shrimple's glad barebones is here, she was waiting all day. You go back and tell Lulu to gossip, and she wonders if they're secretly dating.

*   Let's dance.

-   As you walk down towards the park, you can't help but notice a certain machine off in the distance. The ground's relentless shaking sends shivers down your spine.

*   (dancing) Lulu must be dancing[]. I wonder what could possibly have her in such a good mood?
    **   [Approach her] If there's a party happening, you want in!
    
*   Is Lulu okay?[] By the sounds of her movements, she's probably feeling a little frantic right now.
    **   [Approach her] Something has her worried, and you can't help coming up to her to see what's wrong.

-   l: \[>.<\] Barebones? Barebones, where are you?

    {dancing: Nevermind.}
    
    l: \[-n-\] Oh dear, I cannot seem to find him anywhere.

    l: \[ovo\] Oh, hello {PLAYER_NAME}! Sorry to bother you, but did you see Barebones anywhere? I need to ask him for some help with something...
    
    l: \[<.<\] I... stepped on him again, did I? Oh dear, let me retrace my steps...!

-   (help)
*   ["I'll help!"] "I can look for him!"

    l: \[^-^\] Really? Oh, thank you {PLAYER_NAME}! That would be such a good help.

*   [I'm kind of busy...] You're kind of busy... but who could leave such a sweet girl hanging? The illusion of free choice compels you into helping Lulu regardless.
    -> help

-   But... where could Barebones possibly be?

-   (search)
    {search == 5: ->endsearch}
*   [Check the garden]The garden's as good of a place as any, right?
    Nevermind. There's only professor Delta here, watching over his beloved plants. You quickly head out, but not before picking a berry from one of the bushes.
    ->search

*   [Check the rooftop]I bet he's doing something on the rooftop!
    ...Or so you thought. He's nowhere to be found.
    ->search

*   [Check Lulu's footsteps]Maybe Lulu really did step on him?
    l: \[O.O\] Oh, are you rechecking my footsteps, {PLAYER_NAME}?
    l: \[>_<\] I checked twice already, and I still could not see him in any of my footsteps. I think he may be elsewhere.
    l: \[>.>\] Although, maybe I should check a third time? Just in case?
    You decide to leave her to it. Maybe he's somewhere else.
    ->search

*   [Check the suspiciously Barebones-shaped bush]Nope. It's just a normal bush.
    ->search

-   (endsearch)
    Suddenly, you realised you could hear some hushed voices nearby.
    ...Voices, along with the sight of some bubbles in the air.
*   [Investigate] As you approach the fence, you can clearly tell who these voices belong to.
    b: Yous alone, yea? Ain't nobody else here?
    s: Just you and me, 'Bones. Don't think anyone saw me comin'.
    b: Good, good.
    s: Oh, Barebones, I'm so glad you're here, I was waiting all day just for this...!
    What?
-   Um... maybe those two need some alone time. They clearly wanted that, and it'd be rude to keep eavesdropping.
*   [Return to Lulu]You take several quiet steps back so as to not be heard, then quickly jog back over to Lulu. The poor girl's still quite frazzled, but luckily you know where Barebones is now.
    "Lulu!"
-   l: \[OvO\] Ah! {PLAYER_NAME}! Did you find Barebones?
*   "Did you know that Barebones and Shrimple are dating??"
    l: \[O.O\] Eh???? Did I what? What do you mean??
    "Yeah, I saw them sneaking together by the fence," you say, as you gesture vaguely in the direction you came from. "They wanted to be alone, just the two of them... and Shrimple was talking about how she was waiting all day just to meet up!"
    ** "She was talking about how much she couldn't wait to see him!"

*   "Girl, I have some crazy tea to spill!"
    l: \[>_<\] Uwahh!!! What do you have to share? And, um, is Barebones okay?
    "Oh, right. He's fine, but you'll never believe what I just saw!"
    l: \[^v^\] Tell me! I need to know!!
    "So, get this. I saw Barebones behind that fence right there, right?" You gesture vaguely in that direction. "He was waiting for someone, hoping to meet them alone... you know who that person is...?"
    l: \[>_<\] Oh, I cannot bear it at all! You must tell me!
    **   "It was Shrimple!["] She walked over all secretively and started talking about how much she couldn't wait to see him! And, like, oh my god. She was totally waiting all day for this moment!!"

*   "Yeah, he's fine!"
    l: \[^-^\] Oh, good!
    l: \[>.>\] But, umm... Where is he?
    "Oh, right. So I saw Barebones behind that fence right there," you gesture vaguely in that direction. "...Although, I think he'd like some alone time, if you get what I mean."
    l: \[O.O\] Eh??? What do you mean?
    ** "So, Barebones was waiting to meet Shrimple...["] and get this: they were trying to meet up alone, and Shrimple was talking about how she was waiting all day to see him!"
    
-   l: \[\/\/v\/\/\] Kyahhh! How scandalous! Who knew there was such a connection between the two?
    l: \[^-^\] Oh, goodness! This is just like those stories...
    l: \[\/\/v\/\/\] The stories of forbidden love...! So romantic... I can just feel my heart beating...!
    l: \[^v^\] Thank you very much for letting me know, {PLAYER_NAME}! I must be off now!
    *   "Wait, didn't you need Barebones for something?"
    l: \[ovo\] Well, based on what you told me, it certainly must be true... Shrimple and Barebones must be going on a secret date! I cannot allow myself to get in the way of that, now, can I?
    l: \[^v^\] I can just ask for him another time. We should give those lovebirds some space!
    And so she went, her metallic clangs echoing with a bit more pep in her step. Surely this gossip won't get too out of hand, now, will it...?
    -> END
