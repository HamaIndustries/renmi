#require act modfest:ananas_shrimple_1
#alias actor s shrimple


// (Requires Ananas + Shrimple ACT 1)

//  Shrimple looking for ingredient, but her distraction makes her miss an important meeting she promised she'd be at. has to apologize and focus on others around her.

// shrimple isn't no-nonsense per se, but she can be serious and matter of fact when the situation calls for it. This makes her an excellent leader, moreso even than ananas, but can also make her come across as short with people. The reason she's VP is actually because she doesn't want the position to take too much time away from her cooking projects (and the fact that she's always getting distracted from them).


// foraging in trash and stuff
// finds player
// asks them to help
// hides from thing
	...*rustle, rustle*...

*   "Shrimple?"
-
    s embarrassed: Gimme a min.
    
*   "Shrimple."
-   
    s embarrassed_side: Bud, I'm sorry, I gotta do this real quick.
    
*   ["What are you digging around for?"]"Why are you digging around in the garbage?"
-
    s: I'm looking for an ingredi--
    
    s embarrassed_side_blush: Er, I'm looking for a fork. People keep tossing 'em. Real silver, you know?
    
*   Really? A fork?

    s angry_blush: They're expensive!
    
    s frown_blush: SASH got 'em as a gift from a dragon a few years back. Big boy.
    
    s neutral_side: Ech-something, I think. That was right around when Ugg enrolled.
    
    * *     Doesn't Ugg have history with Ananas?
    - - 
    Deductively, either Ananas has a history with a dragon, or a dragon has a relationship with Ananas' island. Fascinating implications.
    
    s embarrassed: Could be, dunno. Sometimes the big fella's like he's in two places at once. We can't even measure his height accurately, when we're fixing to make costumes.
    
    Which would make him, in a sense, a Quantum Caveman.
    

*   Really? An ingredient[?], and from the metal and glass recycling bin.

    s embarrassed_side_blush: Naw, there's a pile of forks right at the bottom. Don't worry about me, my chitin's rock solid.
    
    * *     You don't buy it.[] Shrimp chitin is tough, but there's no way it's up there on the Mohs scale. You're calling her bluff.
    
    * *     You buy it.[] Shrimp chitin is tough, so it must be high up on the Mohs scale. Higher than glass and metal, even.
    
        Isn't that right?
    - - 
    s frown_blush: I, uh, ahem. Excuse me for one moment.
    
    She ducks into the Astraglossa booth. Extremely loud but otherwise trivial crashing sfx that can't justify an entire .ogg. She returns, but not without a fanfare of magical sparks and a suspicious amount of smoke.
    
    s smile: 'Twas a right old fashioned good time. I'm ready to hit the hay.
    
    Yes, you should be--
    
    * *   Good lordt what is happening in there?
    - - 
    s frown: Mod Garden?
    
    * *     [Mod Garden,]
    * *     [in this part of the ModFest,]
    * *     [at this time of year,]
    * *     [localized entirely behind that dumpster?]
    - - <> ...
    s embarrassed: Y-yes.
    
    * *     "May I see it?"
    - - 
    s smile: Gladly. Some time after the festival, 'course.
    
*   Really? Silver[?] sounds expensive, but you're more worried about allergic reactions.
    
    s: I know, I know, expensive stuff, but me 'n Ananas figured it was worth impressing the visitors.

    You've seen a fairy or two get really sick before. Like, dogs and grapes sick.
    
    s frown: That happens with fairies?
    
    There are quite a few of them at this event, too. Some are even participants.
    
    s frown_side: ...Chumsticks. I gotta go fix something. Pardon me.
-
    This is all a distraction. Time to state your purpose.
-   
*   "Ananas has been waiting for you."[] With all her seriousness and leadership skills, you would have expected her to be more punctual.
-
    s: Tell him I'll be right there, just have some
    
    s embarrassed_side_blush: ...forks, to return.
    
*   "The meeting started 30 minutes ago."
-
    s frown: WHAT
    
    s frown_side: Crap crap crap. Okay we gotta go. Where do we--where do we go?
    
    image black 1: You'll show her the way. #hide shrimple

    ~ run_command("tp @s 161 77 158 0 0")
    
    Ananas wanted to meet by the librateria, ever so conveniently located at the opposite side of the swarming festival grounds.
    
    You could make a detour, but there's just as likely a roadblock there. The future is unpromised. The only way is through.
    
    ...
    
    Predictable hijinks ensue, you know the routine. Mostly juvenile slapstick and obscure mod references you're better off experiencing yourself. #hide image
    
