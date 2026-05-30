// note: * is never repeated, but + is.

// sprite: s plume h
-> start

=== start ===


#alias actor s shrimple
#alias actor a ananas
#alias actor p plume
#require act modfest:shrimple_1
#require act modfest:plume_1
#require act modfest:ananas_1

    s neutral 3: See, it's a lot easier to mix with the spatula.
    
    p pissed 2: I don't know what your problem is. I was moving it around just fine.
    
    s neutral_side: Sure, but...
    
    s embarrassed: <>It's a little unsanitary to stick your whole arm in the batter, dontcha think?
    
    Your uniform would agree.
    <> Every movement Plume has made in the last few minutes has gifted you another delicious strawberry flecking.
    
    * You reach for your spatula[]. You'll show 'em how it's done.
    
        * * You show them how to stir properly[], taking their their hand gently in yours.
            
            The kind gesture goes unnoticed. 
            <> You stand in the presence of a stirring machine.
            -> ananas
            
        * * [They will learn empathy by your hand] Their clothes might be ragged, but Plume clings to their street fashion.
            <> You fleck them, secretly. But they are engrossed in their task.
            -> ananas
            
    * You forgive Plume[]...
    
        * * ...for now[]. You make a mental note to find a way to charge your laundry to Plume's account.
        -> ananas
        
        * * ...recalling the eightfold way[]. 
        <> If you took offense for every time they'd ruined an article of your clothing, you would be in therapy.
        <> This too shall pass.
        -> ananas
        
=== ananas

    <> Meanwhile, Shrimple's attention lies elsewhere.

    s smile_side: That's exactly right, Ananas! Give it a good strong stir!
    
    a neutral 0: Just like in Paris. We make it smooth and tight.
    
    You aren't sure what that means, less so with respect to cake batter. #hide plume #hide ananas
    
    - (questions) { stopping:
        - 
        
        - Behind her, Plume turns to face Ananas.
            <> They are making eye contact.
            
        - Plume begins to stir more frantically. Ananas raises.
        
        - With a flourish, Ananas flips his bowl and spins it on the spatula in the manner of some kind of Italian pastry you can't remember the name of. -> kitchen
    }
        * * "What are we making, anyway?{recipe:  Shrimp cake, without shrimp?}"
        
            s smile: Its a shortcake!
            
            s angry: <> If we survive these guys.
            
            s frown_side: I hoped we could have these done by the time the festival started, but I guess we're making an event of it.
        
            -> questions
            
        * * "The recipe calls for potato?"
        
            - - - (recipe) s smile: Old family recipe: Shrimpcake! 
            <> It's pink like me!
            
            ...
            
            s embarrassed: There's, uh, no shrimp in it. I checked.
            
            * * * [Was there ever any doubt?]
        
            -> questions
            
        * * "That's a cute hat." 
            
            s embarrassed_side_blush: Huh?
            
            s: Oh! Yes, it's a bit of an heirloom.
            
            - - - (hat) 
            
            {hat == 2: The hat does add a certain je ne sais quoi to the kitchen. Whatever that means.}
            
            * * * "Where did it come from?"
                
                s: My great-pappy was the personal chef to ocean royalty.
                
                s neutral_side: Princess meru-something. Big ol' clam. Can't remember.
                
                s: We immigrated onto land before I was born. I'm second gen.
                
                s frown: Aw... Now I miss my folks. I better give 'em a call after the festival ends.
            
                -> hat
                
            * * * "Aren't you supposed to keep your hair under it?"
                
                s embarrassed_side_blush: h, yeahhhhh, I guesssss
                
                s embarrassed_side_blush: But I'm not technically the one doing the baking here!
                
                s angry: And have you like, seen the kinds of students making food?
                
                s frown: I know it's a sensitive subject, but I wonder if I should ask Ananas whether its cake needs to come with a pineapple allergy warning...
            
                -> hat
            
            * * * -> questions


=== kitchen ===

    * [Italian? Is that a seasoning or something?] You are learning so many new things in this kitchen.
    * [Someone cool that cucumber!] Wait, are cucumbers a fruit or a vegetable? You ponder a moment, but quickly realize someone will have an annoying hour long conversation on the school's chatroom about it.

    - s: So, Plume, as I was saying. Turn it slowly. With your spatula.
    
    She turns. You smell smoke.
    
    s angry 5: I said slowly!
    
    p pissed: This is slowly!
    
    * If slow is an ocean[...] then this room is a desert.
    * If slow is a snail[...] then they are its salt. If escargot doesn't exist in this world, you have just thought of a brilliant business opportunity.
    
    - As if that wasn't enough action, the speed catches the bowls on fire.
    
    Both of them. At the same time.



-> DONE