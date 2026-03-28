
VAR PLAYER_NAME = "PLAYER_NAME"
VAR MAP_KEY = "MAP_KEY"
VAR VOTE_KEY = "VOTE_KEY"

-> intro

=== function l(face) ===
~ return "[{face}]"

// intro. something vaguely sentimental.

=== intro ===
How do people know each other?

I ask myself that question a lot. It takes a long time, even years, to form real connections with people.

Even then, you still might not meet anyone. It's possible to go your entire life without ever making a single friend.

How do you escape this fate? How can one avoid being the bird caught in the pipes?

...

I don't know. I don't know if I'll ever know.

I think. I think if I keep looking for things I have in common with others, I might have a fighting chance.

We live in a time where you can meet people from everywhere, people who feel like they're from entirely different worlds. 

Everyone has existing relationships, in-jokes, histories with each other I might never understand.

But if I can find something in common with them, it doesn't really matter who they are or where they came from.

All we really need is the here and now. I want to find a here and now to share with someone I don't know yet.

\=== MODFEST: Animation, Affection, Academia ===

*   --  Sakura Academy Secondary High --

-   Here we are. Your new life.

    You step out onto the platform and wait for the steam to clear.
    
    It's awkward to transfer to a new school in the middle of the year. Sadly, it's not like you had a choice. Best to make the most of it.
    
    The "it" in question looms over the trees in the distance. Your new school. It looks like you have a hike ahead of you. 
    
    Someone told you during the ride that there's no classes today because the Spring Festival is being held. Lucky!
    
    You had better run if you don't want to miss it.

    \~ NOTE: the sections introducing the different characters will appear separately along the path. We'll add in tutorial text either presented by them or alongside them.


// Ananas: Hey, you're the new kid right? looks like you got here too late to help with a booth–why not help us out and join the festival committee? The others should be around here somewhere.


*   -- Ananas --

    There's a banner here welcoming visitors. Next to it stands a table full of fruit. Among them, a particularly large pineapple stands out from the rest.
    
-   (fruit)

*   [Examine fruit] At least half of these you've never seen before. Berries that feel hot or cold to the touch. Some kind of round pink melon thing that pulls on you like it has its own gravity well. Strange stuff.
    -> fruit

*   "Don't mind if I do["]," you think to yourself. A small knife and plates are set in a corner of the table.

    ...
    
    a: Yeeouch! Watch where you're waving that thing!
    
*   ["Mind if I do"] "Pineapples? Gross." you mutter. Really? Pineapples? You glance around to be sure nobody is about to make annoying pizza jokes.

    a: Yeah, awful stuff. I made sure to not order any.
  
- 
*   "A talking[ pineapple?"]--" you start, then think better of it. The orientation materials mentioned there would be students from all over. Time to make a good first impression.

-    a: Nice uniform. You the new kid?
    
*   "Who's asking?["] You a cop?"
*   "Yeah.["] Wait, where's your uniform?"
*   "I just dress like this."[] You aren't even lying. It looks great on you, by the way.

-   a: Haha, a funny one too. I think we'll get along.
    
    a: I'm Ananas. I call the shots on the festival committee.
    
    a: Looks like you haven't customized your name tag. Here's a marker, you can use it with /nick to let everyone know what you go by.
    
    ...
    
    a: Say, you didn't get a chance to help with any of the booths, did you? Tell you what. We still have a bunch of prep to do. Fires to put out. How about you help us out on the committee?
    
*   "Sure!"
*   "I'm a little busy."
*   "I am so small I don't know how I can help..."

-   a: Great stuff. Welcome aboard. The other committee members are up ahead getting the entrance ready for our first visitors. I'll catch up with you later.

    a: Good luck out there!
    
// Shrimple: "Do me a favor and hold this?" Hands you an enormous pot of an unknown fluid, then samples it. "That'll do it. Hits the spot. Thanks partner."

*   -- Shrimple -- // map
    