*   "You scheduled the meeting, right?["] Why did you miss it?"

    s frown_blush: <i>I</i>--
    
    She hits her inhaler, bubbles streaming behind the two of you like a jetstream.
    
    s frown_side: --was preoccupied with and important lil' something..
    
    * *     (reliable) "Being reliable is important.["] Ananas is always busy, but he took the time to meet with you."
    
        s: I'm sure he can find a job to keep himself busy.
        
        * * * "He's been waiting for you["] this entire time."
        - - -
        
        s embarrassed_side_blush: R-Really?
        
        s embarrassed: I mean, I'm the VP, he's the P. We're always drownin' in it. Well, metaphorically. He knows which way the currents flow.
        
*   (others) You remind her [of other responsibilities] that she promised Ugg that she'd find better chickensaur feed, and Plume to find better snacks for "public relations" purposes.

    s: They can hold their horses, can't they?
    
    * *     "You said you'd bring them to the meeting["] too."
    - - 
    s frown: WHAT
    
    s frown_side: Clams clams clams oysters anemones--
    
    s angry: Hell, why not the whole tide pool?
    
    You both vault over a bench cradling two lovers like dolphins over a rainbow. The world, if Shrimple were not distracted by food adventures.
    
    s: I gotta ask you a favor, bud. D'you mind grabbing me a few of those things?
    
    Lovely. It's been a minute since the last fetch quest.
    
    * *     [You note down the items she wants]...
    
    She notices the expression you're making.
    
    s embarrassed: No, no. I should do it myself. I won't look any better, five minutes less late and without the stuff I owe 'em.

    s frown_side: ...
    
    s: Hey, Bud. D'you think Ananas feels like I'm unreliable?
    
    You think for a moment.
-
	~run_command("stopsound @s")
	~run_command("playsound modfest:music.stereo.shrimp_music music @s ~ ~ ~ 0.6 0.5")
	...

*   She isn't respecting his time[], not the way he respects hers.
        
    Her projects are important, but so is the festival, and so is Ananas. 
    
    He dumps as much effort into things as her, and even goes out of his way to find resources for her projects. 
    
    Does she know what he cares about? What he spends time doing?
        
*   The problem isn't that[] she's letting the festival down by getting distracted, it's that the others have to pick up the slack.
        
    Which can be fine, it's a hobby, but if she insists on putting all these responsibilities on herself, people are counting on her to follow through. Bus factor.
-
*   (yourself) [But you keep it to yourself] But that would be better for her to learn on her own, rather than you preaching at her.
*   [And you tell her so]
- 
    s neutral_side: ...
            
    {reliable and yourself: s neutral_side: I'm sure he agrees.}
    
*   "Sorry["]."
*   (nothing) You say nothing[]{yourself:, again}.
-
    s embarrassed_side: No, {nothing:no,} {nothing and others: I know I am.|you're right. I like when you give it to me straight.}
    
    s embarrassed: I'm gonna go give him a--
    
    She skids to a stop, and takes a long drag of her inhaler. Then one more time for good measure. The bubbles float away on the breeze.
    
    A few fly into your face and pop harmlessly. She doesn't notice.
    
    s: No, tell the Prez he can go on his way, it ain't important what I needed. I can sort it out myself.
    
    {others: s: I'll grab the things for the crew, too. Sorry to take up your time, bud.}
    
*   You can help[].

    s smile: Naw, I gotta do it myself. Shouldn't take two shakes of the tail.
    
    s angry_blush: Dunno why I didn't get around to it sooner. No excuses.

*   You wish her luck[] on her journey.
-
    s smile_blush: Thanks for slapping some sense into me, bud.
    
    She nearly walks into a lamp as she turns, but her thoughts are at least not so occupied that she can't avoid injury.
    
    You figure it's safe to let her be, for now.
    
    After all, honey, we still have a lot of commitments to fulfill ourselves, don't we?
    
    You have bigger fish to fry.

-> END





