#require act modfest:lulu_1
#require act modfest:shrimple_1
#require act modfest:barebones_1
#alias actor l lulu
#alias actor b barebones
#alias actor s shrimple


//  Lulu asks the player if they've seen Barebones, she needs him for something. The player checks various places, then hears voices on the other side of a fence: they're all alone, nobody saw them coming. Shrimple's glad barebones is here, she was waiting all day. You go back and tell Lulu to gossip, and she wonders if they're secretly dating.


    You're shivering. It's cold? Hardly.
    
    No, the world's shaking. The park is shaking. You trace the earth's movement to, in retrospect, the most obvious culprit. 
    
    As with any worthwhile investigation, we have the next question: motive?

*   (dancing) [She must be dancing] You recall the dance club captain's pitiful attempt to pursuade some extra booth space out of you.

    She was impressively suave, for what you thought an otherwise silent art. You were told at length of the committee member's appreciation for the ancient practice, and moreso their deep fondness for rhythm games.
    
    All of the committee except, conspicuously, Lulu.
    
    Inductively, so to speak, there are large unexplained bullet holes in the ceiling. Lulu must like to dance.

    * *     Approach[ her]ing her is the best course of action. If there's a party happening, you want in. 
    
        And if there is no party left, you will at least be present to pick up the pieces.

*   She [must be scared] sounds anxious, if the frantic thumps and scraping are anything to go by.

    You, you think, would be nearly dead with terror if you did not know that these nightmarish noises are simply the sounds that slightly concerned normal girls make.
    
    * *     Approach[ her]ing her is the best course of action. Something has Lulu worried. 
    
        Armisteel, you are informed, is completely indestructible. If the poor girl is worried, then someone who is not her must be the one in danger.

-   l neutral 5: \[>.<\] Barebones? Barebones, where are you?

    {dancing: Missed the mark on that one.}
    
    l: \[-n-\] Now where in the world could he be?

    ~ run_command("playsound renmi_springfest:lulu.boot")
    l: \[ovo\] Oh, hello <PLAYER_NAME>!
    
    l: \[-v-\] Sorry to bother you, but have you seen Barebones anywhere? I need to ask him for some help with something.
    
    l: \[<.<\] I did not step on him, did I? Uwah, please allow me to retrace my steps...!
    
*   (help)"{busy:But }I'll help[!"] you look for him!"

    l: \[^-^\] Really? You are too kind, <PLAYER_NAME>.

*   (busy) "I'm kind of busy[..."]," you begin, your eyes making contact with a visitor who is sheet white with terror. 

    They clutch their child, both of them some type of animal that lies halfway between a shark and a dog. Wherever these creatures are from, that place does not possess a Lulu.
    
    -> help

-   But how does one track an aspiring professional thief? #hide lulu

	~ run_command("stopsound @s")
	~ run_command("playsound modfest:music.stereo.shrine music @s ~ ~ ~ 0.5")

-   (search) {!...|Still no sign of Barebones.|Now, where did he get off to?|Is Barebones hiding on purpose?} #hide lulu #hide delta #blur true
*   [Check the garden] The garden's a good as place as any.

	image black 1: Provided the rabid dog sounds are not, as you fear, a rabid dog.

	~ run_command("tp @s 197 77 180 -93 0")

	~run_command("playsound minecraft:entity.wolf.growl hostile")

    delta adrenaline: Hrrrrrrnngghhhhh #hide image

    Nevermind. Professor Delta is doing the thing where he tries to pick up the heaviest tool he can with his teeth. 
    
    Ananas warned you not to linger in this situation, or you'll be roped into hours of friendly friendly antics and hijinks. Frivolous animal.
    
    * *      You [leave] 
    
        - - -   (leave_garden) <> duck behind a bush before you're spotted, and exit by window.
        
    * *     (berry_snack) You grab a [snack] random berry for a snack, -> leave_garden
    
    - - -> search

