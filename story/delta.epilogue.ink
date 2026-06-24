#repeatable
#require act modfest:tomorrow
#alias actor d delta



// (modfest:tomorrow) Even after the closing ceremony, professor delta watches over his greenhouse.

// ~ temp hasRevelation = run_command("execute if predicate {condition:'minecraft:entity_properties',entity:'this',predicate:{effects:{'bloom_festal:revelation':{}}}}")

You see Professor Delta in his greenhouse, tending to one of his plants.

~ temp knows_ananas_flower = run_command("execute if entity @s[tag=ananas_flower]")
~ temp knows_barebones_flower = run_command("execute if entity @s[tag=barebones_flower]")
~ temp knows_plume_flower = run_command("execute if entity @s[tag=plume_flower]")
~ temp knows_shrimple_flower = run_command("execute if entity @s[tag=shrimple_flower]")
~ temp knows_ugg_flower = run_command("execute if entity @s[tag=ugg_flower]")

Even though the Festival is ending soon and Tomorrow is quickly approaching, he's still diligently caring for his beloved garden.

* [Call out to him] You call out to the fox as he gazes at his garden. He jolts, nearly pushing over one of his own plants.

d shocked: ! Σβ:°<

d neutral: Oh! It's you! What's up, <PLAYER_NAME>, Didja need something? Σβ:°3

* Now's not a good time[]. He'll probably be here for the rest of the day, no need to fear.
    -> END
    
- (inquiry) Professor Delta's ears twitch in anticipation. Well, you're already here, honey. 
* [Ask about flowers]

Everyone's favorite flowers intrigue you. What does everyone like? What's so special about it to them? Surely the plant prof himself would know a thing or two.
 
 d happy: You wanna ask about flowers? Hell- I mean, heck yeah! <gray>shit... i'm not supposed to swear in front of students...
 
 d neutral_sweat: Hmm... by the way, did you read my field guide? It's with the apiculture club; I left it for them since they seemed so interested in how flowers interact with bees.
 
** [you read it]
    d happy: Yippee!! Σβ:°3
