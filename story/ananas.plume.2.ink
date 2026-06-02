#require act modfest:ananas_plume_1
#alias actor p plume
#alias actor a ananas


    That's funny, one of the mods here is missing a texture. They weren't kidding that this festival has zero quality standards.


	~ run_command("tp @s 83.364 82 -76.491 19 6")
    Erisatis: Hey, you! Yeah, you! #blur false
    
    Nope, fell for it again. I'll add "cat with missing textures" to the studentdex for you.

    Erisatis: Um... would you be possibly interested in taking an introduction class on metallurgy and forging?
    
    Erisatis: You wouldn't have to take this course permanently, it's fine if you just try the one class...
    
-   (busy) {|{busy <= 10:You can come back later, or proceed when you're ready. They'll be here all day.| Stop that. You're breaking their heart. Be kind. Just close the dialogue and leave.}}

*   You're busy[], apparently. So, why exactly did you come here? Did you forget something?
    
    Erisatis: Oh... I understand...
    
    They slouch with dejection, texture flickering briefly. You should update your drivers, later, if you're running any.
    
    Erisatis: ...it's not like we'd be making large weapons and cool tools or anything...
    -> busy
    
+   {busy > 1 and busy < 10} Still busy[].

    // DO NOT EVER DO WHAT I AM ABOUT TO DO

    Erisatis: Aw \:
    ->frown(->busy, busy-2)
    
*   {busy >= 10} [Still busy]
-> busy
    
    
*   Let's [do it] make something dangerous!
-
	~ run_command("tp @s 83.364 82 -76.491 19 6")
    Erisatis: Really? That's great! #blur false
    
    Erisatis: Wait, dangerous?
    
    Erisatis: Let's uh, not get ahead of ourselves. It works like this...
    
    The ensuing explanation is a whirlwind of metallic terminology and erratic flailing. 

    ~run_command("stopsound @s music")
    ~run_command("playsound modfest:music.stereo.i_wannanana music")
    
    a neutral 5: Hello Erisatis! Offering students large weapons, I see!
    
    Erisatis: Ah! Ananas! Of... of course not, Mr. President! I was just detailing what the course may involve!
    
    a sad: Shame. I was looking for a little something to get a edge on old Plume. Those skates are just too flashy!
    
    a embarrassed: Say, <PLAYER_NAME>, you seen anything around here like that that fits the bill?

*   (sword) The sword
*   (scythe) The scythe
*   (glaive) The glaive
*   (hammer) The sledgehammer
*   (tuning) The tuning fork
-
    <> on the wall is sufficiently flashy for a flashy guy like Ananas. Plume won't see it coming.

    p pissed 1: What's that about my skates?

    Erisatis: Oh, hi, Plume! I was just-

    p pout_side: Silence, nerd. What were you saying about my skates, Ananas?

    a: How convenient! I was just asking our friend here about which weapon would be most appropriate for me to best demonstrate my legendary <>
    {
    - sword: sword
    - scythe: scythe
    - glaive: glaive
    - hammer: sledgehammer
    - tuning: tuning fork
    }
    <>smanship. 
    
    {hammer or tuning: a: What a mouthful.}
    
    Didn't he just say which weapon that would be?
    
* You stay silent.

-> argumentative

*   "Are they always like this?"

    Erisatis: Not at all.
    
    Erisatis: Only when they're competing.
    
    Erisatis: Or trying to annoy each other.
    
    Erisatis: Or when they make eye contact.
    
    Erisatis: ...Okay you have a point.

-> argumentative


= frown (-> back, amount)

<> (

{ amount > 0:
    ->frown(back, amount-1)
- else:
    -> back
}


=== argumentative ===
    p smug: I don't even need an S.V. to show up your veggietales ass with a sword.
    
    a embarrassed: Try me. Eri, hook me up! Scythe please!

    Erisatis: Really? It's quite sharp.

    a neutral 4: What do I look like, a fruit? I got a handle on it.
    
    Yes he does, and you think he very much physically cannot "handle" it.

    Erisatis: ...your scythe, sir.
    
    a: Thank you kindly.

    He gives it a casual swirl just as a test, and yet a slicing whirlwind picks up around him.
    
    a neutral 3: Eh, Plume? Jealous?
    
    p: ...
    
    p pout_side: <gray>...only a little...
    
    They think it looks cool.
    
    p pissed: Hey, nerd.
    
    Erisatis: Not my name.
    
    p: Grab me a glaive. Sapphire, please.
    
    Erisatis: Sure! No problem! <gray>Jerk.
    
    Erisatis: <gray> Also it only comes in sapphire...
    
    Plume grabs a pair of expensive-looking gloves from the wall, then snatches the glaive without even a thanks. 
    
    They twirl it around as did Ananas, then plant the butt on the ground and vault skyward, landing weightlessly on the dangerously sharp tip on one foot.
    
    Was all this fluffy exposition really worth all the fuss? They've been preparing for this day for months, and they're wasting time on a sword swinging contest?
    
    Ananas is never this terse with others. Plume is acting childish, but they sure know how to get under Ananas' skin(?)

    p: Much better. Now, <PLAYER_NAME>, why don't you decide for us? 
    
    p smug: Who wore it best?
    
    a: Come on, leave <PLAYER_NAME> out of this. Nobody's gonna sign up for the class if you scare 'em like this.
    
*   You will leave them to their [fate] nonsense.

    a sad: You sure? I think we're cooking here.
    
    p smug: Cooking fruit salad.
    
    a embarrassed 5: I'm not- You don't cook--
    
    * *     [Let's find a better use of your time] At least <i>one</> committee member should be expected to do their job. Let's make it you.

    p pout_side: Crumbs.
    
    a: Told you so. Womp womp.
    
    -> END
    
    * *     Fine, you'll bite[]. -> answer
    
*   (answer) They will have your answer[]. Which is...

    * * Ananas[' scythe.], with his scythe-slinging antics.

		~run_command("stopsound @s music")
		~run_command("playsound modfest:music.stereo.i_wannanana music")

        p pissed: Are you joking? The *fruit's* fancy farming tool!?
        
        a neutral 5: What can I say? The kid has good taste. Also not a fruit.
        
        p pout_side 4: Grr... You're lucky you're the prez <gray>or I'd--

    * *     Plume's glaive.

			~run_command("stopsound @s music")
			~run_command("playsound modfest:music.stereo.smoking_club music")

            p smile_side 3: See? Get rekt.
            
            a: Pfft, they still say that up in the Valley?
            
            p embarrassed_blush 1: We don't. Um. Get good internet up there.

            a sad: Still, a glaive instead of a scythe?
            
            a neutral 3: Have you no taste? Plume's got a knife on a stick, meanwhile I got these moves with a finely honed killing instrument.
            
            Erisatis: Um! To clarify they're all dull practice edges! Just to be clear!
            
            p pissed: Killing what? Wheat? Are you gonna bring us home a freshly hunted loaf of bread?
-
    Erisatis: *A-ahem* I do believe our new student has been through a lot today.
            
    Erisatis: Mister president, could you take it outside maybe please?
    
    a: Sure, Eri. See you soon, <PLAYER_NAME>.
    
    p smug: Pff. See you. I'm keeping this though. #hide ananas
    
    Erisatis: That's just <gray>a loaner...
    
    p: Eh? Did you say something?
    
    Erisatis: Oh, nothing. Just don't get cut on that edge<gray>lord...
-> END