-    A chef-shaped girl sprints down the path. She carries a large pot of a pleasant smelling something.
    
    s: Hi! Hold this please! Be right back!
    
    She is gone as quickly as she arrived. You peer down at your new possession. You can't remember the last time you saw such a large bowl of chili.
    
    s: Th-
    
    She takes a big puff of her inhaler.
    
    ...you see a few bubbles float out?
    
    s: Thanks, bud. I'm wearing an awful lot of hats today. Food safety's no joke!
    
    The very distinctive shock of hair spilling out from under her hat begs to differ.
    
    s: Sorry for interrupting the festivities. You run along and have a good time now, yeah?
    
*   "I'm a new student here["]
*   "I just joined the committee["]

-   <>, actually," you reply.

    s: By rights you are, ain't you? Ananas just told me about the new member. Welcome to the committee! I'm Shrimple, by the way. Don't ask why. Vice President.
    
    s: Let's see, what's a good first task? 
    
    She snaps her fingers and you jump. It sounds like a pistol going off.
    
    s: Got it. We had another member of the committee sketch out the map, but they're not the most, uh, reliable.
    
    She hands you a neatly folded (but slightly crumpled) piece of paper.
    
    s: Think you can go and double check this? You can press < {MAP_KEY} > to use it.
    
    She steps back and sighs, taking another hit of her inhaler.
    
    s: Long day ahead of us, bud. I'll see you around.
    
*   Those are definitely bubbles[]. Is the hair not just for show?
*   [I'm from the ocean and this looks normal to me]
-   //-

// Plume: When you first meet Plume, they'll be standing near the door pouting. They're evasive about the fact that they can't open the door and get in. When you open it, they rush in under you without any comment or thanks.

*   -- Plume --

-   Further down the path, a shorter student paces impatiently by the door to an equipment shed. They look to be in an awful mood. They shake the door handle furiously, then resume their pacing.
    
*   Maybe you shouldn't bother them?[] Too late, you've been spotted. 

    They storm over, look like they're about to say something, change their mind(?) and storm back to the shed.
    
*   "Need help?"[] They shoot you a glare promising that you are now on strike two. You'd hate to see what happens at strike four.

-   Seeming to have made up their mind on their course of action, they proceed to sulk near the door and mess despondently with their skates.

*   You try the door[.]

*   "Are you on the committee[?"]? Ananas said to check in with everyone."
    
    A flash of recognition in their eyes. Mumbling.
    
    p: "c... .et i...."
    
    * *     "Beg your pardon?"

    - -     p: "I can't get in! Open it up!"
    
            They stomp their foot. Curiously, no sound is produced. Better give them what they want.
    
-   The door swings open easily. Why did they have so much trouble getting in?

    The student rushes in under your arm before you can even step aside. Not a word of thanks.
    
*   "What gives?"[] What a rude, edgy person.
*   "Can I ask your name?["] I'm {PLAYER_NAME}."

-   The student extends their arm from the darkness of the shed to share with you a rude gesture. They aren't interested in introductions right now.

    ...

    You hope there wasn't anything important they were supposed to tell you.

// Barebones: Didja see that kid around here by any chance? Needed their help with a lil somethin'. Oh, yous on the committee now? Welcome to the big leagues, hotshot. See ya around.

*   -- Barebones -- // voting

-    A few turns later, a strange bony creature is setting up some tables with boxes and stacks of paper. 
    
    No, wait, that's a student. Everything's a student at this school. And he's writing something on paper after paper and stuffing them into one of the boxes.
    
    b: Help me out here, will ya? Just tick this spot on each of these and put 'em in the box.
    
*   (committee) You [tell him about the committee] inform him of your new position on the committee.
    
    b: Yous the one the boss was telling us about! I was just, uh,
    
    He turns the box over and starts pouring papers into a waste bin.
    
    b: Testing that the ballot boxes are all working!
    
*   You assist him[] in his painfully obvious racket. Having some blackmail on him will be useful. How Machiavellian of you.

    b: Say, yous a new student or something? I ain't seen you round here.
    
    * *     "I'm on the committee." -> committee
    * *     (crimes) "Something like that."
    
        b: Fair enough. Let's just keep this little operation between you and me, yeah? Here's a dabloon for your trouble.
        
        He offers you a currency you do not believe is accepted in any modern state.
    - -

