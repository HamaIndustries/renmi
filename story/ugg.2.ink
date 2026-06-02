Ready?

*   Let's dance.
-> ugg_2

== ugg_2 ==


#alias actor a ananas
#alias actor b barebones
#alias actor p plume
#alias actor l lulu
#alias actor u ugg
#alias actor s shrimple
#require act modfest:ananas_1
#require act modfest:barebones_1
#require act modfest:plume_1
#require act modfest:lulue_1
#require act modfest:ugg_1
#require act modfest:shrimple_1

//ACT 2: Ugg buys a treat for Plume, who Shrimple mentions really should not have any more sugar. Ugg says its fine, you've all been working hard, and gets treats for everyone else. It turns out that Ugg comes from money, but he doesn't want to rely on it--he might have trouble, but he loves learning even if its difficult. But he'll never miss an opportunity to take care of his friends, including you now.

    u: There go, little boy. Girl? Ugg not sure.
    
    Fortunately for Ugg's large, easily punchable face, Plume is too engrossed in their little treat to get indignant.
    
    s angry: Ugg! Thought I said not to feed the the kid sugar?
    
    u smile: And here one for shrimp girl.
    
    s embarrassed_side: Grrr. You get a pass, just this once.
    
    a: Thanks for hooking us up, Ugg!
    
    b aura: Yeah, what the boss says. Yous a real one, big man.
    
    u grin: What flavor <PLAYER_NAME> like?
-   (flavors)
*   (choco) Chocolate[] always has your back. If it wasn't the best, it wouldn't be the most popular candy.

    p: Chocolate's not candy, it's chocolate.
    
    a: Oh yeah? What do you call a little treat full of sugar and wrapped in foil?
    
    p pissed: What do you call your face with a dent in it?
    
    a embarrassed: Whatcha think, big guy?
    
    u smile_blush: Ugg not have chocolate before today. Ugg think chocolate yummy.
    
    What counts as a treat in the paleolithic? Chalk?
    
    p pout_side: But that doesn't make it candy!
    
    b: 'course it's candy. Take it from the expert. Tell 'em, miss expert.
    
    s neutral_side: I'm sitting out of this one.
    
    What do you think?
    
    * *     Chocolate is candy[].
    * *     Chocolate is not candy[].
    - - 
    Everyone will remember this.

*   Vanilla[] is underappreciated. It's not the absence of flavor. In fact, it's derived from the vanilla plant. Why, then, do we think it plain?

    s smile: 'cause it's so tasty.
    
    u grin_blush: Ugg love vanilla.
    
    p pout_side: yjsr tsdfe is sgit
    
    l neutral 5: \[^o^\] You should chew your food, Plume! I hope I do not need to deploy my medical suite.
    
    Plume tries say something snarky, but catches some treat down the wrong pipe.
    
    b frown: That plain jane run a' the mill stuff?
    
    s embarrassed: Hardly. The flavor's so complex, we put it in everything.
    
    s embarrassed_side: It's when they started adding chocolate chips and all that its name got tarnished.
    
    s frown: It's in lots of that bland junk they make to cover up the taste. Actually, that's vanillin more often than not. Shameful ingredient, in my purview.
    
    a: If it's so flavorful, you could say *you're* a bit vanilla, eh Shrimple?
    
    s: ...
    
    a embarrassed_blush: Sorry. I guess it's not the best flavor for *everything*.

*   (strawb) Strawberry[], our neapolitan sweetheart.

    a: Also known as the bestberry.
    
    s: It ain't a berry.
    
    {choco: Not again.}
    
    {choco: p pissed: You guys are the worst.}
    
    b frown_sweating: The air getting to your head, lady?
    
    s angry: You hush, 'bones. 
    
    s smile: The meaty part is just an accessory. What you folks think are the seeds are the real fruit.
    
    b frown: That's. That's weird.
    
    b frown: I'm gonna try and forget that.
    
    a sad: Forget the bestberry? How could you, BB?
    
    b: Don't call me that.

*   (poison) Poison[]? That's a freaking flavor?
    
    s: Poison is a local favorite in some towns.
    
    b: Yeah, *my* towns, sister. Doesn't get better than this.
    
    He takes a heaping bite of radioactive green treat. It falls straight through his jaw to the floor. He doesn't seem to notice.
    
    s frown: You dropped something there, 'bones.
    
    b frown_sweating: Eh, where?
    
    he says, bits of poison spraying about. A few hit the floor, then dissolve straight through it. 
    
    a: Don't worry about it. You think you could stand over there while you eat, though?
    
    a embarrassed: The, uh, smell's a little strong for me.
    
*   {flavors == 2} Unknown[]... It's hardly even there. You'll have one of those, please.

    s: One of what?
    
    It's gone.
    
    a sad: You okay, buddy? It looks like you saw a ghost.
    -> flavors
-   
    {flavors < 5: Are you happy with your flavor?}

+   {flavors < 5} [Try something else] -> flavors
*   Let's dig in[].
-
    u worried 2: Does Lulu want one? #hide ananas #hide plume #hide shrimple #hide barebones
    
    l neutral 5: \[^-^\] I am afraid I must pass. 
    
    u: Ugg find thing for Lulu.
    
    l: \[ovo\] You are such a sweetheart as ever, Ugg.
    
    l: \[-v-\] But I do not think you will be able to find a treat for someone like me.
    
    u grin: Ugg see about that. < PLAYER_NAME > come with Ugg. Ugg need help.

