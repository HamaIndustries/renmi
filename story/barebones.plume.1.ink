Ready?

*   Let's dance. 
-> barebones_plume_1

-> END

=== barebones_plume_1 ===
// Plume looks up to Barebones, who is confident and strong in his own unique way despite his physical fragility. Plume also likes feeling included in Barebones' schemes, usually playing the decoy or pickpocket.

// Barebones is the central figure in Plume's current delinquency. He lets Plume self sabotage and refuses to take any responsibility: His machismo and sense of pride prevent him from accepting his role in their troubles (" *clack* 'ts the kid's fault if their grades suck "). We will also learn in Lulu/plume act 1 that Plume used to be a good student, where after seeing them both run off a teacher remarks offhandedly that things were getting better until they started following Barebones around.

// Plume's story progresses as we help them gain a sense of true self-confidence and independence. If the player can teach Barebones responsibility, we'll see a scene later where Barebones tries to use his influence constructively by teaching Plume how to weightlift.

// **ACT 1**: (requires Lulu ACT 2) Barebones chases plume claiming they stole something. plume hides behind you, and barebones distracts while you get pickpocketed. Plume's about to dip through the window, but Lulu is outside and blocks it, asking what's going on. you catch plume, who insults Lulu. She gets sad and runs away crying.

// outline:

// You're cleaning up a mess in a booth when lulu talks to you through a window about something.

// barebones chases plume in, and either: player tries to catch plume or lets plume hide behind them.

