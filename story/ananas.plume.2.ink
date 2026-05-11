
Ready?

* Let's dance. 
-> ananas_plume_2

== ananas_plume_2 ==

#alias actor p plume
#alias actor a ananas

    That's funny, one of the mods here is missing a texture. They weren't kidding that this festival has zero quality standards.

    E: Hey, you! Yeah, you!
    
    Nope, fell for it again. I'll add "cat with missing textures" to the studentdex for you.

    E: Um... would you be possibly interested in taking an introduction class on metallurgy and forging? 
    
    E: You wouldn't have to take this course permanently, it's fine if you just try the one class...
    
-   (busy) {|{busy <= 10:You can come back later, or proceed when you're ready. They'll be here all day.| Stop that. You're breaking their heart. Be kind. Just close the dialogue and leave.}}

*   You're busy[], apparently. So, why exactly did you come here? Did you forget something?
    
    E: Oh... I understand...
    
    They slouch with dejection, texture flickering briefly. You should update your drivers, later, if you're running any.
    
    E: ...it's not like we'd be making large weapons and cool tools or anything...
    -> busy
    
+   {busy > 1 and busy < 10} Still busy[].

    // DO NOT EVER DO WHAT I AM ABOUT TO DO

    E: Aw \:
    ->frown(->busy, busy-2)
    
*   {busy >= 10} [Still busy]
-> busy
    
    
*   Let's [do it] make something dangerous!
-
    E: Really? That's great!
    
    E: Wait, dangerous?
    
    E: Let's uh, not get ahead of ourselves. It works like this...
    
    The ensuing explanation is a whirlwind of metallic terminology and erratic flailing. 
    
    a: Hello Erisatis! Offering students with large weapons, I see!
    
    E: Ah! Ananas! Of... of course not, sir! I was just detailing what the course may involve!
    
    a: Shame. I was looking for a little something to get a edge on old Plume. Those skates are just too flashy!
    
    a: Say, <PLAYER_NAME>, you seen anything around here like that that fits the bill?

*   (sword) The sword
*   (scythe) The scythe
*   (glaive) The glaive
*   (hammer) The sledgehammer
*   (tuning) The tuning fork
-
    <> on the wall is sufficiently flashy for a flashy guy like Ananas. Plume won't see it coming.

    p: What's that about my skates? 

    E: Oh, hi, Plume! I was just-

    p: Can it, nerd. What were you saying about my skates, Ananas?

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

    E: Not at all.
    
    E: Only when they're competing.
    
    E: Or trying to annoy each other.
    
    E: Or when they make eye contact.
    
    E: ...Okay you have a point.

-> argumentative


= frown (-> back, amount)

<> (

{ amount > 0:
    ->frown(back, amount-1)
- else:
    -> back
}


=== argumentative ===


    p: I don't even need an S.V. to show up your veggietales ass with a sword.
    
    a: Try me. Eri, hook me up! Scythe please!

    E: Really? It's quite sharp.

    a: What do I look like, a fruit? I got a handle on it.
    
    Yes he does, and you think he very much physically cannot "handle" it.

    E: ...your scythe, sir.
    
    a: Thank you kindly.

    He gives it a casual swirl just as a test, and yet a slicing whirlwind picks up around him.
    
    a: Eh, Plume? Jealous?
    
    p: ...
    
    p: <gray>...only a little...
    
    They think it looks cool.
    
    p: Hey, nerd.
    
    E: Yes? Uh, wait, did you mean me?
    
    p: Grab me a glaive. Sapphire, please.
    
    E: O-Oh, sure! No problem!
    
    E: <gray>It only comes in sapphire...
    
    Plume grabs a pair of expensive-looking gloves from the wall, then snatches the glaive without even a thanks. 
    
    They twirl it around as did Ananas, then plant the butt on the ground and vault skyward, landing weightlessly on the dangerously sharp tip on one foot.
    
    Was all this fluffy exposition really worth all the fuss? They've been preparing for this day for months, and they're wasting time on a sword swinging contest?
    
    Ananas is never this terse with others. Plume is acting childish, but they sure know how to get under Ananas' skin(?)

    p: Much better. Now, <PLAYER_NAME>, why don't you decide for us? 
    
    p: Who wore it best?
    
    a: Come on, leave <PLAYER_NAME> out of this. Nobody's gonna sign up for the class if you scare 'em like this.
    
*   You will leave them to their [fate] nonsense.

    a: You sure? I think we're cooking here.
    
    p: Cooking fruit salad.
    
    a: I'm not- You don't cook--
    
    * *     Let's find a better use of your time[]

    p: Crumbs.
    
    a: Told you so. Womp womp.
    
    -> END
    
    * *     Fine, you'll bite[]. -> answer
    
*   (answer) They will have your answer[]. Which is...

    * * Ananas[' scythe.] with his scythe-slinging antics

        p: Are you joking? The *fruit's* fancy farming tool!?
        
        a: What can I say? The kid has good taste. Also not a fruit.
        
        p: Grr... You're the prez <gray>or I'd--

    * *     Plume's glaive.

            p: See? Get rekt.
            
            a: Pfft, they still say that up in the Valley?
            
            p: We don't. Um. Get good internet up there.

            a: Still, a glaive instead of a scythe?
            
            a: Have you no taste? Plume's got a knife on a stick, meanwhile I got these moves with a finely honed killing instrument.
            
            E: Um! To clarify they're all dull practice edges! Just to be clear!
            
            p: Killing what? Wheat? Are you gonna bring us home a freshly hunted loaf of bread?
-
    E: *A-ahem* I do believe our new student has been through a lot today. 
            
    E: Mister president, could you take it outside maybe please?
    
    a: Sure, Eri. See you soon, <PLAYER_NAME>.
    
    p: Pff. See you. I'm keeping this though.
    
    E: That's just <gray>a loaner...
    
    p: Eh? Did you say something?
    
    E: N-nothing, ehe...
-> END
