-> start

=== start ===
Shall we?
* [Let's dance.] 
-> shrimple_ugg_1
-> DONE


// & cycle
// ! once
// ~ shuffle
// alternatives can have blanks
// sequences (blank)

// you MAY NOT borrow plumes skates
// narrator is friendly and a little teasing. always positive
// and encouraging of others.

LIST characters = Ugg, Shrimple, Ananas, Barebones, Plume, Lulu


//   VAR shr_name = "Shrimple"
    // ~ temp ugg_name = "Ugg"
    // ~ temp ugg_anchor = ""
    // ~ temp friend_desc = ""
    // ~ temp Friend_desc = ""

=== shrimple_ugg_1 ===
// Ugg and Shrimple are chasing after a chickensaur to eat. That was the plan. De facto, Ugg is chasing the chickensaur to eat and the chickensaur is chasing shrimple to eat. They give up and decide to find easier prey.
// setting: petting zoo, stables.
// player is standing by a fence looking at animals when they crash


    VAR shr_name = "Shrimple"
    VAR ugg_name = "Ugg"
    VAR ugg_anchor = ""
    VAR friend_desc = ""
    VAR Friend_desc = ""
    VAR window_open = false
    VAR steeled = false
    VAR class = false
    ->stampede

= stampede

    Shrimple's shrill cry shakes your bones. Some kind of stampede approaches from behind. You are the deer in headlights.

*   You freeze like a [hawk staring down its prey] scared little forest creature.
*   (death) You prepare for death's sweet embrace[], but death grants you no harbor.
*   You curl up into a little ball and try not to cry[]. You cry a lot.

-   <> {not death: But death will not have you today.} A monstrous arm slings you over its shoulder like a sack of some extinct species of ancient tuber. A monstrous arm owned by a very lively and modern caveman. 

*   Not impressive.[ You're on the lighter side.] You're built like a leaf.
*   (heavy) Impressive[. You're fairly sturdy]... A being powerful enough to bear you? And with not even 10% of his power, at that.

-   <> He speaks to you with the calculated patience that befits an apex predator. {heavy:
        u: Ugg want heavy friend to not be scared. Chickensaur only eat smaller prey.
    -   else:
        u: Ugg sorry for picking up small friend. Chickensaur eat smaller prey.
    } His words are quickly evidenced by Shrimple's incoherent screaming. This may not be Ugg's first rodeo, but it certainly is hers. You think you know what's going on here.

*    "Someone lost a bet?"[] You ask, immediately feeling silly. Bet what? Rocks? A succulent chinese meal? These unserious people own nothing of value.
*     (dinner) "Someone's making dinner?"[] He grunts in the affirmative.
*     "Someone picked a fight?"[] You nearly ask, but the answer is obvious. Ugg, having no natural predators, would not lose in a fight. Something else is happening here.
    
-   The details must wait. The scene resembles a nature documentary. You survey the stable, which the festival organizers \(Ugg) have temporarily, and moreover crudely, fashioned into a petting zoo. 
    {dinner: Shrimple, in a fit of shockingly poor judgement, must have taken advice from Ugg on where to procure her secret ingredient.} You doubt that "opportunistic carnivore" appears anywhere in Ugg's local dialect.

    // take item do action
    // sovle puzzle needs non-obvious solution
    // need something that looks like shrimp
    // ask ugg to know it only eats things that look like her (seafood)
    // didn't attack before because there was no seafood.
    // if you open the stable gate to let it out, you can prep it so it chases into the fish pond instead.

    ~ temp on_ugg = true
    ~ temp seen_pond = false
    {heavy:
        ~ ugg_anchor = "shoulder"
        ~ friend_desc = "heavy"
        ~ Friend_desc = "Heavy"
    - else:
        ~ ugg_anchor = "head"
        ~ friend_desc = "small"
        ~ Friend_desc = "Small"
    }

-   (survey)
+   The Beast[] {is presently giving Jurassic Park a run for its money. If this were a lesser work of fiction, I would have made here some pedestrian Benny Hill reference.|is bearing down on its aspirant lunch.}
    * * You [get its attention] try your best to get its attention, but no dice. Pure love of the game.
    + + -> survey
*   (beauty) The Beauty[]? You need to be more specific than that, honey. Everyone has their charms.
    * *     Shrimple[], that legendary chef. You have good taste.
            ~ shr_name = "The Beauty"
    * *     Ugg[], that handsome devil. You have a good eye.
            ~ ugg_name = "The Beauty"
    * *     Both[]. Both is good.
             ~ shr_name = "The Beauty (1)"
             ~ ugg_name = "The Beauty (2)"
             
+   (shrimple) {beauty} \  {shr_name}[]{, on her part, is holding up remarkably well.| is living the dream.} 
    * *     "Are you alright[?"], {shr_name}?"
            {shr_name ? "Beauty": -> shrimple_flirt ->}
            shr: "I'm doing fine, bud," she lies.
            The bird is only slightly shorter than {shr_name}, but its determination to get to her is cause enough for concern.
            shr: "Just stay right where you are, I'll have this critter on rotisserie before you know it," she lies again. Points for effort.
    + +     -> survey

+   (ugg) {beauty} \  {ugg_name}[] {on_ugg:carries you on his {heavy: shoulder.|head. {!| He reaches up to scratch it, poking you by accident.}}|stares contemplatively at the unfolding catastrophe.} {heavy and spotted: 
        ~ steeled = true
        <> There doesn't seem to be any other options. It's time to bite the bullet.
    }
    * *     (explained) ["Ugg, why is Shrimple being preyed upon?"]"{ugg_name}, why is {shr_name} being preyed upon?"
            u: "{ugg_name ? "Beauty":The B-- Ugg? {Friend_desc} friend call Ugg beauty?" He blushes and continues. "...}Chickensaur not eat today. But Ugg not understand. Chickensaur only eat fish."
            You allow him a moment to allow him to connect the dots. A few moments.
            u: "{Friend_desc} friend. Is shrimps fish?"
            * * *   "Shrimps is fish["], everyone knows that." {ugg_name} nods sagely. 
                    u: "Ugg remember this from Ichthyology." Wait, that's a class here? This school rocks. You're glad you didn't lie to him, he probably would have called you out.
                    ~ class = "Ichthyology"
            * * *   "Shrimps is bugs["], everyone knows that." {ugg_name} nods sagely. 
                    u: "Ugg think he remember this from Entomology." 
                    Wait, that's a class here? This school rocks. Now you feel bad for lying to him.
                    ~ class = "Entomology"
            * * *   [Some sinister third thing] "I am shrimps." He almost drops you straight off his {ugg_anchor}.
                    You quickly reassure {ugg_name} that yes, you were joking, and no, you will not trigger his seafood allergy. Assuming that you are not a shrimp. My deepest shrimpologies if you are.
                    
            - - -   {not dinner: u: "Ugg tell Shrimp Girl we get good meat for ingredient here." And {shr_name} went with this? You are beyond words.}
        
    + +     (climb_ugg) {not on_ugg} [Climb back up] {ugg_name} waits patiently as you {heavy:clamber|scamper} back onto his {ugg_anchor}.
            ~ on_ugg = true
    + +     {on_ugg} [You get down] {ugg_name} carefully sets you on the ground.
            ~ on_ugg = false
            {not heavy or spotted: -> spotted(->climb_ugg)}
    * *     {pond} You ask [him to open the window]{ugg_name} to open the lower window.
    {lunch: ->no_key} <> He obliges. You pat yourself on the back when you notice that the key rests up high on the sill, where you wouldn't have seen it from the ground.
            If this were a visual novel, you would think it was put there by a creatively bankrupt modder using artificial difficulty as a bludgeon to achieve a frail sense of branching narrative, and then set the game down in disgust.
            ~ window_open = true
            Good thing that's not the case. -> survey
            
            - - - (no_key) 
            u: "Ugg see {friend_desc} drop key behind window. Ugg cannot go through wall".
            The terror of a hypothetical quantum caveman is compelling enough for you to not risk wishing it into existence.
            -> ugg
            
    + + [Something else] -> survey
    
