    Ready?
//  The player overhears their voices, this time coming from a storm drain?? Shrimple asks if Barebones has the good stuff. Barebones says yeah, but the deal's changed. he needs better compensation. She'll come up with something.



*   Let's dance.

-> barebones_shrimple_2

VAR PLAYER_NAME = "PLAYER_NAME"

=== barebones_shrimple_2 ===

    The walk back from the garden is far less grueling than your journey there, even with a heaping box of vegetables in tow.
    
    The mud from the brief sprinkling earlier this morning has at last dried, and the path is at a slight downward incline. 
    
    Why did the garden need to be so far from the kitchen tent, anyway? 
    
    You thought with Shrimple's almost obsessive attention to detail and extensive planning, she'd have accounted for this critical logistical error.

*   It must be a Monday[], that's what is breaking Shrimple's flow.

    You heard the shipment of noodle was delayed, and the tomatoes were just barely out of season. 
    
    The cheese came in late. Nonetheless, she persisted. And still, she failed to create it.
    
    From the oven, the failure of her perfect dish:
    
    Parmesan pasta.
    
    In the end, she sacrificed her moral code and resorted to microwave lasagna to fill in for one of the sides. You didn't hear that from her, or anyone else, though. 
    
    She would have your head if you said anything that could be remotely construed as a comparison to Olive Garden.

*   She's trying to punish you[]. She's always had it out for vertebrates.

    It's the gleam in her eye when she bonds with bipeds, in contrast with her conversations with crustaceans.
    
    It's something that lingers in the shadows of her pots, the pots with land meat far above in representation over seafood.
    
    ...is what you would say if you were suspicious of her. You're sure she has her reasons.
    
    ...
    
    Let's stop entertaining this joke scenario for now.
    
-   You set down the box to stretch and take a breather.

    Shrimple told you there would be a handtruck waiting for you at the greenhouse.
    
    Most likely, it was that same handtruck you saw that menace of a gardening professor Delta sledding down the hill right past as you hiked up.
    
    The loud crash and accompanied comedic howl loudly pronnounced the device's sudden (yet honorable) discharge from service.
    
 TODO
    
    As you approach the kitchen, you can't help but notice that something's different. 
    
    "Shrimple? I've got some stuff for you!"
    
    No answer, but you suppose you could tell that was the case. There didn't seem to be any cooking, and you couldn't hear any of the usual signs of her presence... the sound of her many (?) knives cutting all at once, the constant stirring of her pots, the sizzling in her pans. 
    
    The place was virtually empty. That is... except for a familiar friend.
    
*   "Hey Ananas[!"]," you call, as you heave your crate onto a nearby table. "What're you doing here?"

-   The familiar fruit (?) was idly sitting by the microwave as his cup ramen heated up. 

    a: "Oh, hey {PLAYER_NAME}! Just making myself some food. Shrimple asked me to watch over the kitchen while she gets some groceries. Looks like you beat her to it?"
    
    a: "She'll know where to put everything how she wants it, just uh... Why don't you go get her, and I'll make sure none of those greens go bad, 'kay?"
    
*   ["Where's the grocery store?"]"So, where's that store she went to?" You figure if you just go that way, you could probably bump into her if she's not still there. 
    - - (wherestore) 
    a: "{hungry:Oh, forgot to tell you where she is! }So, the store's all the way up the hill by the softball court. You can't miss it."
    
*   (hungry) "I'm [hungry"]so hungryyyyyyyyy..."
    Can't do anything about that until Shrimple's back... unless you steal the kitchen inventory, but you'd never do that, would you? Especially not if Ananas is right there...
    -> wherestore

-   {hungry:Begrudgingly, y}{not hungry:Y}ou leave your crate of berries and veggies for Ananas to take care of while you embark on yet another fetch quest.

//  The player sees bubbles and hears talking yet again

*   [Leave for the store]As you enter the neighborhood, you begin to zone out a bit. {hungry:Perhaps your hunger is making you dizzy...}

-   After some mindless walking, you feel a strong sense of déjà vu... Muffled voices, plus some bubbles in the air.

//  shrimple and barebones talk etc etc
    -> END
    
