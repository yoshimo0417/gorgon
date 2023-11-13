BEGIN h_lieded

IF ~Global("h_LiedelQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Well, look at you, a fresh face in our little den of shadows. Quite the promising sight, if I do say so.~  IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",1) Global("h_DeclineBounty","GLOBAL",0)~ THEN BEGIN 1
   SAY ~Riggy's been singing your praises, says you've shown some real promise in the field. High commendation, coming from a man with his stature.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~I believe it's high time we became better acquainted. I'm Liedel. I deal in private contracts and bounties you won't find posted in the light of town.~
       ++ ~Riggy?~ GOTO 5
       ++ ~You've piqued my interest with 'private contracts'. Care to elaborate?~ GOTO 6
       ++ ~What current bounties do you have available?~ GOTO 47
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~Such a shame, love. Perhaps the shadows will call to you another time.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",1)~ EXIT
END

IF ~Global("h_DeclineBounty","GLOBAL",1)~ THEN BEGIN 4
   SAY ~Back for more, I see. Have you come seeking more than just conversation, or is it the thrill of our banter that brings you before me?~
       ++ ~What current bounties do you have available?~ GOTO 47
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 5
   SAY ~Oh, it's just my little pet name for our dear Rigaldo. How he fumes at it, which only makes it more delightful.~
       ++ ~You've piqued my interest with 'private contracts'. Care to elaborate?~ GOTO 6
       ++ ~What current bounties do you have available?~ GOTO 47
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 6
   SAY ~Oh, darling, 'private contracts' are our little euphemism for the delicate art of... persuasion. The kind that silences troubles permanently.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~They're the whispered secrets that never manage to echo. Jobs for a specific kind of artist, one who can paint in shadows and, let's say, more... crimson mediums.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~And you, my intriguing new companion, strike me as just the type of professional that we desire.~
       ++ ~What current bounties do you have available?~ GOTO 47
       +~OR(3) Race(Player1,HUMAN) Race(Player1,ELF) Race(Player1,HALF_ELF) Class(Player1,THIEF_ALL) Gender(Player1,MALE) !Alignment(Player1,NEUTRAL_GOOD) CheckStatGT(Player1,13,CHR)~+ ~Well, if mastering the art of these contracts means working closely with you, I foresee a lot of late nights in our future. Strictly for professional development, of course.~ GOTO 9
       ++ ~I'm not interested right now.~ GOTO 3
END

IF ~~ THEN BEGIN 9
   SAY ~My, my, such cunning woven into your words. A clever tongue can be as deadly as a sharp blade in our world, and I must admit, I'm intrigued to see which of yours is sharper.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~You know, my new companion, I haven't yet caught your name amidst this delightful game of verbal shadows. Care to enlighten me, or does the mystery add to your allure?~
       ++ ~I'm <CHARNAME>. And as much as I've enjoyed our little dance, I'm curious about these contracts you handle.~ GOTO 47
       ++ ~<CHARNAME>, at your service. Though, a bit of mystery might keep things interesting between us.~ GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~A touch of enigma suits you, <CHARNAME>. It adds depth to the allure, like shadows in a moonlit alley.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~But let's peel away just one layer, shall we? Tell me, what thrill, what danger has led you to our darkened doorstep and into the heart of the Gorgon's Eye?~
       ++ ~Every thief can pick a pocket or crack a safe. I'm here to refine my craft, to turn the art of thievery into something more.~ GOTO 13
       ++ ~I'm here for the adrenaline. The kind of rush that you can only find walking the knife's edge between life and death.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 15
       ++ ~The coin, of course. There's no purse too heavy nor gem too secure that doesn't whisper my name.~ GOTO 17
       ++ ~Power is the ultimate prize. To move unseen, to hold sway from the shadows, that's what I'm after.~ GOTO 19
END

IF ~~ THEN BEGIN 13
   SAY ~Aspiring for greatness, I can respect that. But ambition is a double-edged dagger, <CHARNAME>. It can carve your name into the annals of infamy or slice away your life's thread in a careless moment.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Show me you can wield it without cutting yourself, and I might just take a personal interest in your... development.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 15
   SAY ~Ah, the exquisite edge of peril, you speak my language, <CHARNAME>. The siren call of adrenaline has been my faithful lover and my treacherous betrayer. But to live without it? A tedious thought.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Should you wish to dance with danger at your side, I could be persuaded to join the fray. Together, we could chase thrills that would leave others quaking in fear.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 17
   SAY ~Gold has a sweet song, doesn't it? Just remember that wealth is a means, not an end. It can buy you silence, loyalty, and even a bit of decadence, but it can't buy true power.~ IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~Earn your riches, darling, but don't let them own you. Do that, and you'll always have my attention.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 19
   SAY ~Power, It's the ultimate game, isn't it? But power in the shadows is ephemeral, <CHARNAME>. It shifts, it changes hands, and sometimes, it cuts the hand that seeks to grasp it.~ IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20
   SAY ~If it's power you want, show me you can handle it when it's within your reach. Prove that, and perhaps we can share more than just whispered secrets.~ IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21
   SAY ~There's a fire in you, love. I can feel its warmth from here. It's rare that someone stirs the embers of my curiosity, but you... you fan the flames.~ IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22
   SAY ~Tell me, <CHARNAME>, from what shadows were you cast? What corner of this vast tapestry of realms do you hail from?~
       ++ ~I hail from Candlekeep, a citadel of knowledge. Yet, the most valuable lessons I've learned have been outside its walls.~ GOTO 23
       ++ ~I'm from Candlekeep, where wisdom is the currency and silence is the music. It was... quiet.~ GOTO 24
       ++ ~Born and raised behind the fortified libraries of Candlekeep. Where I enjoyed tranquility, and the steady pursuit of knowledge.~ GOTO 26
       ++ ~Candlekeep. A place of quiet contemplation and dusty shelves. I prefer the tangible, the heft of gold and the thrill of the unseen.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 27
       ++ ~Let's skip the pleasantries and history lessons. I'm here for work, not to stroll down memory lane. What do you have for me?~ GOTO 49
END

IF ~~ THEN BEGIN 23
   SAY ~The best teachers are experience and necessity, my new companion. I suppose it's good you've left such quaint academia behind. Out here, knowledge can't save you from a blade in the dark.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 24
   SAY ~The quiet of a place like that would suffocate me, I confess. I thrive on the chaos of the chase, the pulse of danger.~ IF ~~ THEN GOTO 25
END

IF ~~ THEN BEGIN 25
   SAY ~But I won't deny, there's merit in the stillness you know, an ear trained in silence hears the secrets that shadows breathe. A precious skill for those of us dancing on the knife's edge.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 26
   SAY ~Tranquility, such a polite term for stagnation. I trust you find the erratic heartbeat of our guild more... invigorating.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 27
   SAY ~Ah, a rogue after my own heart. The weight of a full purse does have a certain charm, as does the shadow's caress. You'll find that we offers plenty of both.~ IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 28
   SAY ~From the hushed halls of Candlekeep, to the bustling heart of the Gorgon's Eye. My, you do love to play at opposites. It's a delicious contrast, like a whisper against a scream.~ IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29
   SAY ~And I'll admit, there's nothing quite as... provocative as a man who knows when to keep silent and when to let his actions speak. I find myself eager to hear what else you might reveal.~
       ++ ~Actions do speak louder, don't they? Now, I'm keen to hear about those bounties you mentioned earlier.~ GOTO 47
       ++ ~Candlekeep is my past, but what of yours? What story lies behind those eyes?~ GOTO 30
       ++ ~Your turn in the spotlight, Liedel. What shadows cast you into our world?~ GOTO 30
END

IF ~~ THEN BEGIN 30
   SAY ~Oh, love, the songs of my past could curdle the blood of the bravest souls. I fear they might be a bit... intense for our budding acquaintance.~ IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31
   SAY ~But I'll grant you a glimpse of the surface. I hail from Selgaunt, a coastal city in the heart of Sembia.~ IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32
   SAY ~It�s a land of merchants and mercenaries, where gold speaks louder than truth and shadows are often the best company one can keep.~ IF ~~ THEN GOTO 33
END

IF ~~ THEN BEGIN 33
   SAY ~A city that never sleeps, filled with the buzz of trade by day and the whispers of rogues by night.~ IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34
   SAY  ~In Selgaunt, life is like a tapestry, colorful, complex, and sometimes frayed at the edges. It�s a place where beauty and danger intertwine, and where one learns to dance to the rhythm of both.~
        ++ ~It sounds like you had to be sharp and resourceful. It�s impressive how you�ve carved your path through such a challenging environment.~ GOTO 35
        ++ ~The city seems a world of its own. It must have been an interesting backdrop for your early years.~ GOTO 37
        ++ ~Selgaunt sounds like a nest of vipers, thriving on gold and deception. I can't say that's a place I'd find appealing.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 39
END

IF ~~ THEN BEGIN 35
   SAY ~Sharp and resourceful? Such sweet words to my ears. In Selgaunt, those qualities were like blades, sharp, necessary, and often hidden under silk.~ IF ~~ THEN GOTO 36
END

IF ~~ THEN BEGIN 36
   SAY ~It was a maelstrom of experiences, some harsh, some enlightening, a game of wit and will, and I wasn't about to be left behind.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 37
   SAY ~Interesting? That's one way to put it. Selgaunt was indeed a tapestry of shadows and light, each thread a different tale of desire and ambition.~ IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 38
   SAY ~It's where I learned much of what I know today. It shaped me, but it didn't define me. It was a dance of both beauty and danger, and I was but a willing participant.~ IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 39
   SAY ~I can't really argue with that. Selgaunt had its dark embrace, a charm that isn't to everyone's taste.~ IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40
   SAY ~But in darkness, my dear, one learns the true dance of shadows. Not all truths gleam in the sunlight, some are more... alluring in the dark.~ IF ~~ THEN DO ~SetGlobal("h_LiedelRomanceActive","GLOBAL",1)~ GOTO 41
END

IF ~~ THEN BEGIN 41
   SAY ~I'm glad to share these bits of my past with someone who listens. I'll admit, your attentiveness has been... quite the seduction.~ IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42
   SAY ~But our dalliance with the past must pause for now, love. We have bounties to chase, adventures to entangle ourselves in.~ IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43
   SAY ~The shadow of Selgaunt may linger in me, but it's the thrill of what lies ahead that truly beckons.~ IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44
   SAY ~So, my new companion, are you ready to plunge into the enthralling underworld of silent blades and shadows?~ IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45
   SAY ~To weave through the labyrinth of intrigue and danger, where every step is a dance with fate and every breath could be laced with peril?~ IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46
   SAY ~It's a world where only the shrewdest and most daring survive. A domain cloaked in darkness, yet brimming with seductive secrets. Do you dare to step into this realm with me?~
       ++ ~Lead the way, Liedel. I'm ready to enter the world of shadows and secrets.~ GOTO 47
       ++ ~I'm intrigued, but I can't say I'm fully prepared to dive in right now.~ GOTO 3
END

IF ~~ THEN BEGIN 47
   SAY ~Ah, the willingness to dance in the darker corners of this world, it's a rare trait, and one I find... quite captivating.~ IF ~~ THEN GOTO 48
END

IF ~~ THEN BEGIN 48
   SAY ~The path we're about to tread is not for the faint of heart, but for those with the courage to explore it, the rewards are substantial.~ IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
   SAY ~Currently, I have three bounties waiting in the shadows, unclaimed.~ IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50
   SAY ~The first concerns a man named Carth. He dared to cross the Zhentarim, borrowing coin and failing to repay his debts in time. They've called for recompense, be it in gold or blood.~ IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51
   SAY ~Carth was last seen heading north, up the Coast Way. He's a hulking figure, ill-suited for the wilderness. Seek him in the surrounding inns or taverns, where he might seek refuge.~ IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52
   SAY ~The second contract is for a rogue by the name of Vapula Simberg. He was once a member of the Baldur's Gate thieves guild, but grew weary of the darkness.~ IF ~~ THEN GOTO 53
END

IF ~~ THEN BEGIN 53
   SAY ~Vapula turned witness, betraying his former comrades and leading them to prisons and in the grip of hefty fines.~ IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54
   SAY ~Latest whispers suggest he's found sanctuary in piety, cloaked in newfound devotion. I recommend you scour the temples, for that's where his penance may unfold.~ IF ~~ THEN GOTO 55
END

IF ~~ THEN BEGIN 55
   SAY ~Last up, a courtesan by the name, Aisha. The details are scant, but it seems a lovers' dispute stirs the cauldron.~ IF ~~ THEN GOTO 56
END

IF ~~ THEN BEGIN 56
   SAY ~Aisha bears no family name, nor the means to vanish in the dead of night. She is concealing herself somewhere within the city's limits, you can count on that.~ IF ~~ THEN GOTO 57
END

IF ~~ THEN BEGIN 57
   SAY ~That is all I have for the present. Return to me once you've made your mark on the shadows, my dear. I eagerly await your return.~