*   [Check the rooftop] The roof? What Barebones knows is that you are aware of of his home town. 

    What Barebones doesn't know is that you are much more intimately acquainted with his home than you told him.

    Quick thinking on your part, to be frank. He'd have a second death if it came out that nobody talks like that where he comes from. 
    
    He just really likes movies.
    
    image black 1: So, Mission Impossible?

    ~ run_command("tp @s 95.138 118.5 158.110 134 8.8")
    
    ...
    
    Not quite. Nothing up here, but the movie angle might have some merit. Let's tuck that idea in your back pocket for now. #hide image
    ->search

*   [Check Lulu's footsteps] Did Lulu really step on him again?

    image black 1: Lulu seems to think so.

    ~ run_command("tp @s 225 78 141 71 41.5")

    The poor girl is closely inspecting every footstep she made in the last hour.

    ~ run_command("playsound renmi_springfest:lulu.step ambient @s ~ ~ ~")

    ~ run_command("schedule command 5t playsound renmi_springfest:lulu.step ambient")

    ~ run_command("schedule command 10t playsound renmi_springfest:lulu.step ambient")
    
    So closely, in fact, that she doesn't seem to notice about eight new holes created for each one she inspects. #hide image
    
    - -     (stepping)
    * *     (odds) "What are the odds[?"] of stepping on him again?
    
            l neutral 5: \[>.>\] ...
            
            l: \[-v-\] I ran the numbers a few minutes ago. We should {skeleton: look a little longer|take a look}, just to be certain. 
            
            {skeleton: There is absolutely no way. How does that even happen.}
            
            {skeleton: Your suspicions turn out to be correct, however. You try your best to forget the about the other skeleton. The one you were not looking for.}
            -> stepping
            

    * *     (skeleton) "Does this look like him?"[] Wait, no. That's a skeleton. That's a regular human skeleton buried next to the football field of the school you transferred into today. #blur false
    
            l neutral 5: \[ovo\] Did you find him, <PLAYER_NAME>? My sensors indicate that you have an elevated heart rate.
            
            You are so shaken that the innocently horrifying implications of that statement don't even register.  
            
            Your theories as to why she can monitor heart rates must wait for the nightmares that will surely visit you tonight.
            
            She lumbers over, a spring in her step. Quickly, you kick a mound of displaced dirt into the hole before she can see.
        
            * * *   "I found my watch["]."
            * * *   "I tripped["]."
            
            - - -   l: \[-v-\] Aha, I see. Your heart rate was elevated because you were preparing yourself to lie!
            
            * * *   "Haha, you got me["]." You told the truth this time, so the first one doesn't count. 
            
                    l: \[^-^\] Haha! I did get you, in fact!
                    
                    ...
                    
                    l: \[ovo\] So, where should we look next?
            
            - - -   This girl will be the death of you, and it will be entirely your own fault. {not odds:That said, there's no way she stepped on two different skeletons in less than an hour.}
                    -> stepping
        
    * * -> search

*   [Check the suspiciously Barebones-shaped bush] image black 1: You check the suspiciously Barebones-shaped bush.

	~ run_command("tp @s 210.367 78 158.181 -1.1 1.1")

	No dice, but you wonder if they might be related. #blur false #hide image

    l neutral 5: \[^-^\] Do you like it? #hide image
    
    l: \[-v-\] I was looking for Barebones in order to show him my work.
        
    * *     "The resemblance is uncanny."
    * *     "You sure this isn't him?"
    - -     
    
    l: \[\/\/v\/\/\] How kind of you to say.
    
    She makes a strange sound, and her eyeports flash briefly.
    
    l: \[o_o\] Uwah, it looks like I missed a spot.

    Another hatch pops open with a jarring clang, and a horrific appendage constructed of saws and claws extends to adjust her art.
    
    l: \[-v-\] Much better.
    
    You have seen everything. It is now time to leave. #hide lulu
    ->search
    
*   ->
    
-   <>image black 1: Lulu wanders off, leaving you with your thoughts. #hide lulu

	~ run_command("tp @s 338.421 79 54 -173.8 -3.5")

    You recall that Shrimple mentioned she and Barebones are roommates here on campus. She might have a lead on his whereabouts--

    Without warning, hushed voices from the other side of the fence. #hide image
    
    Students aren't meant to be off campus during the day without permission. What's going on here? 
    
    // shrimple introduced barebones to the committee to be the treasurer. She thinks he knows a lot about money since he talks about money all the time. She is also not very perceptive of others.
    
*   You approach the fence[], each step taken with care so as to conceal your presence. 

-   A sharp inhale startles you. 

	~ run_command("stopsound @s")
	~ run_command("playsound modfest:music.stereo.momentum music @s")
    
    Your fears that you have been discovered are assuaged by the small bubbles rising from behind the fence. One conspirator has been identified.
    
    b frown_sweating: Yous came alone, yeah? Ain't no one else here?
    
    s smile_side: You and me, 'bones. Not a soul around.
    
    b: Lovely, lovely.
    
    s smile_blush: I've been waiting all day to see you, you know? Been itching in my boots for this.
    
    b aura: Can't say I'm any different, sweetheart. Always a pleasure to meet under these circumstances.
    
    ?????
    
    I think it would be prudent to leave them to their own devices, honey. Everyone deserves a little privacy. #hide shrimple #hide barebones
    
*   Reluctantly, you leave[]. Don't fret, you will surely get all the juicy details from Barebones later... for a price.
*   With relief, you leave[], trying your best to put this encounter behind you. 

-   <> Something still lingers in your mind about this whole exchange, though.
    
    image black 1: You find Lulu continuing with her footprint inspection. She's figured out how to avoid adding more, but she's quickly running out of legs to stand on.
    
    ~ run_command("tp @s 207.448 78 158.769 -64.1 3.9")

    ~ run_command("playsound renmi_springfest:lulu.step ambient @s ~ ~ ~")

    ~ run_command("schedule command 10t playsound renmi_springfest:lulu.step ambient")

    You should stop her, and quickly; It is unclear if her gyros are coded for bipedal movement.
    
    l: \[OvO\] <PLAYER_NAME>! I was about to start looking for you, too. #hide image

    ~ run_command("playsound renmi_springfest:lulu.step ambient @s ~ ~ ~")

    Shudder.
    
    l: \[ovo\] Did you find Barebones?
    
*   "Did you hear Barebones and Shrimple are dating?"
    
    l: \[O.O\] Eh??? Did I what? What do you mean?
    
    You <>

*   "I have some wild tea to spill[."], sister."
    
    l: \[._.\] Why would you do that on purpose? Plume already knocked over a big tub of molasses,
    
    ~ run_command("playsound renmi_springfest:lulu.steam ambient @s ~ ~ ~ 0.8 2")

    l: \[>.<\] and my liquid filters got all sticky when I cleaned it up!
    
    You explain the metaphor, then <>
    