//      hide: you suddenly remember your first encounter with barebones and plume, and your wallet (which is still missing)


    (You're cleaning up a mess in a specific booth. explain stuff here)
    
    It's an hour until noon, if you had to guess. You aren't quite starving, but a snack stop is on the table.
    
    Won't be worth it if there's a line, though. Shrimple's tent should be just barely visible from here, moreso if it's popular right now.
    
*   [Check the window] The sky is a beautiful shade of bright, alarming red.

-   Red?

-   (window)

*   [Check the paintings]The paintings are all still here. 

    There are no psychophysical anomalies in the room with you. The sky is merely red. 
    
    As far as you know.
    
    -> window

*   [Check the window, again] Upon closer inspection, the window turns out to be full of normal girl.
    
-   l: \[ovo\] Hello < PLAYER_NAME >! I have a question for you.
    
*   [Is this safe?] In your hazy recollection, there was a lovely rose bush directly below this very window. You ask her to verify.

    l: \[ovo\] The roses? Allow me to check on them.
    
    ...
    
    l: \[^-^\] The roses are still there!
    
    In one piece?

*   What is her question?

-   l: \[-v-\] I was wondering something about living things with blood and heartbeats.
    
    This will end well.
    
    l: \[>.>\] I was pondering the question, and even preparing to ask it to you, when my sensors picked up on some commotion.
    
    l: \[-v-\] There are two humanoids with elevated heartbeats rapidly approaching your location.
    
    l: \[ovo\] Theta wave analysis indicates extreme agitation, which usually corresponds to anger or harmful intent.
    
    l: \[^-^\] Most of my simulation cores are asking me to convey that these humanoids are likely looking for you!
    
    l: \[._.\] One of them said to keep it to myself. I told her to be kind.
    
*   You stand your ground[] against the mystery assailants. They will quickly learn what it means to be an officer of the festival committee.

    That said, it <>

*   [The closet will protect you]Staying in the closet will save you, as much as it has saved anyone before. 

    Which is not much, honey, let's be honest with ourselves. Come on out of the closet. 
    
    Instead, it <>
    
-   would be wise to arm yourself.
    
*   (chair) The folding chair by the door[] looks painful to be hit with, assuming it's not a prop.

    You test the chair. It is not a prop, though you may have cost yourself the advantage in the time it will now take you to unfold yourself from it.

*   (book) The textbook on the desk[] is of suitable heft.

        Too, suitable, in fact. So suitable that your fingers are weighed down by that very same heft.

        You may have cost yourself the advantage.

*   (body) Your body [is sufficient] will be sufficient. It has saved your life several times today, so you have no reason to distrust it now.

    Too many times, maybe. You suddenly recall spraining your ankle using (MOD REFERENCE HERE) not minutes ago.
    
    You were having so much fun you didn't even notice. Sadly, this may have cost you the advantage.

*   (cannon) Lulu [is sufficient] will be sufficient. 

    l: \[0-0\] My cannon? Sure, where do you want it?
    
    These chuckleheads have no idea what's in store for them. Lulu follows your stage directions with mechanical precision.
    
    l: \[>.>\] This might be a little dangerous...
    
    You should hope so.
    
    l: \[;-;\] I don't think we will be able to clean up all the confetti with just the four of us.
    
    ...
    
    You may have cost yourself the advantage.
    
-   There is a thickness in the air, a dullness in sensation that precedes great violence. 

    The enemy arrives.
    
    p: Outta the way!
    
    b: Outta the--Oh, hey its yous!
    
    {chair or book: b: Yous alright? That looks uncomfortable.}
    
    {body: b: Yous alright? Outta call the nurse.}
    
    {cannon: b: Yous alright? Wait, that a gun?}
    
    <> Anyways.
    
    b: Catch that little shit! They got their greasy little paws all over my wallet!
    
*   You can[ probably catch them this time], and do, catch them this time.

    p: Hell's wrong with you?
    
    p: This guy's gone nuts, don't let him touch me.
    
    - -     (plume_questions) {|Several students and even a few visitors have wandered over just to spectate. Barebones always knows how to draw a crowd. |b: Glad yous all is having a good time, but I gotta point out the a great big wallet shaped hole in my heart where my wallet is supposed to be.}
    
    * *     "What did you do?"
    
            b: Took my wallet, just told yous!
            
            Deja vu.
            
            -> plume_questions
    
    * *     (skull) "What happens if he gets you?"
        
            p: I dunno, turn me into grape jelly or something.
            
            p: How am I supposed to know what a skeleton is thinking?
            
            They have a point. When Barebones is angled just right, you can see clear to the back of his skull. There's absolutely nothing in there.
            -> plume_questions
            
    * * (handoff) {plume_questions > 2} You [hand them over] attempt a handoff to the... "proper authorities," but Plume has other plans.
    
        -> scram
    
    * * {plume_questions > 2} You set them down[]. <>-> behind


*   You [let them go], in a saintly display to rival Lulu herself, choose to put your previous interactions aside and grant Plume amnesty.

    - - (behind) Uncharacteristically, they duck behind you and peer out meekly at Barebones.
    
    b: I know yous got it ya pigeon. 
    
    He circles you menacingly, Plume in prograde.
    
    In a way you are playing the tree to Plume's squirrel. And Barebones', dog? Cat, fox? Whatever the skull is supposed to be.
    
    p: Bonehead. Here I am minding my business and you come scary running at me.
    
    p: You're trying to trick us again. What's your game?
    
    b: Bonehead? Bonehead? My word, this what the students of this fine academy're reducing 'emselves to?
    
    * *     [Think of a kinder insult]
    
        * * *   "Spineless"
        * * *   "Numbskull"
        * * *   "Marrow-minded"
        
        - - -   p: Sorry?
        
        * * *   "It would be more tasteful["]?"
        
        ...
    
        b: I'm gonna go and pretend yous didn't say that.
    
        b: Anyways. <>
        
    * *     It is quite uncouth[].
    
            b: See? this one gets it.
            
            p: No! I'm extremely couth!
            
            b: Yous know what that even means, kid?
            
            p: It means you're smart and hot or something.
            
            b: See? <>
    
    - -   The kid's certified. 
    
    p: I didn't do nothin'.
    
    b: I see yous sticking your tongue out at me right now ya rat bastard!
    
    b: Now hand over the wallet before I call my boys.
    
    * *   "Your wallet[?"]? Not mine?"
    
            b: Of course it's mine, nicked it offa one of those mooks on the festival... committee...
            
    - -     ...
    