** [you didn't read it]
    d frown: Ah. I see.
 
 -- d happy: But, um, what did you wanna ask about, <PLAYER_NAME>?
 
Careful honey, he means business. The professor seems ready to yap for a good, long while.
    
    -> flower_ask

* Ask about berries
d happy: Berries !! I love berries. But, what about them?
You aren't quite sure. But surely, if the professor is being paid in them, they must be quite valuable, right?
d neutral: My favorites are melons, sweet berries, and glow berries! The latter two even have some delicious pies. I have some in my greenhouse! Feel free to take a bite or four if you so desire.
d neutral: I really love strawberries too, but they're not real berries in the botanical sense. I'm sure Shrimple talked about that already with you, so I'll save you the yapsession.
d happy: Still, that doesn't make them any less tasty!
d neutral: It's funny though, ain't it? Watermelons are berries, but strawberries aren't. Melons are known as a pepo because they have a tougher skin! So they're still berries, just a different type.
d: Cucumbers and pumpkins are pepos too. Cucumbers are tasty, but I suppose I understand why people call them vegetables instead of fruits in the culinary sense.
-- (berry_ask) {berry_ask==1:Cucumbers are berries? That's odd, but you nevertheless find yourself asking...}{berry_ask>1:Do you have any more questions?}
** (work) Do[ you really get paid in berries?]es Professor Delta really get paid in berries? The logistics of such a thing has been uncomfortable to think about.
d shocked: Oh! You mean the 2 berry salary thing?
d neutral: Nah, it's just an inside joke I have with the headmaster. I get paid an actual salary, I'll have you know.
*** What about his commission?[] Didn't his artist booth say Ananas paid a whole 10 berries for it?
d smirk: Obviously it's not true. I would never work for that cheaply ever in my entire life.
d confident_smile: Now, <i>four</i> berries on the other hand, I think I can get behind.
That's even less???
Oh. Obviously he's fucking with you.
d smirk: I'm just pulling your leg Σβ:°P
What a silly.
-> berry_ask
** [About strawberries]Clearly, the professor wants to give a so-called yapsession about these strawberries. What new things could he have to say?
d happy: Glad you asked! Now, other than it being an aggregate accessory fruit, it's also a hybrid! The variety we usually at least.
d neutral: The strawberries we eat, also known as the garden strawberry, is a mix between the wild Virginia strawberry and the Chilean strawberry. 
d frown: And, umm... what else.
d neutral: Pretty neat that we have two different strawberry cultivars on campus, right? 
d happy: One is quite lovely and would be excellent if it was made into a jam, or perhaps coated in some chocolate.
d: The other would make for a very nice treat! Perhaps as a pastry, confection, or even a simple berry bowl with some blackberries and blueberries.
-> berry_ask
** {work} [Ask about his work]
The professor puts in a lot of work tending to his plants. And didn't he spend hours making those cutouts? The poor guy can barely even stay in his house because of all the stuff he put on display for the festival.
d frown: ...
d neutral: I definitely had a lot of hats to wear this festival, didn't I?
d: Faculty advisor for many clubs, gardenkeeper, illustrator, you name it. This is probably one of our biggest spring festivals yet!
d frown_sweat: It's a bit exhausting, to be honest...
d smile: But, it's a good kind of exhausting!
d smile: I'm glad that it happened, and I'm glad you took the time to meet everyone on the committee! So much, and in just one day!
d neutral: I just, uh. Might need a moment to flop over whenever I get the chance. I'm quite lazy, you see. Σβ:°3
Is that really true?
-> berry_ask

** {berry_ask>1} That's enough for now[]. You leave the professor to whatever it was that he was attending to.

->END

* [Ask to be healed] With your many, many experiences wandering around the event, you find yourself absolutely exhausted. You could go for the Professor Delta special.

d confident_smile: Oh, sure!

    ~ run_command("effect clear @s bloom_festal:revelation")
    ~ run_command("effect give @s minecraft:instant_health 10")
    ~ run_command("playsound bloom_festal:heal master @s")

With a practiced elegance, the professor procures his staff and casts his healing magic on you. He also takes care to not harm you in this manner. How thoughtful!

~ run_command("effect give @s minecraft:saturation 10")
~ run_command("playsound minecraft:entity.generic.eat master @s")
~ run_command("schedule command 8t playsound minecraft:entity.generic.eat master @s")
~ run_command("schedule command 16t playsound minecraft:entity.generic.eat master @s")
~ run_command("schedule command 24t playsound minecraft:entity.fox.eat master @s")

He also handed you some of his berries. His precious, precious, berries. Wow, these berries are fantastic!
d happy: That better? Let me know if you wanna get healed again sometime, okay?

->END

-  (flower_ask) So, what will it be?
 
 
    * [Ananas's favorite flower]
    
 The president's favorite {knows_ananas_flower >= 1:sunflowers have piqued your interest. Hm, -> ananas_desc}{knows_ananas_flower <=0 :flower has eluded you thus far, even with Tomorrow soon approaching. Professor Delta surely knows something, right?}

d frown: Hmm... Ananas...? Not sure what flower he would like. 
d neutral: If I had to guess... maybe it'd be something really bright?
d neutral: Like, something very bright and yellow and happy. Y'know, the sunflower really comes to mind when I say that.

        **[the sunflower?]
    
    d happy: Yeah! Sunflowers are a very cheerful flower. Surely, someone like Ananas would appreciate that aspect of it.
    
    That makes sense, to an extent. I suppose you'll need to find out later, honey. But for now, ->ananas_desc

-- (ananas_desc) maybe the professor could tell you more about them?

d neutral: Sunflowers... They're associated a lot with the sun, and they're usually representations of happiness and warmth!

d confident_smile: Surely someone like as cool as Ananas would like them! They totally match his sunny personality.

d happy: Also! You can eat them! Σβ:°3

d neutral: The seeds are edible, of course, and the seeds are also commonly used for vegetable oil! Basically every part of a sunflower is edible and is said to be quite tasty when cooked.

d neutral: Hmm, that reminds me though. Sunflowers have this behavior called 'Heliotropism,' where they move their flower to face the sun. In the morning, you can expect them to be facing east!

A cheerful flower that faces the sun. They're a bright and happy natural compass that can help you find your way. As if they can provide a sense of direction?

d confident: You could say that. I'm really glad that the sunflower patch at the top of the trail by Tsubasa's Tears- the Sunlit Overlook- faces the east. It's a really cute spot to go to when you wanna watch the sun rise.

d neutral_sweat: Or... so I've heard. I like my beauty sleep so I wouldn't know. Σβ:°3

    * [Barebones' favorite flower]

 Barebones's favorite {knows_barebones_flower >= 1:red snapdragons have piqued your interest. -> bb_desc}{knows_barebones_flower <=0 :flower is a mystery. With Tomorrow soon approaching, there's really no time to waste.}

d frown: Hmm... Barebones...? I don't really know what flower he would like. 
d neutral: If I had to guess... maybe it'd be something like a snapdragon? A red one, even!
d confident: They're quite interesting, so you gotta hear me out on it.

    He guessed a flower, all the way down to the color? How oddly specific. ->bb_desc

-- (bb_desc) For now, let's just hear what the professor has to say about them.

    d happy: Hehe, have you ever seen a dried up snapdragon? Their seed pods look like little skulls!
    d frown: Sorry, maybe that's a little morbid. Σβ:°\|
    d neutral: Anyways, snapdragons come in a huge variety of colors, and did you know they're sometimes called toadflax? Oh, people also call them the dog flower too sometimes.
    d happy: Neat, right?
    The canine Barebones, liking a flower referred to as the 'dog flower?' What's with this dog motif, anyways?
    d angry: What do you mean, <PLAYER_NAME>? Do you have something against dogs?
    d frown: Whatever, I'll drop it.
    d neutral: What else...? Snapdragons are also known to symbolize deception and mystery. With their flowers resembling a dragon's mouth, what lies beneath its petally jaws?
    d confident: But, they're also flowers of strength and protection! It's a far more complicated flower than people tend to assume.
    How unnerving. The professor's description seem to hit the mark quite well. Yet, one question still remains.
    **  Why red?[] It's such an odd assertion to something he isn't even sure is correct.
    d neutral: Red! I like that color. It's a color of passion and love! Hmm... I guess that's not really that fitting for Barebones, right? I don't know if someone like him would have a soft spot. He's all bones!
    d shocked: ...Right?
    Clearly, the professor knows nothing about Barebones' interest in Yuri.
    d frown: I guess it's more a matter of deductive reasoning? Yellow's too cheerful and friendly, White's too pure and innocent, and Magenta's too sweet and mystical. That only leaves red.
    d frown: Although... hmm.
    d neutral: Y'know, I've seen a buuuunch of those red snapdragons all the way by the cemetery. I guess in a way, they protect the graves there so they may rest in peace?
    d neutral: I dunno, it's all just guesswork at this point to be honest with ya.
    

    * Lulu's favorite [flower] peace lilies sure are interesting. Surely the professor could tell you more about them?

d happy: Peace lilies! I know a bunnnnch about them.
d angry: They're a real pain to take care of, I'll tell you what. They're normally found on the forest floor in tropical areas where there's a ton of shade and it's super humid.
d neutral: Their leaves are super adapted to soaking in the sun because of it.
d frown: ...Meaning in the direct sun they'll die. It's no easy feat keeping Lulu's peace lily field healthy.

    ** How does she keep them alive[?], anyways? Even as tall as she is, not even she could be capable of shading the whole field for an entire day.
    
d happy: Glad you asked! I have this one spell I use. It conjures a little bit of petals everywhere, but it also lets me freshen up those peace lilies a bit. Plus! It lets me reinforce their leaves to make them soak up less sun!
d frown: I know, I know, it's not as scientific as you'd assume from the botany professor, but whatever works, right? 
d happy: Plus, it feels super good! Its healing effect is good on more than just plants. <gray>not undead stuff though, so dont use it around any undead folks please...
d neutral: I taught Lulu how it works so she can tend to the plants in many different ways, be it watering, shading them, or healing them!
    
    d happy: She took such good care of those flowers... I don't think I'd ever have the energy to keep a whole field of peace lilies alive in direct sunlight like that, even with magic on my side.
    
    d neutral: I guess you didn't come to me just for flower care facts, though, right? Lemme tell you more about what these guys symbolize.
    
    d neutral: Peace lilies are quite big; they can grow up to six feet tall! The flowers themselves are big too.
    d neutral: ...Sort of, at least. The big ol white thing on the flowers isn't a petal, but a modified leaf! It's the yellow thingy you see that's the actual flower.
    d happy: As big as these plants are, there's plenty of space for 'em in Lulu's heart. Σβ:°3
    d neutral: And then, of course, these flowers symbolize peace and tranquility! Speaking of, these plants are said to be particularly good at purifying the air.
    d happy: Really sounds just like a girl as sweet and kind as Lulu, right?
    
    * [Plume's favorite flower]

 Plume's favorite {knows_plume_flower >= 1:bird of paradise flowers have piqued your interest. -> plume_desc}{knows_plume_flower <=0 :flower is a mystery to you. Surely the professor can let you know what it is, with Tomorrow soon approaching, right?}

d smirk: You really don't know?
...Huh?

 d neutral: Look, that rooftop garden up top has one specific flower that you see the most. Any guess for what that is?
 
 -- (plume_guess) 
    ** Peace [Lily]lilies, of course. You did see how tenderly Plume cared for them, after all.
    d frown: Um, no. Let's try that again.
    Only one other option, it seems. -> plume_guess
    ** [Bird of Paradise]You recall seeing many bird of paradise flowers back in the rooftop garden. Could those be Plume's favorite?
    d smirk: Naturally Σβ:°P
    d neutral: I know the field guide says the gardening club set it up, but honestly the students complained about going up those stairs so much that we stopped tending to it for the past few years. The guide is a bit outdated, you see...
    d happy: It's Plume who put in the effort to rehabilitate it to how it is now! Isn't that amazing?
    d frown: I wish I could say that skill or passion for gardening was shared by some of <i>my</i> gardening club members... 
    d neutral: Phew... at least Plume's a member, according to me at least. They wouldn't be allowed on the roof otherwise!
    How intriguing, and perhaps irresponsible, of him. ->plume_desc
    
-- (plume_desc) For now, let's hear what the professor has to say about these flowers.

    d neutral: So... Bird of Paradise... did you know they resemble the bird family with the same name? Paradisaeidae, I mean. It's not a singular species.
    d happy: And... these plants are pollinated by birds' feet! They're said to be the only type of plant to do this.
    d happy: When a bird perches on their flower, the bird's weight causes the flower to spew pollen out onto the bird's feet! That pollen then is transported among other bird of paradise flowers to pollinate them.
    d neutral: Bugs don't normally pollinate bird of paradise flowers... I wonder why the bees at our apiary can? Maybee it's their bee specialtee?
    You might truly die from this. There is no going back from whatever bullshit the professor just said.
    d frown: ...
    The professor notices your expression. You, too, notice your expression. Perhaps you should grin and bear it for now.
    d neutral_sweat: Aaaaaanyways, bird of paradise flowers are said to symbolize freedom and joy! Their flowers do resemble a bird's plumage, after all.
    d neutral: I think that's really all that needs to be said? They're also a really huge flower, just like peace lilies, so they're usually the ones that 'make a statement' or define a bouquet of flowers.
    d happy: Neat, right?
    
    * [Shrimple's favorite flower]
    
Shrimple... Shrimple's favorite flower vexes you. {knows_shrimple_flower >= 1: Why a rice panicle? -> shrimple_desc}{knows_shrimple_flower <=0 :What would this chef-shaped girl even like?}

d frown: Hmm... Shrimple? That's a real tough one. 
d neutral: If I had to guess... it would have to be something edible.
d: You know what comes to mind? Alliums. A lot of types of alliums are the flowers of onions or garlic!
d smirk_smile: I loooooove garlic. I could eat garlic bread all day!
d neutral: Ahem. I digress.
d: Broccoli comes to mind, too. The vegetable people eat is actually a flower! It's real tasty when roasted...
d frown: Although, that's not really present in SASH, is it? We really oughta fix that.
d neutral: What about basil? Or mint? Their flowers are pretty nice!
d: Hmm, but thye're not grown on campus, either...
d confident: I think... a rice plant! Simple as that!

    He guessed... rice??? ->shrimple_desc

-- (shrimple_desc) Let's just hear what this fox has to say about it.

    d happy: So, rice. Rice is a real classic staple, but it's also quite simple.
    d neutral: Hell, I make rice for myself all the time! It goes well with a lot of foods.
    d frown: <gray>wait... I cussed again.
    d neutral: But yeah, it does well with lots of foods. Sometimes you just need something simple to accentuate some more flavorful food it complements!
    d happy: As simple as that! <gray>urgh.. now i'm hungry...
    d neutral: Back on topic! Rice actually does have flowers, but that's in an inedible state. You can't eat it just yet! Surely Shrimple wouldn't like a flower like that?
    d neutral: Besides, the rice plant's flowers aren't much to look at. The flowers are so small, and the petals aren't even visible.
    d angry: Do NOT confuse it with the rice flower, by the way! That's a completely different plant! One that doesn't even give tasty grains, either.
    d happy: No, I think what's really appealing about rice crops is the panicles. Their large droopy husks sure are a sight to behold!
    d neutral: It's quite the simple plant. Not sure what else is there to say beyond that, other than the sacred rice paddies in Crysanthemum's city park.

    * [Ugg's favorite flower]
    
Ugg's favorite {knows_ugg_flower >= 1:torchflowers piqued your interest. -> ugg_desc}{knows_ugg_flower <=0 :flower is an enigma. What could it be?}

d frown: Hmm... Ugg? I'm not 100% sure what his favorite would be, sorry.
d neutral: What about... the torchflower?
The professor's guess is as good as any's. ->ugg_desc
    
-- (ugg_desc) Let's hear what he has to say about them.

d happy: You know, we actually didn't have any torchflowers growing in SASH before Ugg showed up. As a species that should be extinct, it's really miraculous they're here at all! 
d frown: The same could be said for the pitcher plants though, I suppose? I dunno, Ugg never seemed to be one for cool tones.
d neutral: Torchflowers, on the other hand, are quite bright. Perhaps not in the literal sense, but it is said to have been a catalyst for our prehistoric discovery or invention of fire! Arguably, at least. We just don't know.
    ** [We just don't know.]
d happy: Torchflowers share quite a bit of similarities with the Kniphofia genus, by the way! Did you know, that genus is also known as the red hot poker? What's next, some kind of ice cold spade?
d neutral: Another name that Kniphofias go by is the torch lily. Probably because of their bright warm coloration!
d: But I digress. I heard that these flowers have vision-enhancing properties, like if they could help you see better in the dark? Torch is a fitting descriptor for it, in more ways than one.
d: Oh, have you see that one cave, by the way? The one below the waterfall. It's a bit of a journey, but it's soooooo worth it! There's just so many rare or prehistoric plants in here, it's such a treat! 
d frown: I really don't know all too much about how to care for them though. Sorry! I need to learn new things just like everyone else.
    
    * [Delta's favorite flower]
    
    The professor's favorite flower is an enigma. What could our resident gardening expert possibly have to say about his own favorite flower?
    
d smirk: Oh, my favorite flower? Not telling!
d neutral: A big reason is because I simply don't have a favorite, in all honesty. 
d: Hmm. I think a more productive exercise would be: what flower do you think is an apt representation of myself? I'd love to hear your thoughts.
d: No need to bring it to me or anything; it's just a mental exercise. Have fun with it!
    * {flower_ask == 1} [The Headmaster's favorite flower]
    d frown_sweat: Umm... <PLAYER_NAME>, I didn't quite catch that, if you said something. Are you alright??? Σβ:°<
    
    Are you alright, honey? You seem a bit out of it. Why don't you drink some water?
    
    d frown_sweat: You were kind of just staring into space while mumbling... I'm going to need you to speak up, okay? Actually, y'know what?
    
    ~ run_command("effect clear @s bloom_festal:revelation")
    ~ run_command("effect give @s minecraft:instant_health")
    ~ run_command("playsound bloom_festal:heal master @s")
    
    Professor Delta quickly brought out his bloom festal to heal you. How convenient!
    
    d neutral_sweat: Okay, now that's a little better. So, what were you gonna say?
    -> flower_ask
    * -> 
    Nothing, it seems. You have asked everything there is to ask about the comittee's (and Professor Delta's) favorite flowers.
    ->flower_done
    
    
    - (flower_continue) 
    d neutral: Did you wanna ask about another flower?
    + [yes]Naturally. ->flower_ask
    + [no] ->flower_done
    
    - (flower_done) What an insightful exchange.
  








-> END