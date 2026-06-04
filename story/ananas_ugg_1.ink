#require act modfest:ananas_shrimple_1
#alias actor u ugg
#alias actor c chai
#alias actor a ananas

// (requires ananas + shrimple 1) Ugg is starry eyed seeing how far his friend has come. He talks to you a bit about them growing up. Ugg worries that he isn't as cool since ananas has lots of friends and is good at sports and gets good grades. Then Ananas invites him to join the current activity.

...

*   "Ugg?"

    u: Mm.
    
*   "Ugg."
-
    u worried: Uh-- Oh!! Ugg big sorry.
    
    He lifts himself from your flattened corpse.
    
    As you peel yourself from the bench, your next line is interrupted by the shockwaves of an atomic gigadunk.

    ~ run_command("stopsound @s")
    ~ run_command("playsound modfest:music.stereo.athletics music @s ~ ~ ~ 0.3 1")
    
    a neutral 0: That's right, 99-0! How's that humble pie taste?
    
    ...
    
    The gym is otherwise completely empty. You both clap anyway.
    
    By some lucky turn of fate your pit stop in the gym with Ugg to cool off intersected with Ananas getting some hoops in before going back to work.
    
    You'd both prepared to leave, but Ananas insisted you could stick around and watch. Like, <i>strongly</> insisted.

    He carries on with no sense of shame or self awareness.
    
-   (join)
*   "Has he always been like this?"

    u: Ugg not remember. So probably?

*   "You should join him["]," you suggest. Get the ball rolling.

    He shifts uncomfortably, bringing a meaty hand to a hambone bicep.
    
    Is he bad at the game?
    
    u grin: Ugg destroy ball sometimes. Not on purpose.
    
    That <i>is</> bad.
-
    // show don't tell
    
    u: Ananas always good at sport. 
    
    u smile: He captain of Ugg old school.
    
*   "At which game?"

    - - (all_game) u: All game.
    
    * *    Damn.
    * *   Even arm wrestling?
    -> all_game

*   "Did you play with him?"

    u: Ugg play with Ananas. Then Ugg crush ball.
    
    - - (all_ball) u: All ball.
    
    * *   Damn.
    * *   All of them?[] Like, just for the club, or...?
    -> all_ball
-

    u grin: Ananas good at everything. He salutatorian.
    
*   Not valedictorian?
-
    u: Shrimple valedictorian.

    c happy 4: You should go join him, you two!

    ~ run_command("playsound minecraft:entity.player.attack.strong ambient @s ~ ~ ~ 1 0.5")
    
    The professor comes up from behind and slaps you two on the back supportively.
    
    Supportively, but only in intent. She nearly knocks the wind out of both you <i>and</> Ugg. 
    
    Those swimming muscles are no joke. There might be some merit in joining that club.
    
*   (jump) You [will] swing over the stands into the arena.

    So quickly did you gather your resolve, in fact, you neglected to consider the distance between the stands and the floor.

    Death, as it has so many times today, approaches.

    ~ run_command("playsound minecraft:entity.player.attack.sweep ambient @s ~ ~ ~ 1 0.5")
    
    u worried: <PLAYER_NAME>-- phew.
    
    c frown: Holy cow, Ugg. Nice save.

    You'd fallen not two meters, and he caught you by frame 2. An apex predator.
    
    Ugg cradles you in his arms, while he himself hangs by one arm from the stands. It is not unlike a great ape carrying his young amongst the trees.
    
    * *     You blush[]. You haven't been in such close proximity to the man before. He smells lovely, like a mixture of cocoa butter and petrichor.
    
            u worried_blush: Ugg not mean to hurt <PLAYER_NAME>. Ugg very sorry.
    
            Does he think you're red with anger?
            
            * * *   You play it cool[]. You were just surprised, is all. It's not like you were reading into it or anything. Baka.
            
                    u: Ugg not know that word but Ugg happy <PLAYER_NAME> not hurt.
                    
            * * *   You play it [cute] in the manner befitting a school sound novel protagonist. Your bashfully batting eyes read novels of their own to your savior.
            
                    u grin_blush: Ugg th, Ugg glad <PLAYER_NAME> okay.
            - - -
            u: Ugg think we should go down. 
                
            You consent, but not without a lingering petulance. He didn't take it as a joke, but neither did he show any aversion...
                
            Which could mean nothing.

            c:
    
    * *     You thank him[] like a normal person.
    
            He carefully lowers the two of you to the ground, then stands you up straight and inspects you for injury.
            
            u smile: Ugg only catch <PLAYER_NAME>. <PLAYER_NAME> is ok.
            
            c smirk: What are you talking about? 