-   (scram) 
    Your pocket starts moving on its own. Not the pocket, but the hand in the pocket.  Not your hand, but Plume's, which moments ago was fishing around for something in your pocket. 
        
        The pocket carrying your phone, formerly.
        
        b: {handoff: Atta go, kid. Now let's|The gigs' up, kid. Let's}
        
        <> scram!

        Not again.

    *   You go for Plume[], the clear muscle of the operation. The irony of the statement is not lost on you.
    *   You go for Barebones[], the clear brains of the operation. {skull: The irony of him having none is not lost on you.}
    
-   For the third time today, Plume does not look where they are leaping. For the third time today, Plume smacks directly into an unmoving object.

    In this case, Lulu's bottom eyeport, much like a bug on a windshield. She was peering in so intently that Plume never had a chance to leave the room.

    l: \[uvu\] {cannon:Is now a good time for the cannon?|Hello Plume! Hello Barebones! It is funny meeting you two here!}
    
    Plume will need a minute to reinflate. Barebones, meanwhile, fidgets nervously with his hat.
    
    b: Howdy do, Ms. Lulu. Funny meeting you here, {not cannon: too,} under the circumstances. 
    
    b: Juuuuuust out of curiosity, how much of the last minute and thirty seconds was yous privy to?
    
    l: \[ovo\] I remembered just in time that I should record this meeting for our archives as we usually do, Mr. Barebones.
    
    l: \[^_^\] Would you like me to forward this to Ananas now, or later?
    
    b: That won't be necessary, Ms. Lulu, we was just leaving. I'll pass the boss the cliffsnotes myself.
    
    l: \[O.O\] Would you? You are simply too kind, Mr. Barebones.
    
    b: For you? Forgetaboutit.
    
    l: \[^_^\] Okay!
    
    l: \[---FILE DELETED---\]
    
    l: \[ovo\] All gone. What a load off my back.
    
    b: Charming.
    
    He grabs the mostly-recovered Plume.
    
    b: I think that concludes our business here. Take care, gang.
    
*   "Barebones."

-   b: Eh?
    
*   "My phone."

-   b: Nice catch. The kid was just about to hand it back. What a silly little prank they pulled.

    b: Let's return the merchandise, yeah?
    
    Plume has been unusually silent this entire time. When you'd first met, you could have been convinced they were the cold and brooding type.
    
    What a chatterbox they turned out to be, especially in this latest act. 
    
    It is for this reason that their marked silence and dark expression fill you with worry.
    
    p: Stupid piece of shit robot.
    
    They kick Lulu's eyeport, silently. 
    
    l: \[ovo\] Are you okay, Plume? That looked like it hurt.
    
    l: \[^-^\] I can dispense some painkillers, if you like.
    
    p: Oh my god will you shut up!
    
    p: Stupid ugly piece of garbage always getting in the way!
    
    l: \[ovo\] ...
    
*   "Plume."

-   p: You have a million CPU cores and you're walking around pretending to be a ditz who just happened to be recording?

    l: \[;-;\] I only wanted to defuse the situation--
    
    p: Defuse? Nobody was dying. We were just having fun.
    
    p: And then your little dirt brain decided you'd have *your* fun getting us in trouble for it.
    
*   "Plume, stop."
    
-   p: Isn't that what you're built for? Hurting people?

*   "Plume, STOP."

-   l: \[   \] I.

    l: \[   \] I'm gonna go for a bit.
    
    l: \[   \] Be back later.
    
    p: ...
    
    p: Stupid. Didn't mean it like that.
    
    p: I'm gonna go too.
    
    They're gone.
    
    b: So, uh.
    
    b: How've yous been? 
    
    b: Enjoying the festival et cetera?
    
*   [It's time for you to go]You'll see Barebones later.


-> END