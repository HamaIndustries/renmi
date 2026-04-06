    Ready?
//  The player overhears their voices, this time coming from a storm drain?? Shrimple asks if Barebones has the good stuff. Barebones says yeah, but the deal's changed. he needs better compensation. She'll come up with something.



*   Let's dance.

-> act_2

VAR PLAYER_NAME = "PLAYER_NAME"


=== act_2 ===

    You grip your crate after a nice long walk from the garden, berries and vegetables threatening to fall out. Why did the garden need to be so far from the kitchen, anyways? 
    
    You sigh. The agricultural club used to have a hand truck for this stuff, but after Professor Delta wrecked it trying to sled down the nearby hill, he's been saving for a new one out of pocket.
    
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
    