-   b: By the by, didja see a kid with skates on the way here? Bright hair, tiny. Don't tell them I said that. Goes by the name Plume. Kinda scary but don't tell anyone I said that either.

    b: Needed their help with{crimes:-> does_crimes|-> no_crimes}
    
-   (does_crimes)
    <> procuring some more papers, if you know what I mean.
    
    He winks, somehow. -> barebones_continues

-   (no_crimes)
    <>,
    
    he pauses,
    
    b: something to keep them out of trouble. Little rapscallion always getting into some mischief, yeah?

-   (barebones_continues)
*   "Yes."[]

    b: Yeah? Where?
    
    * *     You point towards the shack[].
    * *     You point away from the shack[].
    
    - -     b: I knew it.

*   "No."[] Doesn't count as seeing them if you didn't catch their name. That could have been any blue-haired punk with skates.

*   (lying) \ (lying) "No."[] Keep an eye on this one, honey. Something's up.

    b: I thought as much. Slippery little snail, eh?
    
-   He offers you a handshake. It seems... safe.

   b: Thanks for keeping it real with me, buddy. {crimes:I owe you one.} The name's Barebones. Treasurer, esquire.
   
    {not committee:b: You're a real help, y'know? I'll go see if I can get Boss to put you on the committee. We could use another {crimes: of us on the inside.|gulli- er, trustful member.} He mentioned someone else was about to join, too...}
   
   b: Lemme finish these and I'll catch up with yous and the crew later.
   
   You glance around. There are a number of boxes with names like "most innovative" and "funniest mod." Mod? What's that?
   
   Barebones catches your gaze.
   
   b: Boss didn't tell you how this works?
   
   b: You use /vote or press \< {VOTE_KEY} \> to vote. You get to pick your favorite project (we call 'em "mods"), plus some other silly awards.

-   (barebones_questions)
*   "What about the papers?"
   
   b: The paper's for people who take it traditional style. I like 'em for other reasons. -> barebones_questions
   
*   "What if I like multiple mods?"

    b: It's a gray area. Just pick a handful, nobody's gonna come after yous. -> barebones_questions

*   [\[END\] You think you understand.]

-   Barebones glances around for eavesdroppers. Lucky for him, most forests do not have eaves. 

    Besides a woodpecker whittling away and a burbling stream somewhere to the east, It is deathly quiet. There is absolutely nobody else nearby.
    
// Ugg: Ugg almost trips over you "Ugg is sorry. Ugg nearly fall on you because you are so small!" Gentle giant.

*   -- Ugg --
   
-   b: Advice: Don't bother with voting on any other booths. I hear it's all rigged. Just vote for mine, it's the one--

    Barebones is interrupted by a large boulder. On top of him. It lands with a sickening crunch.
    
    From behind the boulder steps one of the largest men you have ever seen. It's hard to get a grasp on his size. If he's responsible for the boulder, you pray that this, too, is another student.
    
    u: Ugg is sorry. Ugg almost drop rock on you because you are small! Ugg eyes not so good.
    
    He's a student, alright.

*   You tell him [about Barebones] that he killed Barebones. 

    u: Aaaaugh! Ugg in trouble! Ugg in big trouble!
    
    He peeks under the boulder, lifting it effortlessly with one arm. There's nothing there but dirt. He laughs.
    
    u: Ugg see. You play prank on Ugg! Ugg think  you are funny! <>

*   You whisper a thanks to whatever it is you just prayed to.[] 

    u: <>

-   Are you also student?

*   [You tell him about yourself.]
*   You [don't tell him about yourself.] strike a sort of brooding, mysterious pose. 

    u: So you are student! Many student stand like that at Ugg.
    
    No points for creativity. <>
    
-   You explain the situation with the committee. He nods understandingly.

    u: Ugg not really understand, but Ugg welcome new friend to committee. Ugg happy to work with new friend!
    
    Ugg heaves the boulder over his head. Faster than you can comprehend, he catapults it over the hill. 
    
*   Wasn't that towards the train tracks?
   
-    u: Ugg is event coordinator. Ugg have many boulder to clear. Some paths blocked still. 
    
    u: Ananas say use < /warp > if visitor want to go to place fast. New friend is visitor because new friend is here, Ugg think? 
    
    The large man turns away and gives a friendly wave with hands that could crush a mountain.
    
    u: Ugg see new friend at festival. Look out for big rock!
   

// Lulu: Almost steps on you. "[O.O] Oh my goodness, are you okay?? Welcome to the committee!" Gentle giant, in training.

*   -- Lulu --
    
-   With Ugg gone, you are left with a distant metallic thumping sound you can't place. Drums from the opening ceremony? They crowd out the otherwise peaceful stillness. You listen closely...

    A rattling, creaking sort of noise emanates from the boulder's former position. With relief, you see that Barebones was only pressed deep into the mud.
    
    The bones, while spread out, are pulling back together by some unknown force. Barebones will be okay.

    With everything you've seen by now, you have to ask...

*   Does this school have any normal people?

-   b: Whuhhhhh
    
    b: Whuh, what hapefnd. What happened? I in hell? Again?
    
    b: Oh yous is still here. Help a pal out, would ya?
    
    He extends a bony appendage that is possibly an arm to you.
    
    b: That's right. We'll be out of here in no ti--
    
    The world goes dark. Another sickening crunch, drowned out by a massive hollow peal from everywhere at once.
    
    In front of you is a wall of darkness. Your world is draped in shadow. You look up.
    
    The only thing you can see is your imminent your death. This is it. This is the end.
    
    l: \[O.O\] Oh my goodness, are you okay??
    
*   ...
    
-    l: \[;-;\] Did I damage your hearing? I am so so sorry, let me go find a nurse!!
    
    You have never heard a girl's voice carry so much empathy in your entire life.  You have, for that matter, never seen a machine larger than most buildings speak with such a voice. Wait.
    
    Of course. Of course, of course. This looming nightmare is so obviously a student of this absurd academy as well. Could you not tell?

-   (lulu_talk)
*   You [tell her you're okay] squeak out that you're okay, to the best of your ability.

    She visibly, and quite audibly, relaxes. -> lulu_talk

*   You tell her [she crushed Barebones] about Barebones, couched in the least accusing terms possible.

    l: \[O.O\] What! Not again!
    
    It is becoming clear that Barebones is not one of god's favorite boys.
    
    l: \[u_u\] Uwah, he is going to be so mad at me...
    
    There is a metallic chirping that is for some reason evocative of an anxious girl wringing her hands with worry.
    
   l: \[>.>\] May I ask you a favor? Do you mind not telling him about this when he wakes up?
    
    * *     "Sure["]," you reply. First impressions and all. No other reason.
    
    * *     "I don't know about that."
    
            l: \[>_<\] I understand. I am sorry for asking that of you. It counts as lying, now that I am thinking about it.
            
            l: \[¬_¬ꐦ\] I freaking hate when Barebones lies to me about the budget...
            
            You make a vow to yourself right here and now to never ever lie to this girl.
    
    - -     She notices the expression you are making. You, too, notice the expression you are making.
    
            l: \[>.<\] Nononono I do not mean it in a bad way! This is my fault, do not worry about it.
            
            Once again, that lovely voice helps you forget you are standing under a superweapon that likely surpasses most other kinds of superweapons. 
            
            Sorry, that one wasn't very clever.
            
    -> lulu_talk

*   ->
    
-   She lowers herself gently to look at you. The whirs and moans of impossibly huge pistons and motors demand a rigidity contradicting the girl's impossibly graceful movement.
    
    l: \[ovo\] You are the new transfer student, right? I came right over when Ananas told me about you. I am happy to begin working with you!
    
*   "Charmed["]," the only thing you can think to say. 

-    l: \[^_^\] So polite! I am Lulu, secretary of the committee.
    
    She does a little tippy tap dance, shaking the very earth. Barebones must consume insane amounts of calcium if this is a regular occurrence.
    
    l: \[-v-\] If you ever have any questions, I am always just a few steps away.
    
*   You think you'll get along[] swimmingly. And who knows... maybe you'll get to know each other better as time goes on? 
    What a strange and fascinating world we live in.

*   You're uncertain[]. If you'll be working with each other regularly, you hope you'll learn to get by under these conditions.

    Don't worry, honey. You'll get to know each other very well, soon enough.
    
-   l: \[ovo\] Before you go, do you mind helping me with something?

    A slot on her chassis slides open with a violent thunk. A cute red backpack falls out.
    
    l: \[o_o\] Some students have been losing their belongings since our festival is so big. Could I ask you to grab them for the lost and found if you find any?
    
    l: \[-n-\] I would, but...
    
    
*   "You can't reach?"
    
    l: \[>.>\] ...
    
    l: \[¬_¬ꐦ\] Yes. I am sorry.
    
*   "You're too busy?"

    l: \[>.>\] I, um. Yes. I am really, really busy.
    
    l: \[^_^\] Thank you so much for understanding!

-   You can't possibly say no to such a sweet girl. To say otherwise would be an illusion of choice.

    l: \[-v-\] Thank you! A few notes: This is a special backpack that tracks what items everyone is missing. You can use it or just run < /shards > to check your progress.
    
    l: \[^v^\] I am not sure why the items are called shards! Probably some technical reason! They are not even items, really...

    l: \[ovo\] I will see you later! Have fun at the festival!!!
    
    She saunters off. You quickly follow, not wanting to disclose to Barebones the circumstances of his misadventure.
    
*   -- Get ready!!! --

-   a: There you are, I was looking for ya. Did you meet the gang? All set for the festival? -> ananas_qs

-   (ananas_else)

    a: Anything else?
    
-   (ananas_qs)
+   About /shards
    
    a: You can check < /shards > or the backpack Lulu gave you to see what shards you're still missing.
    
    a: Why are they called shards? Lulu's the smartest one on the committee by far. If she couldn't solve it, then its a mystery for the ages. 
    -> ananas_else

+   About /vote

    a: You can use < /vote > to pick out whichever mods and booths deserve an award. Easy.
    
    a: If Barebones tells you any conspiracy nonsense about vote rigging, you tell him I got my eye on him.
    
    a: And report to me directly if you see him loitering too long around the ballot boxes. 
    -> ananas_else

+   About /warp
    
    a: < /warp > will shortcut you to any mod's booth, plus a few public areas. 
    
    a: It's a perfectly safe spell, except Barebones refuses to use it. He told me a buddy of his got stuck inside a magic toybox for weeks. Poor guy is traumatized. 
    -> ananas_else
    
+   About /map

    a: < /map > or pressing < {MAP_KEY} > will show you where you've been. Let me know if you spot any errors. 
    
    a: I'll even get ya something special once you check all the booths, how does that sound? 
    -> ananas_else


+   [\[END\] Let's get this show on the road.] You're ready for the festival.

    a: That's what I like to hear!
    
    He leans in conspiratorially, gesturing for you to come near.
    
    a: ...one last thing. I don't know if you've heard, but this school's got a special tradition.
    
    a: If you get close enough to someone, find out what their favorite flower is.
    
    a: Students show their affection, romantic or platonic, by giving that favorite flower to that special person during the Spring Festival.
    
    a: It sounds silly, but I've seen some of the deepest loves and friendships bloom in even the first day of meeting someone.
    
    a: There's something about the Spring Festival that lets people open up and come together in ways I haven't seen anywhere else I've lived.
    
    a: And buddy, I've been everywhere.
    
    He steps(?) back.
    
    a: That's all from me. Go make yourself useful, and don't be afraid to hit up anyone on the committee if you need a hand. We're all here for each other.
    
    a: Have fun! Make some memories!


-> DONE

// Ananas: They're all different in their own way, but they're good folks. Thanks for helping out. Have fun!


// By the way, before you go. (explains flower tradition)

// tutorial: shards, warps, map, voting




-> END