-   (questions)
*   [What about the others?] There's still quite a bit of tension in the air. {poison: And holes in the floor.} 

    {choco: Plume's still making the stink eye at the others over the chocolate thing.} {strawb: Barebones looks a little queasy from the strawberry revelation.}

    Removing Ugg and Lulu from the equation, the strongest and most levelheaded members of the committee, is a dangerous proposition.

    l: \[^-^\] I will stay behind and keep the peace.
    
    If anyone's built for keeping the peace, it's Lulu.
    -> questions

*   What [are you interested in?] do you get for the girl who can destroy everything?

    l: \[ovo\] That is a good question. Allow me to access my silt drives.
    
    l: \[...\]
    
    l: \[ovo\] I think I like flowers, stickers, and spending time with friends.
    
    l: \[^v^\] But I do not want to eat any of those!
    
    It wasn't even a concern until she said that.
    
    u neutral 3: Ugg not see what Lulu eat. Lulu have efficient dietary composition.
    
    Apparently, all his skill points for grammar were shunted into vocabulary. Your exposure to Ugg thus far has offered a deep glimpse into the mind of early man.
    
    l: \[-v-\] My fusion core can sustain me almost indefinitely, although it likes to be topped up from time to time.
    
    l: \[^-^\] It <i>has</> been a while. I suppose I could go for a little deuterium right now!
    
    * *     Where do[ we get that?]es one procure deuterium at a school festival?
    - -     
    u smile: Nuclear physics lab.
    
    l: \[^-^\] Nuclear physics lab.
    
    * *     Nuclear physics lab??
    - -     
    u worried: Ugg take favorite class there. Only, Ugg grades not so good...
    
    l: \[o_o\] I am sorry that I have been too busy to tutor you lately, Ugg.
    
    u worried: Lulu not need to apologize. Lulu busy committee secretary. Ugg need be better student. 
    
    l: \[-v-\] I will not hear a word of it. I expect you to meet me around lunch time for us to begin!
    
    It's a date.
    
    l: \[>.>\]
    
    l: \[...\]
    
    l: \[o-o\] Say, < PLAYER_NAME >. I have reviewed the schedule, and it appears that you will be taking the class with us for the remainder of the term.
    
    The school had assigned your schedule last minute based on its course requirements. Your tumultuous journey here was a bit of a distraction from that important detail.
    
    I hope you included "experience with nuclear physics" in your lore, honey. This could be a rough term for you.
    
    l: \[-v-\] I expect to see you at lunch time, too. We have a lot to catch up on, together.
    
    * *     Sure[], you could use a review. Or a crash course. Lore, honey. It's important. It's never too late to make something up. 
    
    * *     Not today[], the festival is already a lot to take in. 
    
        l: \[ovo\] Amazing, you are that confident that you will do well on the exam tomorrow?
        
        Are you?
        
        l: \[^-^\] In that case, do you mind helping me in tutoring Ugg?
    - - 
    Make it a triple date, then.
    -> questions
*   ->
-
    Let's go find some Deuterium. #hide lulu #hide ugg
    
    //TODO: Deuterium fetch quest? involve the baking soda volcano?
    ...
    
    That should not have been so easy.
    
    u grin: Ugg happy science easy for student at academy.
    
*   Where are the others?
-
    Even Lulu is missing. She has to be sitting somewhere; You can see her from literally anywhere on campus, normally.
    
    In the course of your search, you spot the prices for the treats from earlier.
    
*   Why does it cost that much[]? That's kind of insane? 

    You crunch the numbers... Ugg must have spent quite a bit of his pay on this, if he even gets paid. The student handbook prohibits students from working more than a handful of hours every week. 
    
    Meals are free, but you'll still be a bunch of broke kids going window shopping when you hit the town.
    
*   You keep it to yourself[]. Wherever Ugg gets his money from isn't your business.

    If it was Barebones, you'd know immediately that it came from the clubs coffers. That, or you'd reach straight for your own cash just to be sure Plume didn't nick it.
-   
    Ugg catches your gaze and follows it.
    
    u: < PLAYER_NAME > not worry. Treat worth it for friends.
    
*   "But that's so much."
-
    u: Between < PLAYER_NAME > and Ugg, treat very small deal.
    
    u: Ugg not hurt for resource.
    
*   [What about the uniform?] You thought he couldn't afford a new uniform. Is that not the case?

    He squirms sheepishly.
    
    u worried: Every uniform Ugg wear look good until Ugg leave store.
    
    u: Then uniform explode.
    
    u worried_blush: Ugg buy hundred uniform then give up.
    
    With his dialect, there's no way to distinguish whether he means "a hundred uniforms" or "*hundreds* of uniforms."
    
    Who is he? Mansa Musa?
    
*   With a student salary?[] Really? Of course, you've seen what he can lift. Maybe he hires himself out as construction equipment in his free time.

    u worried: Ugg spend too much time study to work. Ugg know Ugg privileged. 
    
    u: Ugg parents own biggest rock in country.
    
    Ah. Quite so.
-   
    
    
*   Why does he go here, then? 
-
    As robust as the art program is, SASH is a thoroughly vocational school. With the assets his family has, he could likely do anything he wanted to, every day, forever.
    
    u smile: Ugg like learn. Ugg want stand on Ugg two feet.
    
    u grin: Learn hard. Money Easy. Ugg do hard thing. Give life meaning.
    
    u worried: But Ugg friend not all have easy life. Ugg not want privilege wasted.
    
    That's a hard balance to keep: Trying to live as yourself, without taking what you have for granted. It's a good thing that Ugg has a good handle on the nuance of his position. 
    
    Funny, a caveman with nuance.
    
    u grin: Ugg see Lulu! Lulu doing nervous step. Also smoke there.
    
    He takes your hand in his and pulls you along with surprising gentleness. 
    
    The hand is rough with calluses along the bases of his fingers and palm, but warm and soft everywhere else.

    u worried: Lulu light off. Very bad. Treat talk out of hand.
    
    It takes a gentle giant to save an even bigger, gentler giant.
    
    You know just who fits the bill.

    -> END