+   (animals) The other animals []{animals==1:{shr_name ? "Beauty" and ugg_name ? "Beauty": (also beautiful)} vary{survey ==1: from the mundane to the obscene}. Animals from Earth, animals plausibly from Earth{survey==1:, an unmoving purple orb that fills you with disquiet}. Animals that are clearly not from Earth, but may not bother you depending on wherever you headcanon this story takes place.|are remarkably calm.}
    
    - - (stalls)

    + +     The stalls[] are all firmly shut{, except for one which looks suspiciously ideal for Chickensaur containment. Your animal instinct tells you that the chicken will not come home to roost.| until morale improves|. They will remain this way until we have created assets for the remaining animals.|.}
        
    + +      (window) {not seen_pond} The window[] is a bare wooden frame{!, unsurprisingly. This isn't a hotel for dogs}. It is higher up on the wall than you can reach. {on_ugg: 
                <> Beyond the window lies a small pond. Is it perhaps for fishing, or some equally tedious minigame?
            - else:
                <> The opening is too high for you to see what lies beyond it.
                -> stalls
            }
            ~ seen_pond = true
    
    + +     (pond) {seen_pond} The pond[] can be made accessible by opening the lower half of the window{!, which you realize is one of those little cottagecore half-doors}.
    
    + + [Something else] ->survey
    - - ->stalls
    