IF ~~ THEN DO ~
   SetGlobal("h_DeclineBounty","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",2)
   AddJournalEntry(@410,QUEST)
   AddJournalEntry(@415,QUEST)
   AddJournalEntry(@419,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) GlobalLT("h_BountyNumber","GLOBAL",3)~ THEN BEGIN 58
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_CarthBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Carth.~ GOTO 60
       +~Global("h_VapulaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Vapula.~ GOTO 70
       +~Global("h_AishaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Aisha.~ GOTO 79
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 59
   SAY ~Do let me know if there's anything else you desire, my dear. A word, a whisper, a hint perhaps? I'm here to cater to all your needs, ensuring you're more than ready for the chase.~
       +~Global("h_CarthBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Carth.~ GOTO 60
       +~Global("h_VapulaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Vapula.~ GOTO 70
       +~Global("h_AishaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Aisha.~ GOTO 79
       ++ ~There is nothing else I require at this time.~ EXIT
END

IF ~~ THEN BEGIN 60
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~Global("h_CarthBounty","GLOBAL",1)~+ ~I found him stuffing his face at the Friendly Arm. You can tell the Zhents his debt was paid in blood.~ GOTO 64
       +~Global("h_CarthBounty","GLOBAL",3)~+ ~I provided him the gold needed to settle his debts. Sometimes, I believe the best resolution doesn't lie at the edge of a blade.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 66
       +~Global("h_CarthBounty","GLOBAL",0)~+ ~What else can you tell me about the target?~ GOTO 61
       ++ ~I have nothing to report at the moment.~ GOTO 59
END

IF ~~ THEN BEGIN 61
   SAY ~Clever as he thinks he is, Carth couldn't entirely evade the Zhentarim's grasp. The tracked him as far as Beregost, until he gave them the slip in the chaos of his flight northward.~ IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 62
   SAY ~Word from the local eateries describe a scene of voracious gluttony, a beast feasting as if each bite would be his last.~ IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 63
   SAY ~I wouldn't be surprised if his penchant for hearty meals and soft beds leads him to a similar locale now. This trail of crumbs, you could say, might be just the lead you need.~ IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 64
   SAY ~That I will, my capable companion, and I must confess, the thought of you outwitting that brutish oaf sends a shiver of delight down my spine.~ IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65
   SAY ~It's as if you dance through shadows, a whisper of death that none can escape. Here is your well earned reward for the bounty, 500 gold coins.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   SetGlobal("h_CarthBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@413,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN 66
   SAY ~And I believe that such naive ideals are better suited for fairy tales, not the cutthroat world of bounty hunting.~ IF ~~ THEN GOTO 67
END

IF ~~ THEN BEGIN 67
   SAY ~I've already heard from the Zhentarim. They called off the bounty on Carth, thanks to your... 'generosity'.~ IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68
   SAY ~Do you even realize what you've done? Not only did you let an easy payday slip through your fingers, but you've also deprived me and the guild of potential earnings.~ IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69
   SAY ~Mercy has its place, but in our line of work, it's coin that keeps us alive, not goodwill. Remember that next time, if you're serious about making a name in this shadowy world.~
IF ~~ THEN DO ~
   SetGlobal("h_CarthBounty","GLOBAL",4)
   SetGlobal("h_CarthBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@414,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 70
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~PartyHasItem("h_misc09") Global("h_VapulaBounty","GLOBAL",0)~+ ~I tracked him down to the Temple of Lathander and dealt him a swift blow. Here's his pendant as confirmation.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 77
       +~PartyHasItem("h_misc09") Global("h_VapulaBounty","GLOBAL",1)~+ ~I tracked him down to the Temple of Lathander and dealt him a swift blow. Here's his pendant as confirmation.~ GOTO 77
       +~!PartyHasItem("h_misc09")~+ ~What else can you tell me about the target?~ GOTO 71
       ++ ~I have nothing to report at the moment.~ GOTO 59
END

IF ~~ THEN BEGIN 71
   SAY ~Ah, Vapula, that pitiable wretch. His mind unraveled under the weight of his sins, so it seems, and he turned his eyes to the divine for salvation.~ IF ~~ THEN GOTO 72
END

IF ~~ THEN BEGIN 72
   SAY ~Our contacts in Baldur's Gate mentioned his sudden obsession with redemption and rebirth, his frenzied murmurs of divine intervention.~ IF ~~ GOTO 73
END

IF ~~ THEN BEGIN 73
   SAY ~From the sound of it, he's seeking refuge in the arms of some deity. And who better to embrace a man desperate for rebirth than... Lathander?~ IF ~~ THEN GOTO 74
END

IF ~~ THEN BEGIN 74
   SAY ~Can you believe it? The Morninglord, with all his nauseating talk of new beginnings and the rising sun. It makes my skin crawl.~ IF ~~ THEN GOTO 75
END

IF ~~ THEN BEGIN 75
   SAY ~If Vapula seeks absolution, he'll likely find solace in his temples.~ IF ~~ THEN GOTO 76
END

IF ~~ THEN BEGIN 76
   SAY ~But be cautious, darling. Even a soul lost in delirium knows how to lurk unseen, especially among those blinded by faith.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 77
   SAY ~The burning sun of the Morninglord, how grotesque. The pendant bears the weight of authenticity, however. Excellent work, my love.~ IF ~~ THEN GOTO 78
END

IF ~~ THEN BEGIN 78
   SAY ~Did you enjoy the chase? The way you bring such tales to their inevitable end... it's a mesmerizing performance that I find myself craving more of.~
IF ~~ THEN DO ~
   SetGlobal("h_VapulaBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@418,QUEST_DONE)
   TakePartyItem("h_misc09")
   DestroyItem("h_misc09")
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~~ THEN BEGIN 79
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~Global("h_AishaBounty","GLOBAL",4)~+ ~I found her holed up at the Red Sheaf. She's no longer anyones concern.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 83
       +~Global("h_AishaBounty","GLOBAL",5)~+ ~I found her holed up at the Red Sheaf. She's no longer anyones concern.~ GOTO 87
       +~Global("h_AishaBounty","GLOBAL",0)~+ ~What else can you tell me about the target?~ GOTO 80
       ++ ~I have nothing to report at the moment.~ GOTO 59
END

IF ~~ THEN BEGIN 80
   SAY ~Ah, Aisha and her fickle lover. A tale as old as time, isn't it? Both natives of Beregost, they're well-known faces in the local taverns, entangled in a lovers' quarrel that's turned sour.~ IF ~~ THEN GOTO 81
END

IF ~~ THEN BEGIN 81
   SAY ~If you're seeking her, those taverns are your hunting grounds. Beregost isn't too large, a few whispered questions in the right ears should reveal where she's hiding.~ IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82
   SAY ~Just remember, love, such affairs of the heart are often more tangled than they appear at first glance. Tread carefully.~ IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 83
   SAY ~Ah, so it was your hand in the shadows, after all. I had mused your involvement when Amrius hastily rescinded his bounty. It seems more than mere coincidence now, doesn't it?~ IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84
   SAY ~But truly, love, you forsake the seductive shimmer of coin for a fleeting moment of... what, conscience? For someone cloaked in our guild's shadows, your choices are maddeningly unpredictable.~ IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85
   SAY ~You dance on a strange stage, one where gold doesn�t seem to lead your steps. And yet, I somehow find your choice rather... mesmerizing.~ IF ~~ THEN GOTO 86
END

IF ~~ THEN BEGIN 86
   SAY ~You keep the mundane at bay, love, and that alone is a tantalizing surprise I find myself unexpectedly savoring.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBountyEnd","GLOBAL",1)
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@424,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 87
   SAY ~So the siren Aisha has sung her final lament, all thanks to you. There�s something profoundly thrilling about your method, like a shadow passing unseen, yet unforgotten.~ IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88
   SAY ~How did it feel, extinguishing a flame that once burned so brightly in the alleys of Beregost? Your silent efficiency, it's an art form, a seductive dance in the dark that leaves me wanting more.~
IF ~~ THEN DO ~
   SetGlobal("h_AishaBountyEnd","GLOBAL",1)
   SetGlobal("h_AishaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@425,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(300)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelRomanceActive","GLOBAL",0)~ THEN BEGIN 89
   SAY ~Well, it seems the shadows have taken a brief respite from our dance. How utterly boring. Perhaps you could find a way to entertain me, dear companion?~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelRomanceActive","GLOBAL",1)~ THEN BEGIN 90
   SAY ~Well, it seems the shadows have taken a brief respite from our dance. How utterly boring. Perhaps you could find a way to entertain me, dear companion?~ IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91
   SAY ~I find myself desperately craving something, or perhaps... someone, to inject a burst of excitement into these lackluster moments.~
       ++ ~The dance of shadows might have paused, but our game has just begun. What did you have in mind?~ GOTO 93
       ++ ~Whoa, Liedel, that's quite the proposition... You certainly don't mince words.~ GOTO 94
       ++ ~Now, that's a challenge I'm more than willing to accept. Consider me intrigued, and more than ready to rise to the occasion.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 95
       ++ ~Sorry, Liedel. I tend to keep my entertainments and my work separate. I'm not interested.~ GOTO 92
END

IF ~~ THEN BEGIN 92
   SAY ~Well, aren't you just a bundle of excitement. I suppose I'll have to find some other way to amuse myself then. Such a tragedy.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 93
   SAY ~Oh, my dear, you certainly have a way with words, don't you? I must admit, 'excitement' is a rather broad term. Care to narrow it down a bit, or shall I leave it to my imagination?~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 94
   SAY ~Life is far too short for half-measures and hesitations, love. In our world, we seize the moment or it slips through our fingers like shadows at dawn.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 95
   SAY ~Ah, a <MANWOMAN> of action, I see. I do appreciate someone who's not afraid to dive headfirst into the thrill of it all. You're beginning to pique my interest, <CHARNAME>.~ IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96
   SAY ~Our last conversation was tinged with unspoken promises and subtle invites. Why don't we pick up where we left off, letting the words and glances weave a more captivating tale this time.~
       ++ ~I'm curious to learn more about your background, Liedel. What was it like growing up in Sembia?~ GOTO 97
       ++ ~Ah, I see. For a moment there, I thought... well, nevermind. I'm not really in the mood for mere conversation right now.~ GOTO 92
END

IF ~~ THEN BEGIN 97
   SAY ~Well, aren't you the inquisitive one. What is it you hope to gain from prying into my past, I wonder?~ IF ~~ THEN GOTO 98
END

IF ~~ THEN BEGIN 98
   SAY ~A way to hold something over me, perhaps? Or maybe you're just hoping to find a chink in this formidable armor of mine?~
       ++ ~No ulterior motives, just trying to get to know you better.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 99
       ++ ~Well, you've cracked the code, Liedel. I'm plotting to use your past against you in a devious scheme of mine.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 100
       ++ ~Relax, it's all in good fun. You seem quite the puzzle, and I can't help but feel intrigued.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 101
       ++ ~I get it, Liedel. Your past is your own, and you're under no obligation to reveal it.~ GOTO 102
       ++ ~Are you always this suspicious? I was just making conversation.~ GOTO 103
END

IF ~~ THEN BEGIN 99
   SAY ~Well, aren't you the gallant charmer? Very well, let's dance in the realm of conversation, shall we?~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 100
   SAY ~Oh, I see I'm in the company of a mastermind. I'll have to be on my guard, won't I?~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 101
   SAY ~A puzzle, am I? Perhaps you'll be the one to unravel my mysteries.~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 102
   SAY ~How generous of you to grant me permission to keep my own secrets. I assure you, it was never in question.~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 103
   SAY ~Suspicion has served me well in our line of work. It's not a matter of choice, but one of survival.~ IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104
   SAY ~I hail from Selgaunt, a city of silk and coin, where shadows dance on streets paved with ambition. I was but a nameless waif, born of the alleys and left to the whims of fate.~ IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105
   SAY ~It was a merchant family, the Javaliens, who took me in. They saw potential in my street-smarts and taught me the delicate dance of business.~ IF ~~ THEN GOTO 106
END

IF ~~ THEN BEGIN 106
   SAY ~Under their guidance, I navigated the treacherous waters of Selgaunt's commerce, learning the value of information, the power of negotiation, and the sting of betrayal.~ IF ~~ THEN GOTO 107
END

IF ~~ THEN BEGIN 107
   SAY ~Life wasn't easy, but it was a far cry from the gutters I'd known. I was given a chance, and I took it.~ IF ~~ THEN GOTO 108
END

IF ~~ THEN BEGIN 108
   SAY ~Eventually, I found myself in the service of the esteemed Scepters, the city watch of Selgaunt.~ IF ~~ THEN GOTO 109
END

IF ~~ THEN BEGIN 109
   SAY ~My role was to track down criminals, bring them to justice, and gather intelligence on the various gangs that plagued the city.~ IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110
   SAY ~However, as the years went by, I found myself drawn to darker alleys, to the thrill of the hunt, the precision of a well-placed blade.~ IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111
   SAY ~Life in the light had its merits, but it wasn't long before the shadows whispered to me. The allure of the underworld had proved too tempting to resist.~ IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112
   SAY ~The thrill of clandestine operations, the rush of pursuing those who operated in the shadows. It was a siren's call I could no longer ignore.~ IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113
   SAY ~That's when I crossed paths with the Night Knives, a small but cunning thieves guild in the city.~ IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114
   SAY ~However, my love, that's where my story ends for today. Perhaps in the future, we can explore these shadows together in more detail.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 115
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 123
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 133
       ++ ~It's been a pleasure, Liedel, but I really should get going.~ GOTO 142
END

IF ~~ THEN BEGIN 115
   SAY ~Selgaunt... It's a city of contrasts. A place where opulence and squalor live side by side.~ IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116
   SAY ~The grandeur of noble estates stands against the grimy alleyways where the forgotten eke out their existence.~ IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117
   SAY ~As for growing up on the streets, it was a harsh teacher, to say the least. Survival was a daily challenge, and trust was a luxury I couldn't afford.~ IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118
   SAY ~But there's a certain kind of freedom in the streets, a raw honesty that's absent from the gilded halls of the privileged.~ IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119
   SAY ~Selgaunt is a city of opportunities and dangers, where one must learn to adapt or be left behind.~
       ++ ~It must have been incredibly tough for you, growing up on the streets without any support or protection. I'm sorry you had to experience that.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 120
       ++ ~It's clear that experience served you well, and forged you into the formidable individual you are today.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 121
END

IF ~~ THEN BEGIN 120
   SAY ~Pity and sympathy have no currency here. Those experiences shaped me into the person I am today, and I wouldn't trade them for anything.~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 121
   SAY ~My, my, how perceptive. Indeed, they made me resilient, resourceful, and unyielding in the face of adversity. I've come to value those lessons dearly.~ IF ~~ THEN GOTO 122
END

IF ~~ THEN BEGIN 122
   SAY ~Navigating those shadowed alleys was an unforgiving crucible that forged my spirit. They didn't break me, they built me. Every scar, every challenge, it's all part of the armor I wear now.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 115
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 123
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 133
       ++ ~It's been a pleasure, Liedel, but I really should get going.~ GOTO 142
END

IF ~~ THEN BEGIN 123
   SAY ~They were a family of shrewd merchants, with a keen eye for opportunity and a taste for the finer things in life.~ IF ~~ THEN GOTO 124
END

IF ~~ THEN BEGIN 124
   SAY ~They took me in when I was just a street urchin, offering me a chance at a life I could have never imagined.~ IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125
   SAY ~They taught me the art of negotiation, the delicate dance of trade, and the invaluable skill of reading people's intentions.~ IF ~~ THEN GOTO 126
END

IF ~~ THEN BEGIN 126
   SAY ~From them, I learned the importance of patience, the power of information, and the significance of a well-placed coin.~ IF ~~ THEN GOTO 127
END

IF ~~ THEN BEGIN 127
   SAY ~It was through their guidance that I discovered the world beyond the cobbled streets and shadowed alleyways.~ IF ~~ THEN GOTO 128
END

IF ~~ THEN BEGIN 128
   SAY ~Under their roof, I grew from a scrappy urchin into a young woman with aspirations and ambition. They instilled in me a sense of resourcefulness and a drive to carve my own path in the world.~ IF ~~ THEN GOTO 129
END

IF ~~ THEN BEGIN 129
   SAY ~The lessons I learned from the Javaliens have been invaluable, and they continue to shape the way I navigate the intricate web of business and intrigue.~
       ++ ~It's almost like they were preparing you for the life you lead now. You've certainly taken those lessons to heart.~ GOTO 130
       ++ ~It's a bit disturbing to think that the Javaliens saw a vulnerable street urchin and thought to turn her into a tool for negotiation and trade. Just saying.~ GOTO 131
END 

IF ~~ THEN BEGIN 130
   SAY ~They saw raw clay, ripe for shaping. But what they couldn't have known was the depth of shadow within that clay, the inherent affinity for the dance of duplicity and desire.~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 131
   SAY ~Yes, they taught me negotiation, the subtle art of trade, but it was I who wove those lessons into the darker tapestry of my current existence.~ IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132
   SAY ~It�s a curious thing, isn't it? How the mundane lessons of commerce can evolve into the thrilling language of intrigue and seduction.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 115
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 123
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 133
       ++ ~It's been a pleasure, Liedel, but I really should get going.~ GOTO 142
END

IF ~~ THEN BEGIN 133
   SAY ~Working with the Scepters, was a dance on the edge of the law. They're the city watch in Selgaunt, known for their strict adherence to order.~ IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134
   SAY ~Of course, my allegiance was always to the excitement of the chase rather than any ridiculous sense of ethics.~ IF ~~ THEN GOTO 135
END

IF ~~ THEN BEGIN 135
   SAY ~The law meant nothing to me, but the thrill and intrigue that came with the job bestowed upon me a feeling like none other.~ IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136
   SAY ~I honed my skills in tracking and apprehending criminals. I learned the value of strategy and the importance of discerning truth from deception.~ IF ~~ THEN GOTO 137
END

IF ~~ THEN BEGIN 137
   SAY ~It was a time of growth and challenge, and it laid the foundation for the path I would later choose.~
       ++ ~The thought of you diligently upholding the law is... quite the image, Liedel.~ GOTO 138
       ++ ~So, you used to be a goody-two-shoes, huh? I have to say, it's hard to believe that the elegant assassin before me was once a law-abiding officer of the city watch.~ GOTO 138
       ++ ~Well, it sounds like you were quite the obedient little law-abider back then. Must have been a real bore, huh?~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 139
END

IF ~~ THEN BEGIN 138
   SAY ~Ah, yes, the juxtaposition is rather amusing, isn't it? Life has a way of leading us down unexpected paths, darling.~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 139
   SAY ~Though I may not have aligned with their ideals, my time with the Scepters was far from boring.~ IF ~~ THEN GOTO 140
END

IF ~~ THEN BEGIN 140
   SAY ~I learned valuable lessons and skills that have served me well in my chosen path. Don't mistake my past for mere drudgery.~ IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141
   SAY ~But rest assured, every step of that journey contributed to the person you see before you today.~
       +~Global("h_LiedelTalk11","GLOBAL",0)~+ ~What kind of place is Selgaunt? What was it like growing up on the streets?~ DO ~SetGlobal("h_LiedelTalk11","GLOBAL",1)~ GOTO 115
       +~Global("h_LiedelTalk12","GLOBAL",0)~+ ~Tell me about the Javaliens, the merchant family who took you in. What did you learn from them?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 123
       +~Global("h_LiedelTalk13","GLOBAL",0)~+ ~What was it like working alongside the Scepters? Who exactly are they?~ DO ~SetGlobal("h_LiedelTalk13","GLOBAL",1)~ GOTO 133
       ++ ~It's been a pleasure, Liedel, but I really should get going.~ GOTO 142
END

IF ~~ THEN BEGIN 142
   SAY ~Oh, off so soon? After you've charmingly coaxed out all my secrets, yet I remain in the dark about you?~ IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143
   SAY ~It seems only fair, my dear, for you to leave me with something... a soft whisper of your past before you vanish into the shadows. A small token for a poor, curious soul left wanting.~
       ++ ~Well, when you put it like that, how can I refuse? What would you like to know?~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 146
       ++ ~Alright, Liedel. Fair is fair. What exactly are you curious about, Liedel?~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 146
       ++ ~Ask away, I'm an open book... for a brief moment, at least.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 146
       ++ ~Let's save my story for another night, when the shadows are less pressing.~ GOTO 144
   END
   
IF ~~ THEN BEGIN 144
   SAY ~Leaving me in suspense, how disappointingly direct. Where's the intrigue, the playful evasion? I was prepared for a little game of cat and mouse.~ IF ~~ THEN GOTO 145
END

IF ~~ THEN BEGIN 145
   SAY ~Well, I suppose I'll have to find other ways to alleviate my boredom then. Until next time, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 146
   SAY ~Ah, so you're willing to indulge my curiosity? How irresistibly bold. What secrets do you hide, I wonder?~ IF ~~ THEN GOTO 147
END

IF ~~ THEN BEGIN 147
   SAY ~I must admit, the prospect of teasing out your hidden truths with my own... special methods is quite the tantalizing thought.~ IF ~~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148
   SAY ~Tell me, what secrets does such a scholarly sanctuary as Candlekeep hold for a person like you? How does one go from the quiet halls of wisdom to the thrilling shadows of our world?~
       +~Class(Player1,THIEF_ALL)~+ ~It wasn't just about learning from books. It was about learning from the shadows, turning every corridor and hall into a lesson in cunning and dexterity.~ GOTO 149
       +~Class(Player1,FIGHTER_THIEF)~+ ~Candlekeep offered both the quiet of the library and the clang of the forge. While I learned the ways of stealth and deception, the call of the blade was equally strong.~ GOTO 149
       +~Class(Player1,FIGHTER_MAGE_THIEF)~+ ~Growing up in Candlekeep, I couldn't confine myself to just one discipline. I was drawn to the shadows, the spellbook, and the sword in equal measure.~ GOTO 149
       +~Class(Player1,MAGE_THIEF)~+ ~In Candlekeep, I was torn between two worlds, the silent corridors of the library and the mystical allure of magic. It was a place of knowledge and secrecy.~ GOTO 149
END

IF ~~ THEN BEGIN 149
   SAY ~Such a tantalizing start. Do go on, love. I find myself delightfully ensnared in the web of your past.~
       +~Class(Player1,THIEF_ALL)~+ ~Among endless tomes and distracted monks, I practiced the art of stealth, the thrill of the pickpocket. My foster father�s tales of intrigue fueling my ambitions.~ GOTO 150
       +~Class(Player1,FIGHTER_THIEF)~+ ~I trained under the Watchers, and my foster father, finding a balance between the art of the sword and the shadow. It was an unconventional path, but it led me here.~ GOTO 152
       +~Class(Player1,FIGHTER_MAGE_THIEF)~+ ~It was a juggling act of thievery, combat, and magic. My foster father was preparing me for any path adventure might lead me down.~ GOTO 154
       +~Class(Player1,MAGE_THIEF)~+ ~With the learned guidance of my foster father, I delved into arcane studies and honed my skills in stealth.~ GOTO 156
END

IF ~~ THEN BEGIN 150
   SAY ~A shadow amongst the tomes, you were. It's intriguing how you found your calling in the art of stealth within such scholarly walls.~ IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151
   SAY ~The art of the unseen must have come naturally to you, a stark contrast to the world of books and knowledge.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 152
   SAY ~A warrior in the making, honed in a place of peace. A fascinating contradiction. The library and the forge, both your teachers.~ IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153
   SAY ~Yours is a tale of iron and stealth, of blade and shadow. It's a rare combination, one that speaks of versatility and unexpected prowess.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 154
   SAY ~A jack of all trades, master of many, your story is as varied as the colors of the spectrum. An adventurer at heart, with skills as plentiful as the stars.~ IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155
   SAY ~It's not often you find someone who can walk the line between physical prowess, magical aptitude, and cunning stealth. A testament to your adaptability and thirst for more than just the written word.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 156
   SAY ~Your tale is one of balancing ink and intrigue, a rare blend of magic and shadows. Now, that's a dance few can master.~ IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157
   SAY ~You must have found a unique harmony between the world of magic and the subtleties of thievery. It seems Candlekeep truly offered you a unique playground.~ IF ~~ THEN GOTO 158
END

IF ~~ THEN BEGIN 158
   SAY ~Your journey from those hallowed halls is a tale rich with intrigue and transformation. But tell me, what role did your foster father play in all this?~ IF ~~ THEN GOTO 159
END

IF ~~ THEN BEGIN 159
   SAY ~His influence seems to weave through your tale like a subtle but strong thread. I'm intrigued to know more about him. How did he guide you amidst the shadows and secrets of your youth?~
       ++ ~Gorion was a source of inspiration. His stories, his knowledge... they sparked a fire in me. They were the catalyst for the journey I'm on now.~ GOTO 160
       ++ ~He was always there when I needed guidance or support. Gorion had a way of offering insight that illuminated my path, helping me to see possibilities I hadn't considered.~ GOTO 160
       ++ ~He was distant, more a figurehead than a father. Gorion did his duty, and provided the basics, but I often felt like I was navigating Candlekeep's mysteries alone.~ GOTO 162
       ++ ~Gorion was protective, sometimes too much so. His caution could be suffocating, and I often felt he underestimated my ability to handle the challenges of the world.~ GOTO 162
       ++ ~My relationship with Gorion was complex. He was a mentor and a guardian, but our perspectives often clashed. I learned a lot, but sometimes in spite of him, not because of him.~ GOTO 162
END

IF ~~ THEN BEGIN 160
   SAY ~It sounds like Gorion's presence was a guiding star in your life's sky. Such mentorship is rare, especially in our line of work.~ IF ~~ THEN GOTO 161
END

IF ~~ THEN BEGIN 161
   SAY ~His teachings, his wisdom, they've clearly left an indelible mark on you, shaping you into the intriguing figure before me. It's a blessing, love, to have had such a guiding hand.~ IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 162
   SAY ~From your words, it seems Gorion's influence was more a shackle than a support. Sometimes, the absence of guidance can be a greater teacher, forcing us to rely on our own cunning and strength.~ IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163
   SAY ~Perhaps you would have flourished even more without his overbearing shadow looming over you. Independence breeds resilience, after all.~ IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164
   SAY ~Well, <CHARNAME>, it's been a delight, a rare treat, to peel back these layers and glimpse the person beneath the rogue. Your past is as captivating as the mysteries we chase.~ IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165     
   SAY ~I must say, uncovering your secrets has been as thrilling as any chase through the night, and I eagerly await the next chapter we might share.~
       +~GlobalGT("h_LiedelLove","GLOBAL",4)~+ ~Uncovering secrets is a mutual thrill, it seems. Time to step back into the shadows, for now.~ GOTO 166
       +~GlobalLT("h_LiedelLove","GLOBAL",5)~+ ~Uncovering secrets is a mutual thrill, it seems. Time to step back into the shadows, for now.~ GOTO 169
END

IF ~~ THEN BEGIN 166
   SAY ~You know, <CHARNAME>, I've actually found our conversation to be rather... enchanting. It's not often someone manages to captivate my interest so thoroughly.~ IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167
   SAY ~There's a depth to you, an allure that goes beyond the mere thrill of the chase or the dance of shadows we're so accustomed to.~ IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168
   SAY ~You've sparked something, a curiosity, or perhaps... something more. But of course, we have all the time in the world to find out, don't we?~ IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 169
   SAY ~You know, <CHARNAME>, your tales have certainly been a window into a world quite different from my own. Independence does indeed breed resilience, as you've shown.~ IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170
   SAY ~While they might not have stirred the deepest of allurement, they've been intriguing nonetheless. It's been an insightful exchange, and who knows what future conversations might unveil.~ IF ~~ THEN GOTO 171
END

IF ~~ THEN BEGIN 171
   SAY ~But enough revelations for one evening. The night still holds many secrets, and we both have roles to play in uncovering them. Until then, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",2)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",2) Global("h_BountyNumber","GLOBAL",3) Global("h_LiedelRomanceActive","GLOBAL",2)~ THEN BEGIN 172
   SAY ~Back for more, <CHARNAME>? I must admit, our conversations have become a highlight of my day. Let's see what intrigues await us, shall we?~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",3)~ THEN BEGIN 173
   SAY ~Finally, as the shadows stir with purpose, a spark ignites in the darkness. I'll admit, the stillness was becoming unbearably tedious.~ IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174
   SAY ~But, my playful whims aside, the gravity of our work never escapes me. As the one who orchestrates these contracts, it's my responsibility to see them through.~ IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175
   SAY ~Each bounty on this list is a testament to that commitment, and I trust you're ready to handle them with the diligence they deserve.~
       ++ ~Let's hear what you've got for me.~ GOTO 189
       ++ ~Your command of these matters is quite the sight, Liedel. It's not every day you see charm and efficiency blend so well.~ GOTO 176
       ++ ~I never took you as one to lead with such passion and dedication. I must say, this seriousness suits you.~ GOTO 176
       ++ ~I'll be honest, you're not exactly the type I expected to be in charge of anything. What's your secret? And don't tell me it's just good looks.~ GOTO 176
       ++ ~I'm not interested right now.~ EXIT
END

IF ~~ THEN BEGIN 176
   SAY ~Oh, my dear, you certainly have a silver tongue on you. Just be cautious it doesn't slip too far, or I might be tempted to relieve you of it. Now, wouldn't that be a shame?~ IF ~~ THEN GOTO 177
END

IF ~~ THEN BEGIN 177
   SAY ~One must know how to play the game, how to sway the currents of power in their favor. It's a delicate dance of influence and strategy, an art form I've come to appreciate.~ IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178
   SAY ~And, if I may be so bold, you strike me as someone who's also no stranger to the subtle intricacies of power dynamics.~
       ++ ~I've always believed that a leader should serve the needs of their people. It's about guiding others towards a greater good.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 179
       ++ ~Sometimes, being in charge can feel like a heavy burden. It's a constant balancing act.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 180
       ++ ~Being in charge means having a vision, a clear path to dominance. It means not hesitating to use power, and to seize opportunities that further your goals.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 181
       ++ ~A good leader understands the ruthless nature of power. They are decisive, adaptable, and able to navigate the complexities of any situation.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 181
END

IF ~~ THEN BEGIN 179
   SAY ~I find such notions of selfless leadership rather... quaint, if not entirely naive. In the real world, power is taken, not given freely in service.~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 180
   SAY ~Leadership is about taking command, about shouldering the weight of responsibility without faltering. It's not a burden to be complained about, but a mantle to be worn with purpose.~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 181
   SAY ~Ah, my dear, you have a keen understanding of the true nature of leadership. Power is a tool, a means to mold the world to your desires. It's a sentiment I find rather... intoxicating.~ IF ~~ THEN GOTO 182
END

IF ~~ THEN BEGIN 182
   SAY ~To be able to seize control, to command fate itself, it's a quality I find undeniably alluring. You and I, we share a certain... hunger for what lies beyond the ordinary, don't we?~ IF ~~ THEN GOTO 183
END

IF ~~ THEN BEGIN 183
   SAY ~In this relentless pursuit, this hunger for control, I carve my path through the shadows. Not content with the mundane, I reach for the extraordinary.~ IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184
   SAY ~It's a thrilling journey, one that demands strength and cunning, and I embrace it wholly.~
       ++ ~I couldn't agree more, Liedel. There's a certain allure in taking control, in shaping our destiny with our own hands.~ GOTO 185
       ++ ~While I may not see eye to eye on every aspect, I can appreciate the conviction behind your words.~ GOTO 186
       ++ ~Power, to me, is more about responsibility than control, more about guidance than command.~ GOTO 187
END

IF ~~ THEN BEGIN 185
   SAY ~A kindred spirit in the dance of power. It's refreshing to find someone who understands the thrill of commanding one's fate~ IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 186
   SAY ~An open mind is a rare gem, and I respect that, even if we don't align perfectly. It's the diversity of thoughts that makes this game interesting.~ IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 187
   SAY ~We'll have to agree to disagree on that, my dear. Leadership, like beauty, is in the eye of the beholder.~ IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188
   SAY ~But enough philosophy for now, we have more pressing matters at hand. I've got a fresh list of bounties that require your... unique abilities.~ IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189
   SAY ~First on the list is a serving wench, Europea, indebted to a noble in Beregost. She managed to put the slip on her owner and fled off into the western woods.~ IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190
   SAY ~If you're skillful enough to bring her back breathing, the reward is quite the handsome sum. But if not, the client would settle for her, as he put it, 'thrall collar', as a morbid keepsake.~ IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191
   SAY ~Next, we have a peculiar case involving a dryad named Katreda. A group of hunters are eager to carve a section out of Larswood for their hunting compound.~ IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192
   SAY ~Katreda, however, is proving to be quite the thorn in their side. They'd appreciate it if you could convince her to cease, one way or another.~ IF ~~ THEN GOTO 193
END

IF ~~ THEN BEGIN 193
   SAY ~Now, for the peculiar request that's come our way, courtesy of a charming necromancer, Zhontac. He has his eye on a fresh human specimen required to practice his enigmatic experiments on.~ IF ~~ THEN GOTO 194
END

IF ~~ THEN BEGIN 194
   SAY ~Coincidentally, one of his previous, 'volunteers', managed to escape, and now there's a bounty on Zhontac's head himself. You can either help him with his quest, or eliminate him for his bounty.~ IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195
   SAY ~For the most lucrative outcome, I'd suggest aiding Zhontac first, then ensuring he meets his demise after securing your reward.~ IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196
   SAY ~In either case, he can be found in the backyards of Beregost's eastern district, practicing his dark arts after nightfall.~ IF ~~ THEN GOTO 197
END

IF ~~ THEN BEGIN 197
   SAY ~Considering Zhontac's practices, it's only a matter of time before he draws the attention of the Flaming Fist. Beregost isn't the place for a necromancer to hide in plain sight for long.~ IF ~~ THEN GOTO 198
END

IF ~~ THEN BEGIN 198
   SAY ~Our priority should be to act swiftly. If we don't take this opportunity, they will, and we'll lose out on a profitable contract.~ IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199
   SAY ~Well then, my daring rogue, the shadows are cast and await your deft touch. Each of these bounties is a dance, and I can't wait to see how you move.~ IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200
   SAY ~Return to me with your successes, and I might just have something... exceptionally delightful for you. Remember, time is of the essence in this game.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",4)
   SetGlobal("h_SpawnEuropea","GLOBAL",1)
   SetGlobal("h_KatredaBounty","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",1)
   AddJournalEntry(@426,QUEST)
   AddJournalEntry(@431,QUEST)
   AddJournalEntry(@438,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) GlobalLT("h_BountyNumber","GLOBAL",6)~ THEN BEGIN 201
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_EuropeaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Europea.~ GOTO 203
       +~Global("h_KatredaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Katreda.~ GOTO 215
       +~Global("h_ZhontacBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Zhontac.~ GOTO 225
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 202
   SAY ~Do let me know if there's anything else you desire, my dear. A word, a whisper, a hint perhaps? I'm here to cater to all your needs, ensuring you're more than ready for the chase.~
       +~Global("h_EuropeaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Europea.~ GOTO 203
       +~Global("h_KatredaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Katreda.~ GOTO 215
       +~Global("h_ZhontacBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Zhontac.~ GOTO 225
       ++ ~There is nothing else I require at this time.~ EXIT
END

IF ~~ THEN BEGIN 203
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~PartyHasItem("h_misc11")~+ ~I have her here with me. A little worse for the wear, but alive nonetheless.~ GOTO 206
       +~PartyHasItem("h_misc10")~+ ~I found her lifeless form deep in the woods. Here is her thrall collar as proof.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 211
       +~!PartyHasItem("h_misc10") !PartyHasItem("h_misc11")~+ ~What else can you tell me about the target?~ GOTO 204
       ++ ~I have nothing to report at the moment.~ GOTO 202
END

IF ~~ THEN BEGIN 204
   SAY ~The noble who posted this bounty is... an odd character, even by our standards. His request for that collar struck me as particularly disturbing, a detail that suggests a darker side to this affair.~ IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205
   SAY ~When the girl escaped, she fled into the western woods. That region is sparse, the notable locations are the reclusive wizard Thalantyr's abode and the coastline. If I were you, I'd start there.~ IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 206
   SAY ~Hold on, love, she's just a child. Even in our domain, there are lines we shouldn't cross. This... this isn't right.~ IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207
   SAY ~Exploiting the innocence of youth is where I draw a firm boundary. This goes against even the most twisted morals of our shadowed world.~ IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208
   SAY ~Leave her with me. I'll ensure she receives proper care. As for the noble, he'll be receiving a visit he won't live to regret.~ IF ~~ THEN GOTO 209
END

IF ~~ THEN BEGIN 209
   SAY ~You've done your part, and you'll get your payment. I'll make sure of it from his own coffers.~ IF ~~ THEN GOTO 210
END

IF ~~ THEN BEGIN 210
   SAY ~Consider this an exception, <CHARNAME>. Sometimes, even shadows must draw a line in the sand.~
IF ~~ THEN DO ~
   SetGlobal("h_EuropeaBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc11")
   DestroyItem("h_misc11")
   AddJournalEntry(@429,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 211
   SAY ~Found her dead, you say? In our line of work, truth and deception dance a fine line, and I've learned to read their steps well.~ IF ~~ THEN GOTO 212
END

IF ~~ THEN BEGIN 212
   SAY ~But this... this is one of those rare instances where perhaps some truths are better left unspoken.~ IF ~~ THEN GOTO 213
END

IF ~~ THEN BEGIN 213
   SAY ~It's a grim outcome, but given the unsettling nature of this bounty, maybe it's for the best.~ IF ~~ THEN GOTO 214
END

IF ~~ THEN BEGIN 214
   SAY ~You've fulfilled your part, and will recieve your payment. Let's put this business behind us and look to the next shadow waiting in the wings.~
IF ~~ THEN DO ~
   SetGlobal("h_EuropeaBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc10")
   DestroyItem("h_misc10")
   AddJournalEntry(@430,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 215
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~Global("h_KatredaBounty","GLOBAL",2)~+ ~She would not back down, forcing my hand to bring about her permanent end.~ GOTO 219
       +~Global("h_KatredaBounty","GLOBAL",5)~+ ~I took out Asnabel instead. I know it wasn't the job we agreed on, but it felt like the right thing to do.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 211
       +~Global("h_KatredaBounty","GLOBAL",1)~+ ~What else can you tell me about the target?~ GOTO 216
       ++ ~I have nothing to report at the moment.~ GOTO 202
END

IF ~~ THEN BEGIN 216
   SAY ~Asnabel, the renowned hunter behind this bounty, can't seem to best her, and that speaks volumes.~ IF ~~ THEN GOTO 217
END

IF ~~ THEN BEGIN 217
   SAY ~She's a dryad, entwined with her forest, a mistress of her shadowy realm. Her battle against Asnabel's encroachment is more than just a skirmish, it's a passionate defense of her home.~ IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218
   SAY ~Tread carefully, love. In her domain, every whisper of the wind and rustle of leaves could be her eyes and ears. It's a tantalizing challenge, one that demands your cunning as much as your strength.~ IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 219
   SAY ~Well, well, you've certainly proven your mettle, haven't you? Taking down Katreda was no small feat. It's impressive, really, how you navigate these treacherous tasks with such... finesse.~ IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220
   SAY ~You've managed what even a hunter like Asnabel couldn't. Here's your reward, well-earned and richly deserved.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBountyEnd","GLOBAL",1)
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@433,QUEST_DONE)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 221
   SAY ~Right thing? You've overstepped your bounds, and in doing so, you've not only defied the guild's directive but also cost us.~ IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 222
   SAY ~We're in the business of fulfilling contracts, not passing moral judgments. Your actions have consequences, and this... this is a dangerous precedent.~ IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223
   SAY ~However, it's not a complete loss. As per our policy, Asnabel's down payment was substantial enough to cover the contract's failure.~ IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 224
   SAY ~But don't make a habit of this. We can't afford to let personal feelings interfere with business. Remember that next time, or there might not be a place for you here.~
IF ~~ THEN DO ~
   SetGlobal("h_KatredaBountyEnd","GLOBAL",1)
   SetGlobal("h_KatredaBounty","GLOBAL",6)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@437,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 225
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~Global("h_MagnusBounty","GLOBAL",3)~+ ~I fulfilled his request and opted to spare him so he can see his research through.~ DO ~AddJournalEntry(@444,QUEST_DONE)~ GOTO 230
       +~Global("h_ZhontacBounty","GLOBAL",4)~+ ~I chose to claim his bounty outright, sparing myself from entertaining his peculiar request.~ DO ~AddJournalEntry(@446,QUEST_DONE)~ GOTO 230
       +~Global("h_KilledMagnus","GLOBAL",2)~+ ~I worked his request, then disposed of him shortly after.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 232
       +~OR(3) Global("h_MagnusBounty","GLOBAL",3) Global("h_ZhontacBounty","GLOBAL",4) Global("h_KilledMagnus","GLOBAL",2)~+ ~What else can you tell me about the target?~ GOTO 226
       ++ ~I have nothing to report at the moment.~ GOTO 202
END

IF ~~ THEN BEGIN 226
   SAY ~Zhontac is a powerful necromancer with ambitions that border on madness. He recently arrived in Beregost, and is residing in the eastern part of town.~ IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227
   SAY ~Interestingly, he conducts his grim business right in his backyard. He's currently seeking a subject for his experiments, someone specific, though I'm not privy to who.~ IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228
   SAY ~It's a tangled web, this one. Two bounties intertwined in a dance of death and dark magic.~ IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229
   SAY ~Proceed with caution. Dealing with necromancers is always a risky affair. Their insanity is as dangerous as their magic.~ IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 230
   SAY ~That's disappointing. While fulfilling one contract is good, completing both would have been better. We're in this business for profit, and leaving money on the table doesn't suit you.~ IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231
   SAY ~Still, you've done half the job, so here's your half reward. Remember love, opportunities like this don't come often.~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBountyEnd","GLOBAL",1)
   SetGlobal("h_ZhontacBounty","GLOBAL",5)
   SetGlobal("h_MagnusBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   GiveGoldForce(500)
   AddExperienceParty(600)~ EXIT
END

IF ~~ THEN BEGIN 232
   SAY ~My, my, a clean sweep. You have a deliciously ruthless side to you, my dear, and I must say, it�s incredibly attractive to see such decisiveness in action.~ IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 233
   SAY ~You've embraced the shadowy dance of our world with such fervor, seizing opportunities where others might hesitate.~ IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234
   SAY ~Your thoroughness is not just effective, it's seductive. Here's your well-deserved reward, and a bit of admiration from me as well. You continue to surprise and captivate me, love. Keep it up.~
IF ~~ THEN DO ~
   SetGlobal("h_ZhontacBountyEnd","GLOBAL",1)
   SetGlobal("h_KilledMagnus","GLOBAL",3)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddJournalEntry(@445,QUEST_DONE)
   GiveGoldForce(1000)
   AddExperienceParty(600)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6) GlobalLT("h_LiedelRomanceActive","GLOBAL",2)~ THEN BEGIN 235
   SAY ~Gods, this place can be dreadfully dull at times. I'm not sure how much more of it I can take, honestly. Won't you have any fun with me, darling?~  IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6) Global("h_LiedelRomanceActive","GLOBAL",2)~ THEN BEGIN 236
   SAY ~Gods, this place can be dreadfully dull at times. I'm not sure how much more of it I can take, honestly. Won't you have any fun with me, darling?~
       ++ ~Don't worry, I won't let you suffer through the boredom alone.~ GOTO 238
       ++ ~I've missed our little chats, Liedel. I'm willing to pick up where we left off.~ GOTO 238
       ++ ~Sorry, but I'm a little busy right now.~ GOTO 237
END

IF ~~ THEN BEGIN 237
   SAY ~Ah, responsibilities await, as they always do. Until next time, dear companion. I look forward to our next exchange.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 238
   SAY ~Oh, thanks the gods for that. I have a feeling we'll find plenty of ways to keep things interesting.~ IF ~~ THEN GOTO 239
END

IF ~~ THEN BEGIN 239
   SAY ~I must admit, <CHARNAME>, the days have felt rather dull without our exchanges, and I've found myself looking forward to this moment.~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 240
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 269
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners of Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 281
END

IF ~~ THEN BEGIN 240
   SAY ~Ah, you were paying attention, weren't you? I must admit, it's... refreshing to find someone who listens so closely.~ IF ~~ THEN GOTO 241
END

IF ~~ THEN BEGIN 241
   SAY ~The Night Knives, yes, a chapter of my life I seldom open. But for you, I'll make an exception. You have a way of drawing out stories I thought were long buried.~ IF ~~ THEN GOTO 242
END

IF ~~ THEN BEGIN 242
   SAY ~I was doing bounty work for the Scepters, the armed forces of Selgaunt. But the allure of the underworld was too tempting to resist.~ IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243
   SAY ~One fateful night, it was raining, the streets were slick with mud, and I was hot on the trail of a notorious thief who had been giving the Scepters a run for their money.~ IF ~~ THEN GOTO 244
END

IF ~~ THEN BEGIN 244
   SAY ~Cornered in a dimly lit alley, I found myself face to face with the thief. The tension was palpable as we assessed each other.~ IF ~~ THEN GOTO 245
END

IF ~~ THEN BEGIN 245
   SAY ~In that moment, I recognized a fellow shadow-dancer, someone who moved effortlessly through the dark. We had a silent understanding, the life we were leading was far more exciting than any other.~ IF ~~ THEN GOTO 246
END

IF ~~ THEN BEGIN 246
   SAY ~She ended up introducing me to the Night Knives, and the decision to join their ranks felt like destiny.~ IF ~~ THEN GOTO 247
END

IF ~~ THEN BEGIN 247
   SAY ~Among them, I learned the art of misdirection, the craft of silent movements, and the thrill of outsmarting our targets.~ IF ~~ THEN GOTO 248
END

IF ~~ THEN BEGIN 248
   SAY ~It was a world where secrets were currency, and loyalty was our most treasured possession.~ IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249
   SAY ~I discovered that the Night Knives were much more than just thieves. We were orchestrators of chaos and puppeteers of deception.~ IF ~~ THEN GOTO 250
END

IF ~~ THEN BEGIN 250
   SAY ~At the time, it was exhilarating, and I wouldn't trade those experiences for anything. It was where I truly found my place among the shadows.~
       ++ ~The Night Knives sound like quite the crew. But obviously you didn't stick around forever. What happened next?~ GOTO 251
       ++ ~Leaving the Night Knives must have been a significant step for you. What was the turning point?~ GOTO 251
       ++ ~I can imagine the Night Knives had their fair share of excitement. What made you seek something else?~ GOTO 251
END

IF ~~ THEN BEGIN 251
   SAY ~Things... ended up taking a different turn. We had a falling out, you could say. A difference of opinions on how certain things should be handled.~ IF ~~ THEN GOTO 252
END

IF ~~ THEN BEGIN 252
   SAY ~But, that's as far as the story goes for today, <CHARNAME>.~
       ++ ~How do things in the Gorgon's Eye stack up against the Night Knives?~ GOTO 255
       ++ ~Secrets, shadows, and cunning. It's like something out of a dime store novel. Did you wear a dramatic cape too?~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 253
END

IF ~~ THEN BEGIN 253
   SAY ~Mocking, are we? I'd hoped for a more... mature response, especially when I'm sharing a part of my life that few know about. This isn't some cheap tale for amusement, it's my past, my reality.~ IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
   SAY ~I opened a door to my past, a rare gesture, and you respond with triviality. Perhaps we should stick to simpler topics, ones more within your scope of understanding.~ IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 255
   SAY ~The Night Knives and the Gorgon's Eye... they're similar in some ways, but the scale of our operations is worlds apart.~ IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256
   SAY ~Selgaunt was a beast of a city, far grander than Beregost, with security that could make even the most audacious thief pause. It's a big city game, with big city stakes.~ IF ~~ THEN GOTO 257
END

IF ~~ THEN BEGIN 257
   SAY ~The Night Knives thrived on the abundance of nobles, delving deep into extortion and manipulation.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258
   SAY ~Krollir Venasten, or the 'Righteous Man' as he styled himself, was a master of playing those stakes, using his position as a priest of Mask to extend the guild's reach. ~ IF ~~ THEN GOTO 259
END

IF ~~ THEN BEGIN 259
   SAY ~They were more than just thieves; they were power brokers in a city ripe for manipulation.~ IF ~~ THEN GOTO 260
END

IF ~~ THEN BEGIN 260
   SAY ~Here, in Beregost, it's smaller, true. But it has its own charm, its own whispered secrets. We may not be in the belly of a bustling metropolis, but the thrill of the chase still quickens the blood.~ IF ~~ THEN GOTO 261
END

IF ~~ THEN BEGIN 261
   SAY ~And besides, the smaller pond allows for a different kind of mastery, a more intimate understanding of our domain.~ IF ~~ THEN GOTO 262
END

IF ~~ THEN BEGIN 262   
   SAY ~Our game is subtler, more nuanced, but no less thrilling. In these streets, we move unseen, our influence just as potent in its own way.~ IF ~~ THEN GOTO 263
END

IF ~~ THEN BEGIN 263
   SAY ~So, <CHARNAME>, which do you find more intriguing, I wonder? The grandeur of a big city like Selgaunt or the close-knit dance of Beregost?~
       ++ ~There's something about the chaos of a big city that gets the blood pumping. The constant challenge, the endless opportunities. Selgaunt must have felt like a true playground.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 255
       ++ ~I prefer the intimacy of a smaller town. You get to know the ins and outs, the hidden corners and quiet backstreets. It's a canvas that can be just as thrilling to paint on.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 256
       ++ ~Cities are cities, towns are towns. What matters most is the challenge they present. The size is just a detail, really.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 257
END

IF ~~ THEN BEGIN 264
   SAY ~Ah, the siren call of the grand city. Selgaunt certainly had its allure. The rush of navigating through the bustling streets, outsmarting the city's finest, it's an art in itself.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 265
   SAY ~There's a certain charm to a smaller town, isn't there? The secrets are more tightly guarded, the connections more personal. Beregost may be diminutive, but it holds its own in the dance of shadows.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 266
   SAY ~You're a rare breed, love. Indifferent to the canvas upon which we weave our stories? I can't say I share your sentiment. The environment shapes the game, after all.~ IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 267
   SAY ~You know, <CHARNAME>, hearing your preferences gives me a bit more insight into the kind of thief you are. It's always fascinating to see what makes a fellow rogue tick.~ IF ~~ THEN GOTO 268
END

IF ~~ THEN BEGIN 268
   SAY ~Now, is there something else you're curious about? Another chapter in our little exchange, perhaps?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 240
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 269
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners of Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 281
       +~GlobalLT("h_LiedelLove","GLOBAL",10)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 289
       +~GlobalGT("h_LiedelLove","GLOBAL",9)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 292
END

IF ~~ THEN BEGIN 269
   SAY ~Well, if you must know... there is something, I suppose. It's a rather... personal indulgence of mine. Before I tell you though, I need you to promise me that you won't laugh.~
       ++ ~Your secret's safe with me. Unless, of course, it involves talking to woodland creatures at midnight.~ GOTO 271
       ++ ~You have my word, I won't even crack a smile. Now, the suspense is killing me. What's this little quirk of yours?~ GOTO 270
       ++ ~Well, I can't promise not to laugh if I don't even know what it is, can I?~ GOTO 271
       ++ ~I can't make any guarantees, but I'll do my best. Now, you've got me intrigued. What is it?~ GOTO 270
END

IF ~~ THEN BEGIN 270
   SAY ~Actually, you know what, let's keep it a mystery for now. There are other things we could discuss, after all. What else is on your mind, love?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 240
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 269
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners of Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 281
       +~GlobalLT("h_LiedelLove","GLOBAL",10)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 289
       +~GlobalGT("h_LiedelLove","GLOBAL",9)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 292
END

IF ~~ THEN BEGIN 271
   SAY ~I mean it, <CHARNAME>. You'd better not laugh, or you might just find a dagger at your throat.~ IF ~~ THEN GOTO 272
END

IF ~~ THEN BEGIN 272
   SAY ~There is... one particular pastime that holds a special place in my heart. A pursuit that draws me away from the chaotic intrigues of our trade.~ IF ~~ THEN GOTO 273
END

IF ~~ THEN BEGIN 273
   SAY ~I find solace in simply lying beneath the stars, under the nights embrace. It's... peaceful. The world takes on a different quality, and for a moment, it's like everything else fades away.~ IF ~~ THEN GOTO 274
END

IF ~~ THEN BEGIN 274
   SAY ~I suppose it's a bit silly... but there's a certain magic to it that I've always cherished. It reminds me of a time when life was simpler, filled with wonder and possibility.~
       ++ ~Stars, huh? I prefer to keep my eyes on more... tangible treasures, if you catch my drift.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 275
       ++ ~So, you're a stargazer, Liedel? Who would've thought? I suppose even assassins need a little romance in their lives.~ GOTO 276
       ++ ~Stars, solitude, and a killer's heart. Quite the combination, Liedel.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 278
       ++ ~I'll make sure to take you stargazing sometime. Who knows, we might uncover a few constellations of our own.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 279
END

IF ~~ THEN BEGIN 275
   SAY ~Well, it seems eloquence isn't your strong suit. Perhaps next time, I'll keep my musings to myself. Let's move on, shall we?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 240
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 269
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners of Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 281
       +~GlobalLT("h_LiedelLove","GLOBAL",10)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 289
       +~GlobalGT("h_LiedelLove","GLOBAL",9)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 292
END

IF ~~ THEN BEGIN 276
   SAY ~Oh, darling, you misunderstand, romance is everywhere, if you know where to look. It's in the dance of shadows, the thrill of the chase, the pulse of anticipation before a strike.~ IF ~~ THEN GOTO 277
END

IF ~~ THEN BEGIN 277
   SAY ~Life is a tapestry of desires and intrigues, and I intend to revel in every thread of it.~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 278
   SAY ~Indeed, It's a combination that defines who I am. I hope you remember it well, my love.~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 279
   SAY ~Oh, shut up, <CHARNAME>. Though I must admit... the notion does hold a certain appeal. I suppose I wouldn't mind seeing the night sky through your eyes.~ IF ~~ THEN GOTO 280
END

IF ~~ THEN BEGIN 280
   SAY ~But enough about that, my dear companion. What other enticing thoughts are occupying your mind, I wonder?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 240
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 269
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners of Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 281
       +~GlobalLT("h_LiedelLove","GLOBAL",10)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 289
       +~GlobalGT("h_LiedelLove","GLOBAL",9)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 292
END

IF ~~ THEN BEGIN 281
   SAY ~You know, Beregost may not be the grandest city, but it has its charms. While I'm usually one for the thrill of action, there is one place that draws me in, for a different reason.~ IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282
   SAY ~Down by the southside, near the fountains, there's this hidden nook. The perfect place to steal a moment of quiet reflection, to escape the world's demands, even if just for a short while.~ IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283
   SAY ~A paradox, perhaps, but even the most restless spirits like mine sometimes need a quiet corner to escape to.~ IF ~~ THEN GOTO 284
END

IF ~~ THEN BEGIN 284
   SAY ~Every time I manage to steal away from the guild, I find myself drawn there. It's like a brief respite from the shadows, a slice of tranquility where I can just be, away from it all.~
       ++ ~Ah, the elusive sanctuary of water fountains! Truly, Liedel, you have a knack for finding the hidden treasures in life.~ GOTO 285
       ++ ~I'll have to visit this secret oasis someday. Maybe you'll show me around?~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 286
       ++ ~Water fountains, really? I expected something a bit more... thrilling from someone who's always seeking excitement.~ GOTO 287
END

IF ~~ THEN BEGIN 285
   SAY ~Ah, you see, darling, sometimes it's the most unexpected places that offer the sweetest surprises. Just like the delightful company I find here with you.~ IF ~~ THEN GOTO 286
END

IF ~~ THEN BEGIN 286
   SAY ~Well, my love, you'll have to prove yourself worthy of such an exclusive tour, won't you?~ IF ~~ THEN  GOTO 287
END

IF ~~ THEN BEGIN 287
   SAY ~I'm not as one-dimensional as you think, darling. After all, even an assassin needs moments of tranquility amidst the chaos.~ IF ~~ THEN GOTO 288
END

IF ~~ THEN BEGIN 288
   SAY ~But enough about my secret hideaways in Beregost. The hour grows late, dear companion. Is there anything else you'd like to discuss?~
       +~Global("h_LiedelTalk21","GLOBAL",0)~+ ~You mentioned the Night Knives earlier. Interested in sharing the rest of that story?~ DO ~SetGlobal("h_LiedelTalk21","GLOBAL",1)~ GOTO 240
       +~Global("h_LiedelTalk22","GLOBAL",0)~+ ~Do you have any hobbies or interests outside the world of thieving and assassinations?~ DO ~SetGlobal("h_LiedelTalk22","GLOBAL",1)~ GOTO 269
       +~Global("h_LiedelTalk23","GLOBAL",0)~+ ~Are there any secret corners of Beregost that you're particularly fond of?~ DO ~SetGlobal("h_LiedelTalk23","GLOBAL",1)~ GOTO 281
       +~GlobalLT("h_LiedelLove","GLOBAL",10)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 289
       +~GlobalGT("h_LiedelLove","GLOBAL",9)~+ ~I hate to cut this short, Liedel, but the shadows beckon.~ GOTO 292
END

IF ~~ THEN BEGIN 289
   SAY ~Ah, responsibilities await, as they always do. Our conversations have shown me the value of a companion in our often solitary world.~ IF ~~ THEN GOTO 290
END

IF ~~ THEN BEGIN 290
   SAY ~While the depths of our connection may not delve into the realms of romance, I've come to cherish the friendship we share.~ IF ~~ THEN GOTO 291
END

IF ~~ THEN BEGIN 291
   SAY ~Go then, embrace your path in the shadows, and may they reveal to you what you seek.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 292
   SAY ~You know, <CHARNAME>, our conversations have been... different, in a most intriguing way.~ IF ~~ THEN GOTO 293
END

IF ~~ THEN BEGIN 293
   SAY ~There's something about the way you carry yourself, the way you challenge me. It's... refreshing.~ IF ~~ THEN GOTO 294
END

IF ~~ THEN BEGIN 294
   SAY ~I must say, I find myself looking forward to our encounters more than I care to admit.~ IF ~~ THEN GOTO 295
END

IF ~~ THEN BEGIN 295
   SAY ~Tell me, <CHARNAME>, do you ever wonder if there might be something more between us, beneath the surface?~
       ++ ~I've been thinking about that too, Liedel. There's a connection here, no denying it, and I want to see where it leads us.~ GOTO 299
       ++ ~Liedel, our conversations have been... interesting, to say the least. I'm not one to rush into things. Let's take our time and see where this leads.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-5) SetGlobal("h_LiedelRomanceActive","GLOBAL",3)~ GOTO 297
       ++ ~Let's not complicate things. I don't see a romantic connection here. Why don't we continue our interactions the way they are.~ DO ~SetGlobal("h_LiedelRomanceActive","GLOBAL",0)~ GOTO 296
END

IF ~~ THEN BEGIN 296
   SAY ~Well, that's no fun now is it? Back to business as usual, I suppose. Oh, how dreadfully dull.~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 297
   SAY ~Take things slow? Oh, how dreadfully dull. Patience may be a virtue, but it's not exactly my forte, love.~ IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298
   SAY ~If you ever find yourself in need of some excitement, you know where to find me. Until then, my dear companion.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 299
   SAY ~I'm pleased to hear you say that, <CHARNAME>. Perhaps we can explore this connection further, in the days to come. Until then, my dear companion.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",3)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6) GlobalLT("h_LiedelRomanceActive","GLOBAL",4)~ THEN BEGIN 300
   SAY ~Ah, there you are, my delightful distraction. You always know how to sweep me off my feet. I'll be looking forward to our next exchange.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",4) Global("h_BountyNumber","GLOBAL",6) Global("h_LiedelRomanceActive","GLOBAL",4)~ THEN BEGIN 301
   SAY ~There you are, my love. You know, I can't seem to get you out of my mind. It's as if you've woven a spell around me, making it impossible to resist your allure.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",5)~ THEN BEGIN 302
   SAY ~Finally, something to stir the pot and break this tiresome routine. There's a fresh batch of bounties ripe for the picking. Are you up for a little excitement, love?~
       ++ ~What new targets do you have for me?~ GOTO 338
       +~GlobalGT("h_LiedelRomanceActive","GLOBAL",2)~+ ~How are you holding up after the attack?~ GOTO 303
       ++ ~I'll have to pass for now.~ EXIT
END

IF ~~ THEN BEGIN 303
   SAY ~Oh, I'm more than just holding up, love. A bit of danger always sets my heart racing. I've always found the chaos rather... invigorating.~ IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304
   SAY ~But, you... <CHARNAME>. I've heard whispers about what you did out there... about single-handedly decimating the Shadow Thieves in the streets.~ IF ~~ THEN GOTO 305
END

IF ~~ THEN BEGIN 305
   SAY ~It sends a shiver down my spine, thinking about it. The sheer force you wielded, the effortless way you turned the tide... It's both frightening and... incredibly enticing.~ IF ~~ THEN GOTO 306
END

IF ~~ THEN BEGIN 306
   SAY ~To think that someone I know, someone I've... gotten close with, could wield such power.~ IF ~~ THEN GOTO 307
END

IF ~~ THEN BEGIN 307
   SAY ~It makes one wonder what other secrets you might be hiding, what other surprises you have up your sleeve. And I must confess, I'm dying to uncover each one of them.~ IF ~~ THEN GOTO 308
END

IF ~~ THEN BEGIN 308
   SAY ~After all, I find myself quite drawn to your flame, and I'd hate for it to extinguish before getting a chance to play with it a bit more.~
       ++ ~You're giving me too much credit, Liedel. They weren't as tough as the rumors suggested.~ GOTO 309
       ++ ~Never a dull moment in our line of work, right? Just doing my part to keep it that way.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 311
       ++ ~Catching your eye was the real prize here. The rest was just part of the job.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 313
       ++ ~That was just a regular day for me. It takes more than a few Shadow Thieves to slow me down.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 315
END

IF ~~ THEN BEGIN 309
   SAY ~No, darling, you're wrong. The Shadow Thieves are a force to be reckoned with, a deadly storm in our underworld. There not just some walk in the park.~ IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310
   SAY ~Anyone else would have been overwhelmed. But you? You danced through them like it was a game, and that's nothing to be humble about.~ IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 311
   SAY ~And what a thrilling part you play. The world of shadows can be so dreadfully boring without a bit of flair.~ IF ~~ THEN GOTO 312
END

IF ~~ THEN BEGIN 312
   SAY ~You bring a spark, a blaze of excitement that even I can't help but admire. Keep it up, and you might just make a thrill-seeker like me quite... ecstatic.~ IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 313
   SAY ~Oh, such sweet words. You do know how to make a girl's heart flutter. But remember, catching my eye is one thing, keeping it is another.~ IF ~~ THEN GOTO 314
END

IF ~~ THEN BEGIN 314
   SAY ~With moves like yours, though, I have a feeling you'll be captivating me for quite some time.~ IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 315
   SAY ~That's a bit rich, even for you. In our world, arrogance can be as dangerous as a blade at your back.~ IF ~~ THEN GOTO 315
END

IF ~~ THEN BEGIN 316
   SAY ~It's the shadowy finesse, the art of subtlety that's truly seductive. Don't lose sight of that, or you might just lose my interest.~ IF ~~ THEN GOTO 317
END

IF ~~ THEN BEGIN 317
   SAY ~At any rate, I've been curious about something else, something a bit more... elusive. Tell me, what happened on your mission up north?~ IF ~~ THEN GOTO 318
END

IF ~~ THEN BEGIN 318
   SAY ~A dangerous game of cat and mouse, played in a forest as enigmatic as our own guild's secrets. So, how did it go?~
       ++ ~Let's skip the small talk for now and get down to business. Tell me about those new bounties.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 336
       ++ ~I found the smugglers as planned, but the Shadow Thieves showed up and complicated things. It was a tricky situation, to say the least.~ GOTO 319
       ++ ~You should have seen it, Liedel. The smugglers, the sudden appearance of the Shadow Thieves... it was a real adrenaline rush.~ GOTO 320
       ++ ~It was an eventful trip. Encounters with smugglers, a run-in with the Shadow Thieves. Let's just say it wasn't a straightforward mission.~ GOTO 321
END

IF ~~ THEN BEGIN 319
   SAY ~That's putting it mildly, love. Dealing with the Shadow Thieves is never straightforward. But I'm sure you handled it with your usual flair. It's what makes you so... intriguing.~ IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 320
   SAY ~Now that's my kind of mission. Sounds like you had all the fun without me. Next time, you'll have to let me in on the action.~ IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 321
   SAY ~In our line of work, 'eventful' often means dangerous... and exciting. I'm glad you're back in one piece, though. It means we get to enjoy more... 'events' together.~ IF ~~ THEN GOTO 322
END

IF ~~ THEN BEGIN 322
   SAY ~Speaking of the Shadow Thieves, there's a particular name that's been on everyone's lips lately... Thamuz. He's said to be as dangerous as he is elusive, a true ghost in the night.~ IF ~~ THEN GOTO 323
END

IF ~~ THEN BEGIN 323
   SAY ~Rumors have it he's more than just a shadow, he's a harbinger of death, and deceit. You faced him, <CHARNAME>. What truths lie in these passing whispers of his prestige?~
       ++ ~Thamuz chose to strike with words, before his blades. An unwise decision that cost him his life.~ GOTO 324
       ++ ~Thamuz lived up to his reputation, yet he chose to reveal himself through words, not actions.~ GOTO 324
       ++ ~For a master of stealth, he broke his silence rather quickly, in a way that was more unsettling than his hidden blade.~ GOTO 324
END

IF ~~ THEN BEGIN 324
   SAY ~When a man of Thamuz's caliber breaks his silence, it's never without reason. He's a creature of the shadows, his words are as calculated as his steps.~ IF ~~ GOTO 325
END

IF ~~ THEN BEGIN 325
   SAY ~So, what did he share in those rare moments of candor? What hidden truths or deceits did he weave into his whispers?~
       ++ ~You know what? Let's shelf that discussion for another time. I'm more interested in hearing about your new bounties.~ GOTO 326
       ++ ~It's too dangerous for open discussion. Let's leave it at that and move on for now.~ GOTO 326
       ++ ~Thamuz revealed some... troubling things about Baldwin and his dark intentions with the Kerykeion.~ GOTO 328
END

IF ~~ THEN BEGIN 326
   SAY ~Oh, <CHARNAME>, you can't tease me with whispers of shadowy secrets and then withhold them. It's not fair to leave a lady... wanting.~ IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 327
   SAY ~Come on, out with it. Share with me what Thamuz said. I assure you, I can handle a bit of danger. And who knows, I might even be able to offer some... intriguing insights in return.~
       ++ ~I mean it, Liedel. It's the kind of talk that gets people killed, and I can't risk your safety. This is one secret that needs to stay buried, at least for now.~ GOTO 333
       ++ ~He spoke... cryptic words, shadows veiled in half-truths, disturbing details about Baldwin's ambitions with the Kerykeion.~ GOTO 328
END

IF ~~ THEN BEGIN 328
   SAY ~<CHARNAME>... what exactly are you trying to say? You can't possibly mean...~
       ++ ~Baldwin's plan to reconstruct the Kerykeion is a path to disaster. It's not just a weapon, it's a harbinger of death and chaos, regardless of his motives.~ DO ~SetGlobal("h_LiedelBetray","GLOBAL",1)~ GOTO 329
       ++ ~Thamuz made it clear. The Kerykeion, in its complete form, will be catastrophic. Baldwin may think he can control it, but its power will bring nothing but ruin.~ GOTO 329
END

IF ~~ THEN BEGIN 329
   SAY ~Stop. Not another word. Damn it, <CHARNAME>, have you lost all sense? Do you have any idea what you're playing at? The walls have ears, and this... this is a death wish.~ IF ~~ THEN GOTO 330
END

IF ~~ THEN BEGIN 330
   SAY ~Baldwin is a monster, one of the most ruthless rogues I've known. If he even got a whiff of this, you'd be lucky if death is all you got.~ IF ~~ THEN GOTO 331
END

IF ~~ THEN BEGIN 331
   SAY ~And it's not just you at risk, you've endangered me too, just by saying this much. You need to be smarter than this, <CHARNAME>, more cautious.~ IF ~~ THEN GOTO 332
END

IF ~~ THEN BEGIN 332
   SAY ~Let's bury this conversation here and now, for both our sakes. We can't change what's been said, but we can choose what we say next.~ IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 333
   SAY ~Oh, my dear <CHARNAME>, what shadowy depths have you plunged into that's got you so tightly wound? You're not one to scare easily, yet... that look in your eyes.~ IF ~~ THEN GOTO 334
END

IF ~~ THEN BEGIN 334
   SAY ~I suppose I should be flattered that you're worried about my safety. It's not often someone cares that much in our line of work. Still, you're a maddening tease, keeping such secrets from me.~ IF ~~ THEN GOTO 335
END

IF ~~ THEN BEGIN 335
   SAY ~Whatever. We'll put this unnerving mystery aside for now, and leave the ominous whispers where they lie.~ IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 336
   SAY ~You're no fun, <CHARNAME>, skipping over the juicy details like that. But fine, if you insist on business before pleasure, I suppose I can oblige.~ IF ~~ THEN GOTO 337
END

IF ~~ THEN BEGIN 337
   SAY ~Let's talk bounties then. I've already lined up some potential jobs that should pique your interest. This is what we should concentrate on.~ IF ~~ THEN GOTO 338
END

IF ~~ THEN BEGIN 338
   SAY ~First up, an alchemist, Alaric, who claims to have developed a cure for featherlung, a fast spreading disease that recently devastated the city of Procampur.~ IF ~~ THEN GOTO 339
END

IF ~~ THEN BEGIN 339
   SAY ~This cure is drawing attention from all corners of the realms. Most wanting the serum in their own hands with the alchemist silenced forever.~ IF ~~ THEN GOTO 340
END

IF ~~ THEN BEGIN 340
   SAY ~There are priests from the temples who want it for the good of the people, and there are merchants who foresee a fortune to be made.~ IF ~~ THEN GOTO 341
END

IF ~~ THEN BEGIN 341
   SAY ~My suggestion? We sell it to the merchants. They'll pay top coin, and we could use a windfall like that, don't you think?~ IF ~~ THEN GOTO 342
END

IF ~~ THEN BEGIN 342
   SAY ~They say Alaric's got a hidden workshop somewhere in Baldur's Gate. A place packed full of his lab 'rats' or whatever creatures he's been using for his experiments.~ IF ~~ THEN GOTO 343
END

IF ~~ THEN BEGIN 343
   SAY ~Now, onto our next mark, Lord Varlind, one of Grand Duke Belt's closest advisors.~ IF ~~ THEN GOTO 344
END

IF ~~ THEN BEGIN 344
   SAY ~There's more to this story than meets the eye. Varlind has been a shadow behind the throne for years, keeping Belt wrapped around his finger, but now, his politcal peers want him out of the way.~ IF ~~ THEN GOTO 345
END

IF ~~ THEN BEGIN 345
   SAY ~This toff's got a penchant for posh inns, spends half his life bathed in velvet and sippin' the finest. If you're looking to find him, I'd start there.~ IF ~~ THEN GOTO 346
END

IF ~~ THEN BEGIN 346
   SAY ~This one's got layers, love, and I'm sure you'll find the challenge quite... intriguing.~ IF ~~ THEN GOTO 347
END

IF ~~ THEN BEGIN 347
   SAY ~And lastly, there's Isla Darkcloak, the former champion of the fighting pits.~ IF ~~ THEN GOTO 348
END

IF ~~ THEN BEGIN 348
   SAY ~She's quite the legend in her own right. Yet, they say she grew bored of the arena, where victory was almost guaranteed for her. A sentiment I can understand too well.~ IF ~~ THEN GOTO 349
END

IF ~~ THEN BEGIN 349
   SAY ~Now, she's turned her talents to a different kind of fight, as a ruthless assassin and mercenary.~ IF ~~ THEN GOTO 350
END

IF ~~ THEN BEGIN 350
   SAY ~Trouble is, her efficiency has earned her some powerful enemies who've decided it's time to put an end to her reign.~ IF ~~ THEN GOTO 351
END

IF ~~ THEN BEGIN 351
   SAY ~Tracking her down won't be a walk in the park. Isla's become quite elusive.~ IF ~~ THEN GOTO 352
END

IF ~~ THEN BEGIN 352
   SAY ~I'd suggest you start by talking to some professionals like us, love. People who reside in the shadows, and know the underbelly well.~ IF ~~ THEN GOTO 353
END

IF ~~ THEN BEGIN 353
   SAY ~Well, my love, it seems the stage is set for quite the performance. Three intriguing pieces on this wicked chessboard.~ IF ~~ THEN GOTO 354
END

IF ~~ THEN BEGIN 354
   SAY ~You've got choices to make, and each one is bound to leave its mark. Play your cards right, and you'll walk away from this with pockets full and a reputation that'll set hearts aflutter.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",6)
   SetGlobal("h_SpawnAlaric","GLOBAL",1)
   SetGlobal("h_SpawnVarlind","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",1)
   AddJournalEntry(@447,QUEST)
   AddJournalEntry(@452,QUEST)
   AddJournalEntry(@457,QUEST)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",6) GlobalLT("h_BountyNumber","GLOBAL",9)~ THEN BEGIN 355
   SAY ~You have my attention, love. I'm ready to savor the secrets that dance upon your lips.~
       +~Global("h_AlaricBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Alaric.~ GOTO 357
       +~Global("h_VarlindBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Lord Varlind.~ GOTO 369
       +~Global("h_IslaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Isla.~ GOTO 381
       +~OR(2) Global("h_LiedelKiss","GLOBAL",0) Global("h_LiedelKiss","GLOBAL",1) GlobalLT("h_LiedelLove","GLOBAL",11) Global("h_IslaBounty","GLOBAL",2)~+ ~I'd like to discuss the bounty on Isla.~ DO ~AddJournalEntry(@461,QUEST_DONE)~ GOTO 390
       +~Global("h_IslaBounty","GLOBAL",2) GlobalGT("h_LiedelLove","GLOBAL",11) Global("h_LiedelKiss","GLOBAL",1)~+ ~I'd like to discuss the bounty on Isla.~ GOTO 394
       ++ ~I'll be going now.~ EXIT
END

IF ~~ THEN BEGIN 356
   SAY ~Do let me know if there's anything else you desire, my dear. A word, a whisper, a hint perhaps? I'm here to cater to all your needs, ensuring you're more than ready for the chase.~
       +~Global("h_AlaricBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Alaric.~ GOTO 357
       +~Global("h_VarlindBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Lord Varlind.~ GOTO 369
       +~Global("h_IslaBountyEnd","GLOBAL",0)~+ ~I'd like to discuss the bounty on Isla.~ GOTO 381
       ++ ~There is nothing else I require at this time.~ EXIT
END

IF ~~ THEN BEGIN 357
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~PartyHasItem("h_misc30")~+ ~He's been... taken care of, and the serum is now in my hands.~ GOTO 362
       +~!PartyHasItem("h_misc30")~+ ~What else can you tell me about the target?~ GOTO 358
       ++ ~I have nothing to report at the moment.~ GOTO 356
END

IF ~~ THEN BEGIN 358
   SAY ~Baldur's Gate is vast, a labyrinth of streets and secrets. Finding Alaric's workshop in that maze won't be easy. But here's what I know...~ IF ~~ THEN GOTO 359
END

IF ~~ THEN BEGIN 359
   SAY ~He's notorious for his alchemical experiments, not just on elixirs but on creatures as well.~ IF ~~ THEN GOTO 360
END

IF ~~ THEN BEGIN 360
   SAY ~Maybe start by looking for any unusual animal activity or local rumors about strange beasts. Places where such experiments could be hidden away, perhaps in less frequented parts of the city.~ IF ~~ THEN GOTO 361
END

IF ~~ THEN BEGIN 361
   SAY ~And remember, discretion is key. We're not the only ones with eyes on Alaric and his work.~ IF ~~ THEN GOTO 356
END

IF ~~ THEN BEGIN 362
   SAY ~Impressive work, love. You've proven yourself once again. The featherlung serum is now yours to command, you've earned the right to decide its fate.~ IF ~~ THEN GOTO 363
END

IF ~~ THEN BEGIN 363
   SAY ~Shall we take it to the healers, 'potentially' saving more lives? Or shall we sell it to the merchants, securing a handsome reward for yourself and the guild?~ IF ~~ THEN GOTO 364
END

IF ~~ THEN BEGIN 364
   SAY ~The choice, my dear, is entirely yours.~
       ++ ~The healers should have the serum. It's the right thing to do.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 365
       ++ ~The merchants will pay handsomely for this serum. It's a business decision, and I choose them.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 367
END

IF ~~ THEN BEGIN 365
   SAY ~Well, if that's your... sentiment. I suppose it's your call. The healers will have their precious serum. It's not the route I'd choose, mind you, but I can respect your decision.~ IF ~~ THEN GOTO 366
END

IF ~~ THEN BEGIN 366
   SAY ~The coin they offer won't be near what the merchants would have paid. Altruism rarely lines one's pockets as generously.~
IF ~~ THEN DO ~
   SetGlobal("h_AlaricBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc30")
   DestroyItem("h_misc30")
   GiveGoldForce(500)
   AddExperienceParty(900)
   ReputationInc(1)
   AddJournalEntry(@450,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 367
   SAY ~Ah, the merchants, my love... Now that's a choice I can truly appreciate. Practical, strategic, and lucrative. You've certainly piqued my interest.~ IF ~~ THEN GOTO 368
END

IF ~~ THEN BEGIN 368
   SAY ~The coin they offer will be substantial, I assure you. You've got a keen eye for profit, and I must say, it's rather... enticing.~
IF ~~ THEN DO ~
   SetGlobal("h_AlaricBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   TakePartyItem("h_misc30")
   DestroyItem("h_misc30")
   GiveGoldForce(1000)
   AddExperienceParty(900)
   ReputationInc(-1)
   AddJournalEntry(@451,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 369
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~Dead("h_varlic")~+ ~Consider his chapter closed. The city's landscape may shift, but my coin purse will grow heavier.~ GOTO 374
       +~Global("h_VarlindBounty","GLOBAL",1)~+ ~Liedel, I couldn't go through with it. Varlind, he's deeply entangled in the city's fate. Killing him didn't feel right.~ GOTO 377
       +~!Dead("h_varlic") Global("h_VarlindBounty","GLOBAL",0)~+ ~What else can you tell me about the target?~ GOTO 370
       ++ ~I have nothing to report at the moment.~ GOTO 356
END

IF ~~ THEN BEGIN 370
   SAY ~Lord Varlind, for all his lavish tastes, rarely leaves Baldur's Gate. Despite his love for luxury, he's a man dedicated to his work, almost obsessively so.~ IF ~~ THEN GOTO 371
END

IF ~~ THEN BEGIN 371
   SAY ~He's constantly busy, bouncing from one high-profile meeting to another. If you want to catch him, you'll need to navigate through a web of his political engagements.~ IF ~~ THEN GOTO 372
END

IF ~~ THEN BEGIN 372
   SAY ~Look into his meeting schedules, the people he's seeing. That's your best chance to find an opening.~ IF ~~ THEN GOTO 373
END

IF ~~ THEN BEGIN 373
   SAY ~Remember, he's shrewd and not easily fooled, but I trust you'll find a way to turn his hectic lifestyle to our advantage.~ IF ~~ THEN GOTO 356
END

IF ~~ THEN BEGIN 374
   SAY ~Impressive work, love. Varlind's absence won't go unnoticed, that's for sure. The ripples of your actions will spread far and wide across Baldur's Gate.~ IF ~~ THEN GOTO 375
END

IF ~~ THEN BEGIN 375
   SAY ~Varlind had his fingers in many pies, and there'll be a scramble to fill the void he's left. Keep your eyes and ears open, opportunities like this can be as dangerous as they are lucrative.~ IF ~~ THEN GOTO 376
END

IF ~~ THEN BEGIN 376
   SAY ~And remember, in our line of work, attention is a double-edged sword. Let's make sure we use it to our advantage.~
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",2)
   SetGlobal("h_VarlindBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   GiveGoldForce(500)
   AddExperienceParty(900)
   AddJournalEntry(@455,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 377
   SAY ~You and your moral quandaries, <CHARNAME>. Sometimes, I wonder if you've forgotten the nature of our work. We're not in the business of weighing hearts and destinies.~ IF ~~ THEN GOTO 378
END

IF ~~ THEN BEGIN 378
   SAY ~But, as it turns out, your soft-heartedness hasn't cost us this time. His fate has been sealed by another hand.~ IF ~~ THEN GOTO 379
END

IF ~~ THEN BEGIN 379
   SAY ~His body was found, lifeless, and washed up at the city's docks. It seems Baldur's Gate is never short of those willing to do the dirty work. And the job's done, one way or another.~ IF ~~ THEN GOTO 380
END

IF ~~ THEN BEGIN 380
   SAY ~Still, remember, these decisions have consequences. Not just for you, but for all of us in the shadows.~
IF ~~ THEN DO ~
   SetGlobal("h_VarlindBounty","GLOBAL",2)
   SetGlobal("h_VarlindBountyEnd","GLOBAL",1)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@456,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 381
   SAY ~Pray, what news have you surely uncovered for my eager ears?~
       +~Global("h_IslaBounty","GLOBAL",3)~+ ~I tracked Isla down in Baldur's Gate and took her out. It was a tough fight, but in the end, she was no match for me.~ DO ~AddJournalEntry(@465,QUEST_DONE)~ GOTO 386
       +~!Dead("h_islacc")~+ ~What else can you tell me about the target?~ GOTO 382
       ++ ~I have nothing to report at the moment.~ GOTO 356
END

IF ~~ THEN BEGIN 382
   SAY ~I've seen Isla fight in the pits a few times. Trust me, she lives up to every bit of her fearsome reputation. Quick, brutal, and cunning, a true spectacle.~ IF ~~ THEN GOTO 383
END

IF ~~ THEN BEGIN 383
   SAY ~But like me, she grew bored of the same old fights, the predictable outcomes. I understand that thirst for something more... thrilling.~ IF ~~ THEN GOTO 384
END

IF ~~ THEN BEGIN 384
   SAY ~Her instincts, like mine, would crave bigger stakes, greater challenges. That's why I believe she's moved to a larger city, somewhere her talents can be both challenged and rewarded.~ IF ~~ THEN GOTO 385
END

IF ~~ THEN BEGIN 385
   SAY ~Baldur's Gate, perhaps, or somewhere similar. Start there, but tread carefully. Isla's not one to be underestimated.~ IF ~~ THEN GOTO 356
END

IF ~~ THEN BEGIN 386
   SAY ~You took down Isla Darkcloak, the very terror of Baldur's Gate? My, my, <CHARNAME>, you do know how to stir a woman's interest.~ IF ~~ THEN GOTO 387
END

IF ~~ THEN BEGIN 387
   SAY ~I remember watching her in the pits, a true spectacle of strength and skill.~ IF ~~ THEN GOTO 388
END

IF ~~ THEN BEGIN 388
   SAY ~It's almost a pity you couldn't have faced her there. The thought of you two clashing in the arena sends shivers down my spine.~ IF ~~ THEN GOTO 389
END

IF ~~ THEN BEGIN 389
   SAY ~But to have bested such a formidable adversary on your own, it speaks volumes of your own prowess. You're full of surprises, aren't you? And I must say, I find that incredibly... enticing~ IF ~~ THEN GOTO 393
END

IF ~~ THEN BEGIN 390
   SAY ~My, my... I must admit, seeing you in action out there... it stirred something within me, a fire, that demands to be quenched.~ IF ~~ THEN GOTO 391
END

IF ~~ THEN BEGIN 391
   SAY ~You've proven to be quite the captivating champion, and I seem to find myself even more drawn to your strength and prowess.~ IF ~~ THEN GOTO 392
END

IF ~~ THEN BEGIN 392
   SAY ~There's a certain... allure to a warrior like yourself. Perhaps we could find other ways to satisfy our mutual appetites for excitement and danger. What do you say, my champion?~ IF ~~ THEN GOTO 393
END

IF ~~ THEN BEGIN 393
   SAY ~Here is your reward, 500 gold coins, you've certainly earned it. But I must say, I believe you deserve something a bit more... special.~
IF ~~ THEN DO ~
   SetGlobal("h_IslaBountyEnd","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)~ EXIT
END

IF ~~ THEN BEGIN 394
   SAY ~My, my... I must admit, seeing you in action out there... it stirred something within me, a fire, that demands to be quenched.~ IF ~~ THEN GOTO 395
END

IF ~~ THEN BEGIN 395
   SAY ~There's no denying it. I want you, <CHARNAME>, now. I want to feel you inside me, your strength, your warmth.~ IF ~~ THEN GOTO 396
END

IF ~~ THEN BEGIN 396
   SAY ~I want to lose myself in the heat of passion, to forget everything but the sensation of being close to you.~ IF ~~ THEN GOTO 397
END

IF ~~ THEN BEGIN 397
   SAY ~What do you say, my champion? Are you ready to embrace these desires with me, and let the flames of our passion consume us both?~
       ++ ~I thought you'd never ask. Lead the way, Liedel. I'm ready to succumb to the flames of desire that burn between us.~ GOTO 401
       ++ ~Our desires have danced around each other for far too long. Let us finally explore this fiery passion together.~ GOTO 401
       ++ ~As tempting as that sounds, Liedel, I see you more as a friend. I'm not interested in anything more right now.~ GOTO 398
END

IF ~~ THEN BEGIN 398
   SAY ~That's a new one, love. Can't say I often get relegated to just 'being friends'. And, speaking of, I'll never understand why friends can't also enjoy a bit of... extra fun together.~ IF ~~ THEN GOTO 399
END

IF ~~ THEN BEGIN 399
   SAY ~Well, no matter. I suppose it's your loss, not mine. I'm not one to linger on missed opportunities. There are far more exciting pursuits waiting for me out there.~ IF ~~ THEN GOTO 400
END

IF ~~ THEN BEGIN 400
   SAY ~Never a dull moment in my world, love. Time to find out what else the night has in store for me, with or without your prudish company. On to the next adventure, then.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)
   SetGlobal("h_LiedelLove","GLOBAL",0)
   SetGlobal("h_IslaBountyEnd","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 401
   SAY ~Then let's not waste any more time, my love. Give in to the desires that have been burning between us, and let us become one.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",1)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_li2cut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_LiedelCS","GLOBAL",1)~ THEN BEGIN 402
   SAY ~Oh, <CHARNAME>... That was... exquisite, an expierence beyond words. You are a fire that consumes, a storm that rages.~ IF ~~ THEN GOTO 403
END

IF ~~ THEN BEGIN 403
   SAY ~Every touch, every breath, sent waves of pleasure coursing through my body. I ache for more, to lose myself in this euphoria once again.~ IF ~~ THEN GOTO 404
END

IF ~~ THEN BEGIN 404
   SAY ~There's a magnetic pull between us, a force that draws me to you, body and soul. Tell me, love, do you feel it too?~
       ++ ~Liedel, that was unlike anything I've ever experienced. It was mind-blowing, and I'm craving more of you.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 405
       ++ ~That was beyond words, Liedel. You're a tempest of passion, a wildfire, consuming everything in your path.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 405
       ++ ~Liedel, it was... alright. You certainly have your way with words.~ GOTO 406
       ++ ~I have to admit, it wasn't what I expected. It was nice, but I'm not sure about this 'intensity' you're talking about.~ GOTO 407
END

IF ~~ THEN BEGIN 405
   SAY ~I'm pleased to hear you say that, <CHARNAME>. There's a fire between us, a connection that's impossible to deny. Let's explore it further, shall we? And together, we'll set the world ablaze.~
IF ~~ THEN DO ~
   IncrementGlobal("h_LiedelWillJoin","GLOBAL",1)
   SetGlobal("h_LiedelCS","GLOBAL",2)
   SetGlobal("h_LiedelRomanceActive","GLOBAL",5)
   SetGlobal("h_Liedel","GLOBAL",1)
   SetGlobal("h_IslaBountyEnd","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END

IF ~~ THEN BEGIN 406
   SAY ~Alright? Is that all you have to say, <CHARNAME>? I'll have you know, I've left countless breathless and begging for more. Perhaps you're just not as skilled in matters of passion as you think.~ IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 407
   SAY ~Nice? Is that all you have to say, <CHARNAME>? I'll have you know, I've left countless breathless and begging for more. Perhaps you're just not as skilled in matters of passion as you think.~ IF ~~ THEN GOTO 408
END

IF ~~ THEN BEGIN 408
   SAY ~Well, <CHARNAME>, it seems I got precisely what I wanted from you, regardless of your opinion on the matter. You were a means to an end, and nothing more. Don't take it too personally.~ IF ~~ THEN GOTO 409
END

IF ~~ THEN BEGIN 409
   SAY ~Now, if you'll excuse me, I have more important matters to attend to.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)
   SetGlobal("h_LiedelLove","GLOBAL",0)
   SetGlobal("h_IslaBountyEnd","GLOBAL",1)
   SetGlobal("h_IslaBounty","GLOBAL",4)
   IncrementGlobal("h_BountyNumber","GLOBAL",1)
   AddExperienceParty(900)
   AddJournalEntry(@461,QUEST_DONE)~ EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",6) Global("h_BountyNumber","GLOBAL",9) GlobalLT("h_LiedelRomanceActive","GLOBAL",3)~ THEN BEGIN 410
   SAY ~This lull in excitement leaves me yearning for more... stimulating activities. Perhaps you could find a way to slip a bit of excitement back into my day, love?~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelQuest","GLOBAL",6) Global("h_BountyNumber","GLOBAL",9) GlobalGT("h_LiedelRomanceActive","GLOBAL",2)~ THEN BEGIN 411
   SAY ~This lull in excitement leaves me yearning for more... stimulating activities. Perhaps you could find a way to slip a bit of excitement back into my day, love?~
       ++ ~Stimulating activities, you say? You've got my attention, Liedel. I'm sure we can stir up some excitement together.~ GOTO 414
       ++ ~I can think of a few ways to slip in some excitement, but they might require your full cooperation.~ GOTO 414
       ++ ~Yeah, let's rain check that excitement for later. I've got some other things I need to be doing.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",-1)~ GOTO 412
END

IF ~~ THEN BEGIN 412
   SAY ~No time for a bit of fun, eh? That's the curse of being ever so busy. Well, I suppose I'll have to find my own ways to alleviate this tedium, then.~ IF ~~ THEN GOTO 413
END

IF ~~ THEN BEGIN 413
   SAY ~The day's just not as bright without a little... adventure. But you go on with your important matters, <CHARNAME>. I'll be here, finding ways to... entertain myself amidst the mundane.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 414
   SAY ~Mmm, you always keep me guessing, my dearest. What thoughts wander through your mind today? You know I'm all ears, waiting for your every word.~
       ++ ~You mentioned a falling out with the Night Knives earlier. Ready to share the rest of that story?~ GOTO 415
END

IF ~~ THEN BEGIN 415
   SAY ~You're still curious about my past, <CHARNAME>? It's not often someone takes such an interest in the shadows that shaped me. I have to admit, I find it rather... endearing.~ IF ~~ THEN GOTO 416
END

IF ~~ THEN BEGIN 416
   SAY ~You remember my days with the Scepters, don't you? Those days of false righteousness and the thrill of the hunt. Well, it wasn't long before the allure of the underworld called my name.~ IF ~~ THEN GOTO 417
END

IF ~~ THEN BEGIN 417
   SAY ~The Night Knives, a guild draped in shadows and secrets, they promised power, and power, my love, is an intoxicating elixir.~ IF ~~ THEN GOTO 418
END

IF ~~ THEN BEGIN 418
   SAY ~One fateful night, they set their sights on a woman from my past. A former comrade from the Scepters, a confidante, a soul I dared to call a friend.~ IF ~~ THEN GOTO 419
END

IF ~~ THEN BEGIN 419
   SAY ~The Night Knives demanded her life, and in a cruel twist of fate, it fell to me to be the instrument of her demise.~ IF ~~ THEN GOTO 420
END

IF ~~ THEN BEGIN 420
   SAY ~I watched the life drain from her eyes, my heart heavy with the weight of treachery. In that moment, a storm of resentment and fury consumed me.~ IF ~~ THEN GOTO 421
END

IF ~~ THEN BEGIN 421
   SAY ~I returned to the guild, a tempest in human form, and took vengeance on the one who dared to issue such a vile command.~ IF ~~ THEN GOTO 422
END

IF ~~ THEN BEGIN 422
   SAY ~It was a necessary act, a path I had to walk to reclaim a piece of my soul. But, as the veil of darkness lifted, I felt the gravity of my choices.~ IF ~~ THEN GOTO 423
END

IF ~~ THEN BEGIN 423
   SAY ~And so, I fled, leaving behind a trail of shadows and blood. The winds of fate carried me to Beregost, where the past fades, and the future awaits, uncertain, but filled with possibility.~
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~You're not defined by your past, Liedel. You're here now, with me, and that's what matters.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 424
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~You joined the Night Knives for the thrill, but it seems there was still a code of honor you held onto. I find that admirable, Liedel.~ GOTO 425
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~You've been through so much, Liedel, and yet you stand tall. You're a survivor, and I'm proud to be by your side.~ DO ~IncrementGlobal("h_LiedelLove","GLOBAL",1)~ GOTO 426
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~She chose her side, just as you chose yours. It was only a matter of time before you did what needed to be done.~ GOTO 427
       +~Global("h_LiedelKiss","GLOBAL",0)~+ ~You're a force to be reckoned with, a survivor through and through. But what about the Night Knives? Did they continue to hunt you after you fled?~ GOTO 432
       +~Global("h_LiedelKiss","GLOBAL",0)~+ ~I'm glad to be part of your story. You've faced darkness head-on, and emerged stronger for it. But what became of the Night Knives after you left?~ GOTO 432
END

IF ~~ THEN BEGIN 424
   SAY ~You have a gift for seeing beyond the shadows, my dear. It's with you that I discover the grace to embrace the future, leaving the past behind.~ IF ~~ THEN GOTO 428
END

IF ~~ THEN BEGIN 425
   SAY ~You have a way of seeing the nuances, my observant companion. Even amidst the chaos, a code can guide one's steps. It's a trait I've held close, even in the darkest of times.~ IF ~~ THEN GOTO 428
END

IF ~~ THEN BEGIN 426
   SAY ~Survival is an art, my dear, and I've painted my masterpiece with every twist of fate. Together, we stand strong.~ IF ~~ THEN GOTO 428
END

IF ~~ THEN BEGIN 427
   SAY ~The world seldom deals in absolutes, my dear. It's a canvas painted in shades of gray, where choices are sometimes the only constants.~ IF ~~ THEN GOTO 428
END

IF ~~ THEN BEGIN 428
   SAY ~These reflections, my love, they cast light upon the labyrinth of my past. The choices, the shadows, they all led me to this moment, here with you.~ IF ~~ THEN GOTO 429
END

IF ~~ THEN BEGIN 429
   SAY ~In your arms, I find a sanctuary from the storm of my own making. You see me, not just the assassin, but the woman beneath the cloak and dagger.~ IF ~~ THEN GOTO 430
END

IF ~~ THEN BEGIN 430
   SAY ~So, <CHARNAME>, let us pen our own story, weaving a tale of passion, of darkness and light, where every choice leads us further along the path we forge together.~ IF ~~ THEN GOTO 431
END

IF ~~ THEN BEGIN 431
   SAY ~The past may shape us, but it is not our final chapter.~
       ++ ~I'm glad to be part of your story. You've faced darkness head-on, and emerged stronger for it. But what became of the Night Knives after you left?~ GOTO 432
       ++ ~You're a force to be reckoned with, a survivor through and through. But what about the Night Knives? Did they continue to hunt you after you fled?~ GOTO 432
END
   
IF ~~ THEN BEGIN 432
   SAY ~They didn't take kindly to my abrupt departure, I assure you. Their best trackers were hot on my trail, relentless shadows in pursuit of their wayward comrade.~ IF ~~ THEN GOTO 433
END

IF ~~ THEN BEGIN 433
   SAY ~I ran like a hunted animal, desperate for any sanctuary the shadows might offer. Beregost was nothing but a nameless blur on the horizon, a desperate gamble for freedom.~ IF ~~ THEN GOTO 434
END

IF ~~ THEN BEGIN 434
   SAY ~By the time I stumbled into this town, I was on the verge of collapse, my strength drained, my breath ragged. I thought I'd finally lost them, that perhaps the shadows had embraced me for good.~ IF ~~ THEN GOTO 435
END

IF ~~ THEN BEGIN 435
   SAY ~But the night was cruel, and fate had its own plans. The trackers found me, cornered and defenseless. I knew I was staring death in the face, yet even then, I refused to go quietly into the night.~ IF ~~ THEN GOTO 436
END

IF ~~ THEN BEGIN 436
   SAY ~It was in that final, desperate moment that my savior emerged from the shadows. He wove a tapestry of blades and shadows, a dance of steel and silence that saved me from the abyss.~ IF ~~ THEN GOTO 437
END

IF ~~ THEN BEGIN 437
   SAY ~Rigaldo, of the Gorgon's Eye, a man of quicksilver grace and blades like death's own embrace.~ IF ~~ THEN GOTO 438
END

IF ~~ THEN BEGIN 438
   SAY ~From that moment on, I was bound to him, and to the Gorgon's Eye, a guild that offered me a new purpose, a new life in the shelter of shadows.~ IF ~~ THEN GOTO 439
END

IF ~~ THEN BEGIN 439
   SAY ~The Night Knives may still seek me, but they underestimate the strength forged in the crucible of their own treachery. The hunted became the hunter, and I, my dear, refuse to be prey again.~
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~Rigaldo, huh? The man of the hour, it seems. I wasn't aware you two had such a... tethered history.~ GOTO 440
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~You two obviously share a history. I'm here for you, Liedel, no matter what came before.~ GOTO 441
       +~Global("h_LiedelKiss","GLOBAL",1)~+ ~You've overcome so much, Liedel. You're not alone anymore. We'll face whatever challenges come our way, together.~ GOTO 442
       ++ ~It's funny how life can lead us to unexpected places. Beregost wasn't in your plans then, was it? What do you make of this new chapter?~ GOTO 443
END

IF ~~ THEN BEGIN 440
   SAY ~Oh, dear <CHARNAME>, it seems jealousy has a voice. I daresay, it actually suits you well. Rigaldo was a chapter in the past, my love, and you, are the story I'm writing now.~ IF ~~ THEN GOTO 441
END

IF ~~ THEN BEGIN 441
   SAY ~Is that a hint of jealousy, I hear? Don't worry, love, Rigaldo was a chapter in the past. What matters now is the present, and the present looking rather enticing at the moment, wouldn't you agree?~ IF ~~ THEN GOTO 442
END

IF ~~ THEN BEGIN 442
   SAY ~Together, indeed. The road ahead may be treacherous, but with you by my side, I fear no darkness. Our story, <CHARNAME>, is only just beginning.~ IF ~~ THEN GOTO 443
END

IF ~~ THEN BEGIN 443
   SAY ~Ah, Beregost, a twist of fate I hadn't foreseen. But isn't that the thrill of it all? Embracing the unknown, weaving our own tale amidst the unexpected. It's a chapter ripe with promise.~ IF ~~ THEN GOTO 444
END

IF ~~ THEN BEGIN 444
   SAY ~The shadows here welcomed me, and in their embrace I've been given another chance, another purpose to continue on.~
       +~Global("h_LiedelKiss","GLOBAL",1) Global("h_LiedelRomanceActive","GLOBAL",4)~+ ~We've covered a lot of ground in our talks, Liedel. But, I'm wondering if I could ask you a more... personal question.~ GOTO 445
       +~Global("h_LiedelKiss","GLOBAL",1) Global("h_LiedelRomanceActive","GLOBAL",5)~+ ~We've covered a lot of ground in our talks, Liedel. But, I'm wondering if I could ask you a more... personal question.~ GOTO 445
       ++ ~Well, I think that covers everything for now. I need to get back to work, but let's catch up again soon.~ GOTO 447
END

IF ~~ THEN BEGIN 445
   SAY ~Oh? Venturing into more personal territory, are we? I must admit, I'm both curious and yet... cautious.~ IF ~~ THEN GOTO 447
END

IF ~~ THEN BEGIN 446
   SAY ~Go ahead, <CHARNAME>, ask your question. I can't promise I'll answer, but I'm intrigued to hear what you want to know.~
       +~Global("h_LiedelKiss","GLOBAL",1) Global("h_LiedelRomanceActive","GLOBAL",5)~+ ~I wanted to talk to you about what happened between us the other night.~ GOTO 448
       +~Global("h_LiedelKiss","GLOBAL",1) Global("h_LiedelRomanceActive","GLOBAL",4)~+ ~I wanted to talk to you about what happened between us the other night.~ GOTO 448
       ++ ~Actually, nevermind. It's nothing. I should probably get going. We can talk more some other time.~ GOTO 447
END

IF ~~ THEN BEGIN 447
   SAY ~Of course, <CHARNAME>, duties call, don't they? Always a delight to have our little talks. Until the shadows bring us together again, take care out there.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 448
   SAY ~That night, <CHARNAME>... it was more than just a victory in the arena. It was a display of your strength, your courage, and the fire that burns within you.~ IF ~~ THEN GOTO 449
END

IF ~~ THEN BEGIN 449
   SAY ~Watching you fight, seeing you conquer, it stirred something within me, something primal and undeniable. When you came to me afterwards, I couldn't contain the passion that surged through me.~ IF ~~ THEN GOTO 450
END

IF ~~ THEN BEGIN 450
   SAY ~While we laid together, your touch ignited a fire within me, every caress, every thrust, a testament to the intensity of our desire.~ IF ~~ THEN GOTO 451
END

IF ~~ THEN BEGIN 451
   SAY ~Our bodies moved in sync, a dance of longing and need. The taste of your skin, the rhythm of our breath, it was like a symphony of sensation, a crescendo building towards an inevitable release.~ IF ~~ THEN GOTO 452
END

IF ~~ THEN BEGIN 452
   SAY ~I felt your passion, <CHARNAME>, coursing through me, setting my very soul ablaze. It was a night of pure surrender, a revelation of our most intimate desires, and it left me breathless, craving more.~
       ++ ~You truly have a gift for expressing passion in the most intense way, Liedel. I felt it too, every word.~ GOTO 456
       ++ ~While I appreciate your words and the intensity of our connection, I wanted to tell you... I just don't feel the same way. I'm truly sorry if this hurts you.~ GOTO 453
END

IF ~~ THEN BEGIN 453
   SAY ~You know, <CHARNAME>, I thought there was something special between us. Clearly, I was mistaken. I allowed myself to get caught up in the moment, but it's obvious now that it meant nothing to you.~ IF ~~ THEN GOTO 454
END

IF ~~ THEN BEGIN 454
   SAY ~No matter, I have other matters to attend to, more important pursuits. Consider this the end of our little dalliance.~ IF ~~ THEN GOTO 455
END

IF ~~ THEN BEGIN 455
   SAY ~I won't waste any more of my time on someone who can't appreciate what I have to offer. We move on, don't we? No need to make a fuss.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",0)
   SetGlobal("h_LiedelLove","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN 456
   SAY ~The memory of that night still lingers on my skin, <CHARNAME>. The taste of desire, the heat of our passion... it's something I can't easily forget.~
       ++ ~The way you talk about it, Liedel, it's almost impossible to resist. I think it's time we explore our desires once again.~ GOTO 457
       +~Global("h_LiedelRomanceActive","GLOBAL",5)~+ ~Our shared experiences are unforgettable, Liedel, but I actually have to get going now.~ GOTO 447
       +~Global("h_LiedelRomanceActive","GLOBAL",4)~+ ~While I appreciate your words and the intensity of our connection, I wanted to tell you... I just don't feel the same way. I'm truly sorry if this hurts you.~ GOTO 453
END

IF ~~ THEN BEGIN 457
   SAY ~Then let us not deny the pleasure any longer. Our passions deserve to be indulged. Come, my darling, let us lose ourselves in the heat of our desires.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelCS","GLOBAL",3)
   ClearAllActions()
   StartCutSceneMode()
   StartCutScene("h_li2cut")~ EXIT
END

IF WEIGHT #-1 ~Global("h_LiedelCS","GLOBAL",3)~ THEN BEGIN 458
   SAY ~Oh, gods, <CHARNAME>... I can still feel it, still sense it... the weight of your body pressed against mine, the softness of your lips, hungry for the pleasures of my delicate skin.~ IF ~~ THEN GOTO 459
END

IF ~~ THEN BEGIN 459
   SAY ~I can feel your coarse hands, skillfully caressing the curvature of my figure, exploring every region of my exposed flesh.~ IF ~~ THEN GOTO 460
END

IF ~~ THEN BEGIN 460
   SAY ~<CHARNAME>... I can still feel the moment you entered me... the moment I truly opened myself to you, our bodies intertwining as one, dancing to the same rhythm.~ IF ~~ THEN GOTO 461
END

IF ~~ THEN BEGIN 461
   SAY ~Mmm... <CHARNAME>. The way you touch me, make love to me... it's beyond words, and I never want this feeling to end.~ IF ~~ THEN GOTO 462
END

IF ~~ THEN BEGIN 462
   SAY ~These lingering echoes of our passion... they leave me aching, and desperate for more. I crave the next time our desires collide, to forge a path of ecstasy that only we can tread.~
       ++ ~Liedel, that was absolutely incredible. I don't even have words for it. You are truly something special.~ GOTO 463
       ++ ~Liedel, the way you make me feel... is something else. I can't believe how amazing that was.~ GOTO 463
END

IF ~~ THEN BEGIN 463
   SAY ~I can't wait for our next rendezvous, when we can set the world ablaze once more. Until then, my dear, let us savor this memory.~
IF ~~ THEN DO ~
   IncrementGlobal("h_LiedelWillJoin","GLOBAL",1)
   SetGlobal("h_LiedelCS","GLOBAL",4)
   SetGlobal("h_LiedelRomanceActive","GLOBAL",6)~ EXIT
END

IF ~Global("h_LiedelRomanceActive","GLOBAL",6) Global("h_BountyNumber","GLOBAL",9) Global("h_LiedelQuest","GLOBAL",6)~ THEN BEGIN 464
   SAY ~There's a certain... allure in the way you seek me out, an undeniable sensuality that dances in the air when you're near.~ IF ~~ THEN GOTO 465
END

IF ~~ THEN BEGIN 465
   SAY ~What do you say, my daring <CHARNAME>, shall we explore our desires further, in another... private embrace?~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~OR(3) Global("h_BetrayBaldwin","GLOBAL",1) Global("h_BetrayBaldwin","GLOBAL",2) Global("h_BetrayBaldwin","GLOBAL",3) Global("h_LiedelBetray","GLOBAL",1) Global("h_LiedelRomanceActive","GLOBAL",6)~ THEN BEGIN 466
   SAY ~You look like you've got the weight of the world on your shoulders, my love. Something's eating at you. Spill it out, what's got you so wound up?~
       ++ ~There's a conversation that we can't ignore any longer, about Baldwin, the Kerykeion, and the future of our guild.~ GOTO 470
       ++ ~It's nothing, Liedel. Just the usual concerns and shadows playing tricks on the mind. Nothing to worry about.~ GOTO 467
END

IF ~~ THEN BEGIN 467
   SAY ~I'm not a fool, <CHARNAME>. I can tell when something's off, and right now, you're as clear as a foggy night in Beregost.~ IF ~~ THEN GOTO 468
END

IF ~~ THEN BEGIN 468
   SAY ~But I won't pry. Just know that if you ever feel like unburdening yourself, my ears are always open. In this line of work, it's rare to have someone to confide in.~ IF ~~ THEN GOTO 469
END

IF ~~ THEN BEGIN 469
   SAY ~Remember, trust is as valuable as a sharp blade in our world. Anyway, I'll leave you to it. May the shadows keep your secrets until you're ready to share them.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelBetray","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 470
   SAY ~Oh, <CHARNAME>, not this again. I thought I made myself perfectly clear last time. We need to drop this subject, now.~ IF ~~ THEN GOTO 471
END

IF ~~ THEN BEGIN 471
   SAY ~I won't risk our necks over idle chatter that could lead us straight to the gallows. Whatever you're thinking, reconsider it. Some stones are better left unturned.~
       ++ ~I'm about to set in motion events that will change our guild's future. It's risky, and that's why I need you to be aware. I care about you, Liedel, and I want to ensure you're safe.~ GOTO 472
       ++ ~Liedel, things are about to shift drastically within the guild. Considering our history, I thought I should let you know. I hope I can trust you to stand with me when the time comes.~ GOTO 472
END

IF ~~ THEN BEGIN 472
   SAY ~You're the biggest fool in the city, <CHARNAME>, diving headfirst into whatever mad scheme you've concocted now. Do you even realize the hornet's nest you're about to kick?~ IF ~~ THEN GOTO 473
END

IF ~~ THEN BEGIN 473
   SAY ~But then again, it's that reckless daring of yours that... ignites something in me. Your ideas, as wild as they are, bring a thrill that I can't deny.~ IF ~~ THEN GOTO 474
END

IF ~~ THEN BEGIN 474
   SAY ~It's maddening, it's risky, and by the gods, it's irresistible. I've developed quite the taste for your brand of danger.~ IF ~~ THEN GOTO 475
END

IF ~~ THEN BEGIN 475
   SAY ~The guild be damned, I'm with you. Wherever this wicked path leads, I'm ready to walk it by your side. Let the world burn around us, we'll dance in the flames together.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelBetray","GLOBAL",2)~ EXIT
END

IF ~GlobalLT("h_LiedelRomanceActive","GLOBAL",6) Global("h_LiedelQuest","GLOBAL",7)~ THEN BEGIN 476
   SAY ~Well, well, look at you, <CHARNAME>. The new guildmaster, no less. I must admit, power does have its allure. Impressive work, my dear.~ IF ~~ THEN EXIT
END

IF ~Global("h_LiedelRomanceActive","GLOBAL",6) Global("h_LiedelQuest","GLOBAL",7)~ THEN BEGIN 477
   SAY ~Well, well, look at you. The new guildmaster of the Gorgon's Eye... It has a nice ring to it, I'll admit.~ IF ~~ THEN GOTO 478
END

IF ~~ THEN BEGIN 478
   SAY ~This is going to change things, isn't it? More work, more worries, more... everything. Except time. Time for us will be the rarest gem.~ IF ~~ THEN GOTO 479
END

IF ~~ THEN BEGIN 479
   SAY ~I'd be lying if I said my heart wasn't a little heavy, knowing that the path you walk now might lead you away from, well... me.~ IF ~~ THEN GOTO 480
END

IF ~~ THEN BEGIN 480
   SAY ~I'll miss our little dances in the dark, our impassioned encounters, the intensity of our connection, the way my skin sings under your touch.~ IF ~~ THEN GOTO 481
END

IF ~~ THEN BEGIN 481
   SAY ~Remember the fervor, the urgency of our embraces, the way our breaths would tangle as one. Hold onto the heat of me, until we can again surrender to the dance that only we know.~
       ++ ~It's been great, Liedel. I'll miss what we had, but let's see what the future holds. I say we take each day as it comes, together or apart.~ GOTO 482
       ++ ~Our time together is too precious to let slip away so easily. I promise to find moments for us in between all the chaos.~ GOTO 484
       ++ ~Remember your place, Liedel. The affairs of the heart are trivial against the backdrop of power. Serve the guild, as is your duty, and do not seek more.~ GOTO 486
       +~Global("h_LiedelWillJoin","GLOBAL",3) GlobalGT("h_LiedelLove","GLOBAL",14)~+ ~You know, Liedel, I've been thinking. Now that I'm guildmaster, there's so much more we could achieve together. Join me, and together we can chase the thrill of adventure that lies beyond these walls.~ GOTO 492
END

IF ~~ THEN BEGIN 482
   SAY ~Ah, such sweet sorrow you speak of, my dear. I'll savor the memory of us, like a shadow clings to the fading light.~ IF ~~ THEN GOTO 483
END

IF ~~ THEN BEGIN 483
   SAY ~If you wish to dance with fate separately or entwined, just summon me. I'm as good at appearing in your chambers as I am in disappearing into the night.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 484
   SAY ~A promise from you is as thrilling as a night's chase across the rooftops. I'll hold you to it, my guildmaster.~ IF ~~ THEN GOTO 485
END

IF ~~ THEN BEGIN 485
   SAY ~Let's steal time as we've stolen glances, and may each moment be as fervent and fierce as our encounters have been.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelRomanceActive","GLOBAL",7)~ EXIT
END

IF ~~ THEN BEGIN 486
   SAY ~Command me as you will, my leader, but remember, affection cannot be ordered about like a foot soldier.~ IF ~~ THEN GOTO 487
END

IF ~~ THEN BEGIN 487
   SAY ~If power is the bedfellow you choose over the warmth we've shared, then so be it.~ IF ~~ THEN GOTO 488
END

IF ~~ THEN BEGIN 488
   SAY ~I will serve the guild, as I have sworn, but know that my loyalty is to the cause, not to the callous heart that now sits atop it.~
IF ~~ THEN DO ~
   SetGlobal("h_LiedelQuest","GLOBAL",8)~ EXIT
END

IF ~Global("h_LiedelRomanceActive","GLOBAL",7)~ THEN BEGIN 489
   SAY ~Ah, the master of shadows graces us with his allure. Each parting is a sweet sorrow, but your return stirs a hunger only you can satisfy.~ IF ~~ THEN GOTO 490
END

IF ~~ THEN BEGIN 490
   SAY ~Will you indulge me, or or do I keep the embers of desire burning alone?~ IF ~~ THEN EXIT
END
   
IF ~Global("h_LiedelQuest","GLOBAL",8)~ THEN BEGIN 491
   SAY ~So, the guildmaster returns. I trust the weight of command hasn�t dulled your edge... or your heart. As ever, I stand ready to serve the guild�s cause, with or without your favor.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 492
   SAY ~My cunning guildmaster, to think you'd choose me to stand by your side in the grand tapestry of peril and pleasure that awaits us... It's a delicious honor.~ IF ~~ THEN GOTO 493
END

IF ~~ THEN BEGIN 493
   SAY ~Together, we'll weave a saga of shadows and thrills, our dance with danger an intimate escapade that will set the very world ablaze with stories of our conquests.~ IF ~~ THEN GOTO 494
END

IF ~~ THEN BEGIN 494
   SAY ~Yes, I will join you, and in the chase for adventure, find the expanse of my desires fulfilled in your daring company.~
IF ~~ THEN DO ~
   JoinParty()~ EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5) GlobalLT("h_LiedelRomanceActive","GLOBAL",6)~ THEN BEGIN 495
   SAY ~Oh, my, that was quite the rush! It certainly ignites a certain... passion, doesn't it?~ IF ~~ THEN GOTO 496
END

IF ~~ THEN BEGIN 496
   SAY ~Poor Riggy, though, and that stubborn pride of his.~ IF ~~ THEN GOTO 497
END

IF ~~ THEN BEGIN 497
   SAY ~At any rate, I've decided to enlist in the Shadow Thieves. These small-time guilds just don't do it for me anymore. Maybe I'll see you around one day, my love.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~Global("h_BetrayBaldwin","GLOBAL",5) Global("h_LiedelRomanceActive","GLOBAL",6)~ THEN BEGIN 498
   SAY ~Oh, my, that was quite the rush! It certainly ignites a certain... passion, doesn't it?~ IF ~~ THEN GOTO 499
END

IF ~~ THEN BEGIN 499
   SAY ~We've danced through danger, flirted with fate, and reveled in the rush that only those who dare the darkness can know.~ IF ~~ THEN GOTO 500
END

IF ~~ THEN BEGIN 500
   SAY ~<CHARNAME>, my love, our journey together has been nothing short of thrilling.~ IF ~~ THEN GOTO 501
END

IF ~~ THEN BEGIN 501
   SAY ~From our first meeting to every daring escapade we've shared, you've brought a fire into my life that I can't ignore.~ IF ~~ THEN GOTO 502
END

IF ~~ THEN BEGIN 502
   SAY ~But as much as it pains me to say it... the time has come for me to move on. You see... during that intense battle, amidst the clash of steel and the thrill of victory, I had a revelation.~ IF ~~ THEN GOTO 503
END

IF ~~ THEN BEGIN 503
   SAY ~When I watch you, it's like witnessing a grand heist unfold, perfect in execution, but I... I'm split between wanting you, and wanting... more.~ IF ~~ THEN GOTO 504
END

IF ~~ THEN BEGIN 504
   SAY ~There's a hunger in me, <CHARNAME>, a craving for thrills that are my own. And the Shadow Thieves... the allure of their power, it's been tugging at my soul like a siren's call.~ IF ~~ THEN GOTO 505
END

IF ~~ THEN BEGIN 505
   SAY ~I crave the grandeur of their schemes, the vastness of their network, and the thrill of new horizons.~ IF ~~ THEN GOTO 506
END

IF ~~ THEN BEGIN 506
   SAY ~I've always sought out excitement, my love, and I've cherished every moment we've shared. But now, I yearn for a change, a new challenge, and the Shadow Thieves offer that in spades.~ IF ~~ THEN GOTO 507
END

IF ~~ THEN BEGIN 507
   SAY ~I understand if this decision stings. You've been my partner in crime, my confidant, and so much more. But please know, this isn't a betrayal, it's an exploration of my desires and aspirations.~ IF ~~ THEN GOTO 508
END

IF ~~ THEN BEGIN 508
   SAY ~You will always hold a special place in my heart, <CHARNAME>.~ IF ~~ THEN GOTO 509
END

IF ~~ THEN BEGIN 509
   SAY ~I'll carry our memories with me, and when the stars align, our paths may cross again, igniting a fire of passion that burns brighter than ever before.~ IF ~~ THEN GOTO 510
END

IF ~~ THEN BEGIN 510
   SAY ~Until then, my love, may your adventures be filled with excitement, and may you always find the thrill you seek.~
       ++ ~I can see the longing in your eyes, Liedel. Sometimes, we have to follow our hearts, even if it leads us on a different path. I'll miss you, but I hope you find the excitement and purpose you're seeking.~ GOTO 511
       ++ ~I guess I can't change your mind, can I? If the Shadow Thieves are your calling, then so be it. Take care of yourself, Liedel.~ GOTO 512
       ++ ~Typical, Liedel. You always put your own desires first, no matter who gets hurt in the process. You're just a thrill-seeker with no loyalty. I hope the Shadow Thieves enjoy dealing with someone as selfish as you.~ GOTO 514
       ++ ~Honestly, Liedel, I couldn't care less about your choices. You're just a passing companion, and I won't lose any sleep over your departure. Do what you want.~ GOTO 515
END

IF ~~ THEN BEGIN 511
   SAY ~Thank you, my love. Your understanding means more to me than you know. I'll treasure the memories we've created together, and who knows, maybe our paths will cross once more.~ IF ~~ THEN GOTO 513
END

IF ~~ THEN BEGIN 512
   SAY ~I appreciate your acceptance, even if it's tinged with resignation. You take care as well, <CHARNAME>. Remember, the thrill of life awaits, whether in shadows or daylight.~ IF ~~ THEN GOTO 513
END

IF ~~ THEN BEGIN 513
   SAY ~May your adventures be filled with exhilaration. Goodbye, my dear companion.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 514
   SAY ~Oh, the judgment in your words, <CHARNAME>. But that's the way of the world, isn't it? I'll take my chances with the Shadow Thieves. They'll understand ambition better than anyone. Goodbye, <CHARNAME>.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 515
   SAY ~Well, aren't you refreshingly honest? I've never been one to expect loyalty from anyone, and I won't start now. Goodbye, <CHARNAME>. You'll forget about me soon enough.~
IF ~~ THEN DO ~
   EscapeArea()~ EXIT
END







   
   


CHAIN
     IF WEIGHT #-1 ~Global("h_WatchCutscene","GLOBAL",1)~ THEN h_lieded CS0
~Silent shadows and eyes sharp, comrades! We've got some unwanted company in our midst!~
   == h_ariosd
~You've got some nerve, I'll give you that. How'd you find us, and what's your play? Best choose your next words careful-like, or you'll be regrettin' ever settin' foot in here.~
   == h_baldwd
~Hold, Ariosh. These are but City Watch pups. Let us entertain their whimpers.~
   == h_city5d
~The... the Inspector! H-he uncovered the location of your hideout. He was planning an assault, t-t-to catch you off guard. And the Commander, she... she stil wants to see it through!~
   =
~But, we... we've seen the writing on the wall. We've had enough. We're tired of the constant fear, the bloodshed. We'll bend the knee, and submit to the will of the Gorgon's Eye.~
   =
~The division among the Watch, it's... it's reached a breaking point. After the Inspector, and the Valkyries, our unity has crumbled.~
   =
~Dissension has ripened into a full-blown mutiny. Most of our ranks have turned against Whitewood, and they're calling for blood.~
   =
~She's fled the city, and is seeking refuge at the Temple. We lack the numbers to storm the gates, but with your aid, we might be able to end this madness.~
   == h_ariosd
~How can we be sure you ain't just stringin' us along, eh? No tricks or traps, yeah?~
   == h_city5d
~Go, and see for yourselves! The streets are in chaos, painted in turmoil, order and law thrown to the wind.~
   =
~Skirmishes from here to the temple gates. That's where Whitewood's holed up, kept shielded by the Templar Knights.~
   == h_ariosd
~It seems the winds have shifted, <CHARNAME>. The city's gone mad, and Whitewood's caged herself up. I had a plan to deal with her, and now it's ripe for the taking.~
   =
~Head to the Temple. End this. The Gorgon's Eye will see its rightful dominance, and Beregost will know where true power lies.~ DO ~SetGlobal("h_WatchCutscene","GLOBAL",2)~
   == h_baldwd
~Swift and ruthless, <CHARNAME>. Seize this opportunity, and give the city a taste of the Gorgon's Eye's might.~
   DO ~
      //SetGlobal("h_WatchCutscene","GLOBAL",2)
      SetGlobal("h_SpawnTemplar","GLOBAL",1)
      SetGlobal("h_CityWatchBattle","GLOBAL",1)
      AddJournalEntry(@556,QUEST)~
EXIT




