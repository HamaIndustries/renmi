#require act modfest:shrimple_2
#require act modfest:barebones_shrimple_2
#alias actor l lulu
#alias actor b barebones
#alias actor s shrimple

// (requires Shrimple ACT 3) UPDATE: uses the hotdog story in the server. it's the hotdogs.

// Shrimple goes to you in desperation and admits her relationship with Barebones: She relies on him to obtain smuggled snails, which usually have a big taxed on them to not compete with local snails.

    s angry 0: Look, 'bones, I've had it up to here with you.

	~ run_command("stopsound @s")
	~ run_command("playsound modfest:music.stereo.shrimp_music music")

    s: Oh, hey <PLAYER_NAME>. You mind talking sense into this fella?

    Moment of truth. What do you think is going on between them?

*   Love?
*   Drugs?
*   Rock and Roll?
-
    b frown 2: What? Yous talking crazy.

    b aura: The VP here's trying to stiff me.

    s angry: 'bones, you doubled the amount <i>after</i> I paid.

    b: We agreed to it, didn't we?

    s angry: You doubled the amount you had already doubled before I paid.

    b aura: Yous supposed to do it twice, right? Ain't that why they call it double?

*   So what is it?
-
    b frown: 's just a truck loada hot--

    ~ run_command("playsound minecraft:entity.generic.explode ambient @s ~ ~ ~ 1 2")

    With pistol speed, she clamps her hands hard around Barebone's snout.

    b blushing_sweating: mm? mmm mm??

    s frown_side: Quiet!

    She motions for you to come in.

    s frown_side: <PLAYER_NAME>, listen. This booth's the only one licensed to sell these. I say that ain't fair.

    s frown: You think that's fair?

*   It's fair[]. They probably worked hard to make so many.

    s: They're imported, bud. These are 'bout as far from something a student can make as moon rocks.

    s: The Prez must've been on something when he approved the booth. I can't even find whichever club or class is behind it.

*   It's not fair[]. Hot dogs are for everyone. It's in the constitution.

    b frown: Wussa constitution?

    s neutral_side: It's a kind of sauce you put on salads. Anyways.
-
    s: So, I say to myself. Just once. Just <i>this once</i>, I'll ask this good for nothin' bag of bones to do what he does best. Sneak a few 'dogs to me for a nice meal.

    s frown: You know, ethically?

    s: Guess what he does.

*   What he does best[.], of course.
-
    s angry: Right on the money.

    s embarrassed_side: Forget it. Bratwurst has a better flavor profile.

    b neutral 0: So, whats the deal with the hot dogs anyway?

    s neutral 2: You got something against dogs, 'bones? They're a food as fine as any.

    b frown_sweating: Hard ta say. Gives me the jeebs. Something about them smells.

*    "The preservatives?"
-
    s: Good guess <PLAYER_NAME>, but my money's on the coloring.

    s: There's a good few mods around here with more food than sense, not that I'm complaining too hard.

    s frown: Everyone's gotta be the bigger fish.

    ~ run_command("stopsound @s music")

    l neutral 5: \[^_^\] Actually, it is because the hot dogs are technically alive.

    b googly: WHAT

    s frown_side: ...beg pardon, Lulu?

    She shuffles around outside to get a better look at the three of you through the window.

    ~ run_command("playsound modfest:music.stereo.shrimp_music music @s ~ ~ ~ 1 0.5")

    l: \[ovo\] A few of my sensor cores are debating whether the hot dogs are alive.

    l: \[-v-\] As it turns out, some of the hot dogs are alive, and some of them are not! #sound minecraft:entity.arrow.hit_player 1 0.8

    b frown: ...

    s neutral 3: Go on...

    l: \[ovo\] The pink ones are alive, in a kind of grub stage.

    l: \[-v-\] I asked my biosynthesis core, and she says they reproduce in a way that is not observed in any life on Earth.

    l: \[^_^\] I wonder what that means?

    b frown_blushing_sweating: L... Lulu... Big girl, sweet lady. Yous pulling my legbone, yeah?

    b neutral 2: I ate coupla the cooked ones, see.

    s embarrassed: I don't think anything could survive the nonsense I've seen these folks playing around with today.

    l: \[ovo\] I have good news and bad news, Barebones.

    l: \[;-;\] The bad news is that the cooked ones are all dead...

    b frown: Thank Moloch and Jebus and Presley that was close.

    b aura: Ones I had was all cooked crispy. Carbon nanostructures. Charcoal, like I like it.

    s neutral_side 3: Lulu. The good news?

    l: \[-vo\] The good news is that the black ones are all still alive!

    l: \[^_^\] They are at the end of their lifecycle, so they are full of all kinds of toxins.

    l: \[._.\] It is a good thing Barebones is dead, or he would be in biiiig trouble.

    b googly: I'm gonna be sick.

    b frown 0: I'm gonna be sick.

    s angry 2: Hey Lulu. Get your medical suite ready. #hide barebones

    s angry: I reckon 'bones ain't as dead as he says he is.

    l: \[0o0\] On it!

// if theres time: fetch quest
// she needs you to find something with calcium calcium. obviously.

// shrimple would probably make barebones a milk tea/milkshake/tres leches cake/(any other suggestions?)

-> END