+   {seen_pond and not on_ugg and not window_open} You [open the window] try to open the window, but it doesn't budge. A good shake rewards you with a solid thunk on the side of the window that you are not on. A thunk that, you hope, is not that of a key to a window of particular interest to you.
        - - (lunch) The sound of the key echoes throughout the stall. {explained:You recall your lunch.}
        -> spotted(->climb_ugg)
+   {window_open and not on_ugg} [Let's tango.] You make a sound that was meant to cool and intimidating. You pray to whatever you pray to that it was indeed that. 
    ~ steeled = true
    -> spotted(->climb_ugg)

- -> survey
-> DONE

= shrimple_flirt
    shr: "I'm doing fine, b--"
    Her face turns the color of her hair, and she very nearly falls over herself. Nearly, thankfully, given the circumstances.
    shr: "Beg your pardon?"
    You aren't entirely sure what {shr_name} is taking issue with. Has all that running tired her to the point of delirium?
*   "Just making sure you're okay[."], {shr_name}."
*   "Can I get you anything[?"], {shr_name}?"
-   She nearly chokes. It takes a few more seconds of cartoonish sprinting for her to compose herself.
    ->->

= spotted(->back)
    {steeled: <> You steel yourself.|<> }
    The Beast freezes, then swivels its head mechanically towards you, the {friend_desc} friend. {explained: {!Never in your life have you so regretted free sushi samples.}} {wise:It gave you your chance to be wise. <> ->foolish} You have three seconds.
*   (wise) You choose to be wise. <> ->back
*   (foolish) You choose to be foolish.[] The bird shoots at you, {shr_name} a distant memory.
-   (spot_options)
+   (try_door) The front door[] can be reached if you aren't partial to large chunks of your flesh. 
    {lunch or try_window: <> No way around it, unfortunately. -> attack}
    + +     [Let's do it cretaceous style] -> attack
    + +     {window} [The window] -> try_window
    
*   (try_window) {window} The window[] is the way to go. It's true because it rhymes. 
        {not window_open: -> no_escape}
        
-   (feather) You dash through, Mr. (Mrs.? Mx.?) The Beast in hot on your tail. {class: Your old school might not offer {class}, but you remember somewhere that dinosaurs can't see very well. Might have been on TV.} You recall the pond just in time to sidestep it. Your erstwile companion does not.

    You are rewarded with a loud squawk and a splash. <> -> ending

-   (no_escape) At least, it would be true, if it were open. It is not, {not lunch:and to your horror you realize that the key to the lower portion is on the sill high above where only {ugg_name} can reach.|for reasons we can only guess at.} A pithy remark about modders and their relationship with game design would be appropriate here, if you were not fighting for your life.
    -> spot_options
    
= attack
    {heavy: Good thing you're so "heavy."} You set your shoulders and make a mean face. The bird falters, and at that moment you strike.
    
    The Beast regains its composure, but only fast enough to barely dodge and take a slight scrape at you.

*   You [finish the job] run straight at it with a monstrous roar. You, The Beast, own this stable. The Chickensaur formerly known as The Beast squawks meekly and darts out into the festival.
*   You [get the hell out of dodge] position yourself by the entrance to the stable, and then leap heroically into {ugg_name}'s {ugg_name ? "Beauty":handsome|waiting} arms as sixty kilos of raging poultry and feathers hurls out into the festival. 
-   -> ending
    

= ending
// shrimple and ugg regroup and collapse in a pile together cutely. agree to get easier prey. both start snoring in a pile.
    Who knows what lively misadventures await that awful bird?
    ~ temp both_flirt = shrimple_flirt and explained and (ugg_name ? "Beauty")
    
    {feather: A white flash out of the corner of your eye. Faster than you can think, your animal instincts snipe the object: A single, brilliant feather. Perhaps this has some value to it?}
    
    {ugg_name} and {shr_name} collapse onto each other in an exhausted heap in the middle of the stables.

-   (questions)
*   ["Are you two okay?"] "{shr_name}, {ugg_name}, are you both okay?"

    {both_flirt:
        shr: "Why do you keep...?" She trails off
    - else:
        shr: "Yeah, just... give us a second..." she replies
    } <>, hardle able to keep her eyes open.
    -> questions
*   {not dinner and not explained} "Why were we doing this anyway?"[] You are met with silence. A mystery for the ages.
    -> questions
*   {dinner or explained} "What now?"
    u: "Ugg think we find easy prey."
    shr: "Shrimple think we find easy prey."
    You think they should consider finding easier prey.
    -> questions
*   ->
    You think it best to leave them to their rest. Clearly, {not dinner and not explained:whatever they are doing, }they have a long road ahead of them.

-> END