*  (bribe) You aren't sure[].

    Ugg grunts affirmatively.

    c frown: Aw, why not? 

    * *     He's having [fun on his own] plenty of fun on his own down there, doing insane dunks over and over.
    
            It would be rude to insinuate yourself into his personal time.
            
    * *     He's too good[]. You've never seen anyone dunk like that in your life. He would flat out demolish you. Maybe not Ugg.
    
            u: Ananas dunk over and over on Ugg for sure.
    - - 
    c smirk:  What if I told you... I figured out your favorite thing? 
    
    * *     ...
    --
    c smirk_smile: And what if I told you I know where the Headmaster keeps it?
    --
    * *     ...
    --
    That's incredibly nonspecific. Does she think you're a child?
    
    She waits expectantly.
    
    * *     ...
    --
    Honey, don't. You're incorruptible. There's no way the Headmaster keeps that somewhere.
    
    Have some self respect. Don't.
    
    * * [You jump into the arena] -> jump
-
    <> You're a hero, Ugg!
            
    u worried: Ugg only do what Ugg supposed to. Not special.
    
    a neutral 1: You kidding, Ugg? Here I was about to write <PLAYER_NAME>'s obituary!
    
*   Was there anything good in it?
    
    a embarrassed: Just some crosswords and comics. 
    
    a: Nobody reads the newspapers for anything else, let's be honest.
    
*   That was fast.
    
    a: Insurance moves faster.
    
    a sad: As the president, one must be prepared for every eventuality.
    
    Okay...?
-
    a embarrassed: That settles it. You and me, big guy. You can't tell me you can't handle the heat after that insane display.
    
    Ugg the anxious caveman can't bear to make eye contact.
    
*   "Go for it[!"], Ugg!"

    u worried: Mmm. Okay.
    
    u grin_blush: Ugg try <i>one</> dunk.
    
    a: Wouldn't ask for any more, big guy.
    
    And yet, Ugg offers a great many more.
    
    While the two of you failed in your mission to relax, you can't say you have nothing to show for it.
    
    c: Hey, guys! I know we're having fun, but watch the--

    ~ run_command("playsound minecraft:item.mace.smash_air ambient @s ~ ~ ~ 1 0.5")
    
    c frown: ...
    
    c smirk: Well. I'm going to go revise the athletics budget.

*   "Do it in your own time[."], Ugg." We needn't force him into things. But he does deserve to feel capable, some day.

    Ananas nods understandingly, and returns to his solo game. 
    
    Ugg, meanwhile, sits down on a bench to let his heart relax after all the excitement.
    
    You can't help but notice the admiration with which he observes his childhood friend. #hide ugg #hide ananas
    
    You think that it would be nice if, someday, he could experience that gaze coming from Ananas.
    
    c: That was really mature of you.
    
    c confident: Remind me, what was your role on the council?
    
    * *     Chief ice cream taste tester[].
    * *     Chief teru teru cuddler[].
    * *     Chief graffiti vandal[].
    * *     Meower-in-chief[].
    * *     Hotdog herder[].
    - -
    c smirk: Pff. Committee joker, more like.
    
    c smirk_smile: Thanks for that. Have fun with these two.
    
    And for a while longer, you do.
-


-> END