-   relay the scenario.
    
    l: \[-v-\] Just the two of them, alone,
    
    l: \[ovo\] and they could not wait to see each other.
    
-   l: \[\/\/v\/\/\] Kya! How scandalous! Who knew there was such a connection between the two?

    l: \[^-^\] Uwah, this is just like those stories...

    ~ run_command("playsound renmi_springfest:lulu.ambient ambient @s ~ ~ ~ 0.5 2")
    
    l: \[\/\/v\/\/\] The stories of forbidden love...! So romantic... I can just feel my heart racing...!
    
    The heat you feel must be from her blushing. The heat must not be from her fusion reactor shield leaking. It absolutely must not be.
    
    l: \[^v^\] Thank you very much for letting me know, <PLAYER_NAME>. I must be off now.
    
*   "What about Barebone's [sculpture?"] shrubbery?"

-   l: \[ovo\] Probabilistically, Shrimple and Barebones must certainly be on a secret date.

    l: \[-v-\] It would be improper to get in the way of true love, correct? I can simply ask for him later.

    l: \[^v^\] We should give those lovebirds some space!

    ~ run_command("playsound renmi_springfest:lulu.step ambient")

    ~ run_command("schedule command 20t playsound renmi_springfest:lulu.step ambient")

    ~ run_command("schedule command 40t playsound renmi_springfest:lulu.step ambient")
    
    And so she went, metallic clangs now echoing with just a hint of enthusiasm.
    
    It's a good thing she isn't a gossip... isn't she?
    -> END
    
