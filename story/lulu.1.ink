-> act_1

VAR PLAYER_NAME = "PLAYER_NAME"


=== act_1 ===
    Ready?

*   Let's dance.

// ACT 1: Lulu needs some help: she has another sticker she wants to put on, but can't reach. She remarks that everyone think's she's so strong, but she can't even put a sticker on herself! What a funny world we live in!

-   What a day!

    You find a bench and plant yourself firmly on it. A peaceful little slice of time. Take a moment to rest and reset your brain.
    
    You aren't sure yet how to adequately put your feelings about the festival into words. It certainly has exposed you to many new experiences, for better or worse.
    
    A visitor's children run by, playing with that toy from that one booth. The one that explicitly does not look like it should be allowed anywhere near kids.

...

*   (stop_them) You sprint over to stop them[].

*   You let them have their fun[]. Live fast, die young, right? That's what they say. They say that.
    
    Wow, that is an extremely sharp edge. That's not really a toy, is it.
    
    ...
    
    -> stop_them
    
-   Who thought it was a good idea hand these out to children? Scratch that, who thought it was a good idea to hand these out at a school festival? 

    You've seen some questionable mods already, but this is right out. Maybe you should bring a complaint to the committee?
    
    After all, dangerous weapons should not be allowed anywhere near a school. It's common sense.
    
    l: \[^_^\] Hello {PLAYER_NAME}! Thank you for taking care of that!
    
    You nearly jump high enough to be eye level with Lulu.
    
    l: \[o_o\] I did not mean to startle you! I am sorry, I'll stay out of your way...
    
*   You lie to make her feel better[], telling her that you were just so happy that you couldn't help your physical reaction.

*   You fudge the truth to make her feel better[]. You were just surprised. Concerned you were about to drop the dangerous weapon. You mean toy.

-   l: \[-v-\] Okay!

    She buys it, as far as you can tell.
    
    The corner of the field you're both standing in puts the school between you and the sun. Come to think of it, why has she only been hanging around here all day?
    
*   "Why do you stick to this side of the school?"
    
-   l: \[>.>\] Ehe, well, do you see my shadow?
    
    It's hard not to.
    
    l: \[-v-\] I don't know if you can tell, but my sensors are saying that it is actually a cold day out.
    
    She isn't wrong. A stiff breeze washes over you momentarily in agreement.
    
    l: \[ovo\] If I stood in the way of the sun, everyone would be freezing their toes off. I'd be like a, a-
    
*   A Dyson sphere? 
            -> light_wrong
*   A great and terrible monolith?

    - -     (light_wrong) l: \[O.O\] That sounds scary. 
        
            l: \[ovo\] I was actually going to say a reallllly big umbrella.

*   A really big umbrella?

        - -     (silt) l: \[O.O\] Exactly! How did you know? Do you have access to my silt drives?

-   You can think of a few three letter agencies who would pay big money to find out what goes on inside that brain. {silt:(silt???)}

    \[u_u\] Plus, people would get scared. Everyone tells me to stop looming.
    
*   "Looming? You mean standing around?"

    - -     (looming) l: \[ovo ?\] Are they wrong?
    
    * *     "They have a point["]. People can't help how they feel." 
    
            l: \[-v-\] You see the problem, right? {hopes: Take right now, for instance.} There are a lot of visitors from all kinds of places.
    
    * *     "It's not your fault["]. Faulting you for doing normal things any student can do is insane."
    
            l: \[-v-\] Are not thinking things inherently irrational?
            
            l: \[ovo\] That is kind of what I love about them, though. Machines are so predictable. {hopes: Perhaps that is why I am such a predictable romantic?}
            
            l: \[^-^\] I have subroutines with subroutines that can do backflips over many students when it comes to logic. But I still go to tutoring, sometimes. Why do you think that is?
            
    - -     l: \[>_>\] Er, do you mind...?
    
            She is trying to adjust herself slightly so that the shadow stays off of stragglers pouring in from the station.
            
            You move away so she can take a small step of several meters in length.

*   "I don't mind if you loom over me a little["]," you reply with every ounce of self confidence you will ever muster in your life.

        l: \[\/\/v\/\/\] Uwah... You charmer. 
        
        l: \[^_^\] If you tease me like that I might actually fall for it some day!
    
        * *     "I'm serious["]." 
        
                l: \[-v-\] You almost got me. But I am not falling for it! 
                
                l: \[o_o\] I am a smart girl and I have only fallen for that prank 11 times.
        
        * *     "What makes you say that?"
                
                l: \[-.-\] Hmm... I guess you could say I am a hopeless romantic?
                
                l: \[\/\/v\/\/\] Unrequited love. Forbidden love. Star-crossed lovers. I am unduly influenced by these stories.
                
        - -     (hopes) l: \[ovo\] Sometimes people tell me not to get my hopes up. But if we do not have hope, what do we have except dreams?
        
        * *     "That's awful["], they really say that to you?"
            -> looming
    
    
-   l: \[-n-\] As I was saying, people at the school are kind, but visitors will not be here long enough to get past their first impression.

    l: \[ovo\] Even those with the best of intentions need time to warm up to new people in order to understand them.
    
    l: \[^_^\] These things are normal. They are baked into the biological hardware. I cannot blame them for being them any more than I can blame me for being me.
    
    l: \[<.<\] Sorry, a little more to the left?
    
*   "Of course."

-   l: \[^-^\] You have been such a sweetie! Thank you for taking the time to talk to me.
    
*   "What are friends for?"

    l: \[-v-\] That's a wonderful question. Aristotle's interpretation-
    
        * *     "I meant rhetorically."
        
        - - \[O.^\] Uwah! I fell for it again. Machine brain momer.
        
        * *     "You're not really a machine["], are you? There isn't a machine in the world like you."
        
        * *     "If you're a machine, you're a learning machine["]." 
        
            If she's going to act more mechanical than she strictly needs to be, then she has no excuse to forget that she's not an inconvenience to talk to. And you let her know that.
        
        - -     \[o.o\] You are quite philosophical, are you not? I have a lot to learn from you.
        
                \[^-^\] Let's do our homework together some time!
        
        * *    You would love nothing more. 

*   "You say that like it's a chore["]. It's bad for you to go around thinking you're inconveniencing people just by talking to them."

        l: \[ovo\] You sound just like my therapist. 
        
        l: \[<.<\] Maybe you have a point. I will try to be better.
        
        That still sounds bad in its own way, but you know. Baby steps.
        
        * *     "Do you promise?"
        
            l: \[^_^\] Pinky promise!

-   Satisfied that her shadow will not inconvenience others for the time being, Lulu settles down on her haunches. She sits sort of like a cat, a sphynx with eight legs and plated in armisteel.

    She's cute, even.

    It isn't noon, and the sun is already somewhat overwhelming. Without thinking, you duck under her chassis for a little shade.
    
*   "Sorry["], I forgot you were there."

-   l: \[ovo\] Hehe, I have not heard that one before.

    l: \[-v-\] It is good that you are there, however, since I was intending to ask you...
    
    A small clang, and a slot spits out a sheet of something like a printer. It's a sticker sheet.

    l: \[-_-\] It is a little embarassing to admit, but I cannot put any of these on. Would you mind?
    
*   With pleasure.

-    ...
    
    l: \[^o^\] Hehe! Careful, that tickles!
    
    l: \[._.\] That is a joke. I cannot feel anything on my exterior.
    
    Is that so? You file this information away for later.
    
    l: \[-v-\] It is funny. Everyone says I am powerful, but I cannot do much except move heavy things around.
    
*   "Powerful, or Strong?["] It's easy to take what you can do for granted, if you only look at what others have."

*   "It's kind of like Intelligence["], right? There's no metric or anything, people just see a vague pattern and put a label on it."

-   l: \[._.\] People are not so good with nuance, are they?

    l: \[^-^\] What a funny world we live in!
    
    ...


    And that, honey, is how you came to be friends with the world's largest normal girl.

-> END