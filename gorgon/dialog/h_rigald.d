BEGIN h_rigald

IF ~Global("h_RigaldoQuest","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Mind yourself now, or see you'll leave with less than you came.~ IF ~~ THEN EXIT
END

          ///////////////////////////////////////
          //////// Diamond in the Rough /////////
          ///////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",1)~ THEN BEGIN 1
   SAY ~You must be the fresh blood everyone's been harpin' about. I was expecting someone with a touch more flair, but I'm trusting you're up for the job.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Name's Rigaldo, head pickpocket in this den. Been a top dog in this field longer than most. I know the ins-and-outs of these streets down to their finest detail.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I'll be your main point of contact for guild work as it gets assigned. So, get to used to reporting to me.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I hold high expectations and anticipate my rogues to deliver. When the mark gets picked, you get the job done. No questions.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~Any questions?~
       ++ ~None.~ GOTO 6
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 7
       ++ ~What if I refuse a job that's against my morals?~ GOTO 10
       ++ ~Can you tell me anything about yourself?~ GOTO 11
       ++ ~Do you have any available missions for me?~ GOTO GEM_0
END

IF ~~ THEN BEGIN 6
   SAY ~Smart.~ IF ~~ THEN GOTO GEM_0
END

IF ~~ THEN BEGIN 7
   SAY ~And how, pray tell, have you become privy to the visage of a Shadow Thief?~
       ++ ~Only from books and tales of their exploits. I grew up studying in Candlekeep.~ GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~I question if any book could yield reliable information on such a covert organization, yet, I can not deny your perception.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Indeed, Baldwin and I once bore the mantle of the Shadow Thieves, but our affiliations have long since diverged.~
       ++ ~What if I refuse a job that's against my morals?~ GOTO 10
       ++ ~Can you tell me anything about yourself?~ GOTO 11
       ++ ~Do you have any available missions for me?~ GOTO GEM_0
END

IF ~~ THEN BEGIN 10
   SAY ~Then you will be banished from the guild. Or possibly put to death, depending on the severity of the infraction, or of Baldwin's mood.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 7
       ++ ~Can you tell me anything about yourself?~ GOTO 11
       ++ ~Do you have any available missions for me?~ GOTO GEM_0
END

IF ~~ THEN BEGIN 11
   SAY ~This ain't the hour to get chummy. We've got business at hand and we need you up to snuff quickly.~
       ++ ~Why do you and Baldwin have the appearance of Shadow Thieves?~ GOTO 7
       ++ ~What if I refuse a job that's against my morals?~ GOTO 10
       ++ ~Do you have any available missions for me?~ GOTO GEM_0
END

IF ~~ THEN BEGIN GEM_0
   SAY ~I've got a small job lined up for ya. Nothin' too fancy, mind you. A little scutwork to test your basics.~
       ++ ~I'm listening.~ GOTO GEM_1
       ++ ~Scutwork? And here I was hoping for a big score.~ GOTO GEM_1
END

IF ~~ THEN BEGIN GEM_1
   SAY ~There's a fence passing through our town, goes by the name, "Zieke". Got a real nice sparkler on em', a diamond from Waterdeep, and it's your job to make it ours.~ IF ~~ THEN GOTO GEM_2
END

IF ~~ THEN BEGIN GEM_2
   SAY ~Zieke's headin' south to meet a buyer at the carnival, so he ain't stickin' around for too long.~ IF ~~ THEN GOTO GEM_3
END

IF ~~ THEN BEGIN GEM_3
   SAY ~For now, he's holed up at Feldpost's Inn. Real zealot for privacy this one, won't even let his own guards in the room. Use that to your advantage.~
       ++ ~How long before he leaves for the carnival?~ GOTO GEM_4
       ++ ~What's the low down on his guards?~ GOTO GEM_5
END

IF ~~ THEN BEGIN GEM_4
   SAY ~Two days at most. So don't go hittin' the town.~
       ++ ~What's the low down on his guards?~ GOTO GEM_5
END

IF ~~ THEN BEGIN GEM_5
   SAY ~Seen 'em all over. Lurkin' in the halls, drinkin' at the bar, depends on the hour. Counted four all in all.~ IF ~~ THEN GOTO GEM_6
END

IF ~~ THEN BEGIN GEM_6
   SAY ~You'll have to sneak by 'em, stealthy like. If they pin you actin' shifty, the jigs up.~ IF ~~ THEN GOTO GEM_7
END

IF ~~ THEN BEGIN GEM_7
   SAY ~Might be worth gettin' a jack from Rhade, I'm thinkin'. A right whack with that and it's lights out.~
       ++ ~How long before he leaves for the carnival?~ GOTO GEM_4
       ++ ~A fence then, eh? I won't care a bit for his loss. Sounds like my kind of challenge.~ GOTO GEM_9
       ++ ~Seems like an easy target. I'll make quick work of it.~ GOTO GEM_9
       ++ ~If the guards get in my way, I'll just have to kill them.~ GOTO GEM_8
END

IF ~~ THEN BEGIN GEM_8
   SAY ~Settle down, rookie. Better to avoid makin' a scene for this one.~ IF ~~ THEN GOTO GEM_9
END

IF ~~ THEN BEGIN GEM_9
   SAY ~Keep a light foot and a quick pace. Watch for the guards and scram when you've filched the jewel.~ IF ~~ THEN GOTO GEM_10
END

IF ~~ THEN BEGIN GEM_10
   SAY ~This should be an easy in-and-out for any thief. This is the real deal now, show me you can run with the big dogs.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",2)
   SetGlobal("h_SpawnZieke","GLOBAL",1)
   SetGlobal("h_SpawnZiekeDay","GLOBAL",1)
   SetGlobal("h_SpawnZiekeNight","GLOBAL",1)
   AddJournalEntry(@310,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",2)~ THEN BEGIN GEM_11
   SAY ~Hurry up and snatch the jewel! If we delay, we'll lose our shot.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04") Global("h_TalkedToZieke","GLOBAL",1)~ THEN BEGIN GEM_12
   SAY ~Are you daft, mate? What in blue blazes possessed you to stroll up to the mark like that? I warned ya, he's got a thing for privacy. What did you expect him to hand over his purse and invite you to tea?~ IF ~~ THEN GOTO GEM_17
END

IF WEIGHT #-1 ~PartyHasItem("h_misc04") Global("h_TalkedToZieke","GLOBAL",0)~ THEN BEGIN GEM_13
   SAY ~Had my men tail ya in case things got shifty. Let's get to business first. You've still got the goods in hand? Let's give it a proper once over.~
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByGuards","GLOBAL",0) NumDead("h_ziekec",0)~+ ~Got the gem right here.~ DO ~AddExperienceParty(900)~ GOTO GEM_14
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",1) Global("h_CaughtByGuards","GLOBAL",1) NumDeadGT("h_ziekec",0)~+ ~Got the gem right here.~ DO ~AddExperienceParty(300)~ GOTO GEM_15
       +~PartyHasItem("h_misc04") Global("h_CaughtByDay","GLOBAL",0) Global("h_CaughtByGuards","GLOBAL",0) NumDeadGT("h_ziekec",0)~+ ~Got the gem right here.~ DO ~AddExperienceParty(300)~ GOTO GEM_16
END

IF ~~ THEN BEGIN GEM_14
   SAY ~Bloody brilliant work, mate, Real professional stuff there. Stuck to the shadows like a true rogue and not a soul the wiser for it! Couldn't have done it better myself.~ IF ~~ THEN GOTO GEM_18
END

IF ~~ THEN BEGIN GEM_15
   SAY ~Got side-eyed by the guards, did ya? Patience is key when weaving through the shadows. Keep at it and you'll be a true ghost in no time.~ IF ~~ THEN GOTO GEM_18
END

IF ~~ THEN BEGIN GEM_16
   SAY ~Nip the theatrics next time and employ a bit of stealth. Would have served you better in this setting. This job ain't always about killin'. Too many bodies'll get the Fist all riled up.~ IF ~~ THEN GOTO GEM_18
END

IF ~~ THEN BEGIN GEM_17
   SAY ~You didn't spill the goods on your way back too, did ya?~
       ++ ~Got the gem right here.~ GOTO GEM_18
END

IF ~~ THEN BEGIN GEM_18
   SAY ~I'll swap ya for the diamond, then. A little trinket I knocked up myself. You'll be findin' it useful in your future endeavors of larceny.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",3)
   AddJournalEntry(@311,QUEST_DONE)
   TakePartyItem("h_misc04")
   DestroyItem("h_misc04")
   GiveItemCreate("h_ring01",LastTalkedToBy,0,0,0)~ EXIT
END


          /////////////////////////////////////
          /////// Mugging in the Manor ////////
          /////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",3)~ THEN BEGIN GERARD_0
   SAY ~Listen up, I've got a new job for ya. This one ain't gonna be your typical pinch work. It's got a bit more bite to it, if you catch my drift.~
       ++ ~I'm listening.~ GOTO GERARD_1
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN GERARD_1
   SAY ~I assume you're somewhat acquanted with the grand manor here in northern Beregost, yes?~ IF ~~ THEN GOTO GERARD_2
END

IF ~~ THEN BEGIN GERARD_2
   SAY ~Well, Gerard Travenhurst, the bloke who considers himself a lord, has been greasin' our palms every seventh to ward off any... unwanted intruders.~ IF ~~ THEN GOTO GERARD_3
END

IF ~~ THEN BEGIN GERARD_3
   SAY ~As of late, Gerard's been skippin' his dues. Even had the stones to hire his own muscle, to boot.~ IF ~~ THEN GOTO GERARD_4
END

IF ~~ THEN BEGIN GERARD_4
   SAY ~I'll lay it out for ya nice and simple. We've got secrets on Gerard, the unsavory sort. If he doesn't straighten up, we'll let 'em slip.~ IF ~~ THEN GOTO GERARD_5
END

IF ~~ THEN BEGIN GERARD_5
   SAY ~This is where you come in. You'll pay a little visit to Mr. Gerard and give him a proper talking to.~ IF ~~ THEN GOTO GERARD_6
END

IF ~~ THEN BEGIN GERARD_6
   SAY ~Remind him of his accruing debt, and make it clear his precious family pendant is now part of the bargain.~ IF ~~ THEN GOTO GERARD_7
END

IF ~~ THEN BEGIN GERARD_7
   SAY ~Let him know we don't play games, and crossing us comes at a steep price. He'll do well to remember it.~
       ++ ~Is there anything else I should know before I depart?~ GOTO GERARD_8
       ++ ~Extorting a noble for protection money? No way, this isn't what I signed up for.~ GOTO GERARD_8
END

IF ~~ THEN BEGIN GERARD_8
   SAY ~Quiet fool, and listen up.~ IF ~~ THEN GOTO GERARD_9
END

IF ~~ THEN BEGIN GERARD_9
   SAY ~The Travenhurst's wealth was built on the backs of suffering and wickedness, straight from the darkest depths of the slave pits.~ IF ~~ THEN GOTO GERARD_10
END

IF ~~ THEN BEGIN GERARD_10
   SAY ~And Gerard himself? Got caught red-handed abusin' those poor souls, even the children. Got some sick thrill from it.~ IF ~~ THEN GOTO GERARD_11
END

IF ~~ THEN BEGIN GERARD_11
   SAY ~Bribed himself out of trouble and got off scot-free. He'll be servin' the reaper where he's goin'.~ IF ~~ THEN GOTO GERARD_12
END

IF ~~ THEN BEGIN GERARD_12
   SAY ~That pendant he's clingin' to, it's a symbol of wickedness, a token of his filthy past. Remember that, and don't let his fancy airs fool ya.~ IF ~~ THEN GOTO GERARD_13
END

IF ~~ THEN BEGIN GERARD_13
   SAY ~So, what do you say now? Ready to make Gerard Travenhurst pay for his past?~
       ++ ~Consider it done. I'll have that necklace by days end.~ GOTO GERARD_14
       ++ ~If the law won't have him, I'll see that he's brought to some justice.~ GOTO GERARD_14
END

IF ~~ THEN BEGIN GERARD_14
   SAY ~Handle him good, but keep him breathin'. We need him falling in line, not pushing up daisies.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",4)
   AddJournalEntry(@312,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",4)~ THEN BEGIN GERARD_15
   SAY ~Handle him good, but keep him breathin'. We need him falling in line, not pushing up daisies.~ IF ~~ THEN EXIT
END

IF WEIGHT #-1 ~PartyHasItem("h_misc05")~ THEN BEGIN GERARD_16
   SAY ~Had you followed of course, still in your probationary period and all that. We'll still keep to formalities, however. Report in.~
       +~Global("h_GerardStrength","GLOBAL",1)~+ ~Gerard will resume his payments, and his guards are no longer an issue.~ DO ~TakePartyItem("h_misc04") DestroyItem("h_misc04")~ GOTO GERARD_17
       +~Global("h_GerardCharisma","GLOBAL",1)~+ ~Gerard will resume his payments, and his guards are no longer an issue.~ DO ~TakePartyItem("h_misc04") DestroyItem("h_misc04")~ GOTO GERARD_18
       +~Global("h_GerardStrength","GLOBAL",0) Global("h_GerardCharisma","GLOBAL",0)~+ ~Gerard will resume his payments, and his guards are no longer an issue.~ DO ~TakePartyItem("h_misc04") DestroyItem("h_misc04")~ GOTO GERARD_19
END

IF ~~ THEN BEGIN GERARD_17
   SAY ~By the sounds of it, you didn't need to do much convincing beyond a show of strength. Sometimes a well-placed word can be mightier than the sword.~  IF ~~ THEN GOTO GERARD_20
END

IF ~~ THEN BEGIN GERARD_18
   SAY ~That silver tongue of yours worked wonders, didn't it? Sometimes a well-placed word can be mightier than the sword.~  IF ~~ THEN GOTO GERARD_20
END

IF ~~ THEN BEGIN GERARD_19
   SAY ~The way you dealt with those guards, top-notch work, mate. Shows that sometimes, a bit of muscle does the talking better than a whole load of gab.~ IF ~~ THEN GOTO GERARD_20
END

IF ~~ THEN BEGIN GERARD_20
   SAY ~Splendid work, <CHARNAME>. Your trial phase is over and done, and now, you're a right proper member of the Gorgon's Eye.~ IF ~~ THEN GOTO GERARD_21
END

IF ~~ THEN BEGIN GERARD_21
   SAY ~It's more than just a badge though, aye? You'll soon discover a heap of responsibilities and work to be done, enough to line your pockets with some serious coin, at that.~ IF ~~ THEN GOTO GERARD_22
END

IF ~~ THEN BEGIN GERARD_22
   SAY ~Liedel's the one to see for a list of open bounties, and Ariosh's got a catalog of marks in town. Might be a few other odd-jobs floatin' around the guild as well.~ IF ~~ THEN GOTO GERARD_23
END

IF ~~ THEN BEGIN GERARD_23
   SAY ~Before you slip away and get started, Baldwin's fixin' a word with you. Best not to keep him waiting.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",5)
   SetGlobal("h_BaldwinQuest","GLOBAL",2)
   SetGlobal("h_LiedelQuest","GLOBAL",1)
   SetGlobal("h_GilbaldQuest","GLOBAL",1)
   SetGlobal("h_ZedaRiddle","GLOBAL",1)
   AddJournalEntry(@314,QUEST_DONE)
   TakePartyItem("h_misc05")
   DestroyItem("h_misc05")
   GiveGoldForce(200)
   AddExperienceParty(400)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",5)~ THEN BEGIN GERARD_24
   SAY ~Settle your affairs with Baldwin, then we'll discuss the other jobs on the table.~ IF ~~ THEN EXIT
END

          /////////////////////////////////////
          ////////// Buried Treasure //////////
          /////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",6)~ THEN BEGIN KARP_1
   SAY ~Ah, my friends! Back for another venture in the pursuit of coin, are we? Well, I got wind of a right curious tale from Nashkel, and I'll be sending you to investigate.~ IF ~~ THEN GOTO KARP_2
END

IF ~~ THEN BEGIN KARP_2
   SAY ~There's a lass by the name of Karp, been findin' all sorts of magical trinkets buried in her farmland this past season.~ IF ~~ THEN GOTO KARP_3
END

IF ~~ THEN BEGIN KARP_3
   SAY ~Her latest find? A pair of rings, meant to be sold to a bloke from Ulgoth's Beard, who's headin' down now as we speak.~ IF ~~ THEN GOTO KARP_4
END

IF ~~ THEN BEGIN KARP_4
   SAY ~Our sources say two things of interest. Firstly, she's been flogging these items to fences and smugglers, rather than going to the proper shops.~ IF ~~ THEN GOTO KARP_5
END

IF ~~ THEN BEGIN KARP_5
   SAY ~Secondly, and giving probable cause for her secretive deals, she is withholding all of her findings from her husband, the poor sod.~ IF ~~ THEN GOTO KARP_6
END

IF ~~ THEN BEGIN KARP_6
   SAY ~I will have you travel south and obtain these rings in a manner that is fitting to your judgement.~ IF ~~ THEN GOTO KARP_7
END

IF ~~ THEN BEGIN KARP_7
   SAY ~You could extort the woman with threat of reveal to her husband, or you could put on a ruse, feigning as the man from Ulgoth's Beard. If all else fails, maybe a right scare of violence will soften her up.~ IF ~~ THEN GOTO KARP_8
END

IF ~~ THEN BEGIN KARP_8
   SAY ~If you wish to skip all the drudgery, however, then you could always just pick the rings off her if you can.~
       ++ ~I'm not against using blackmail. If she's willing to engage in shady dealings behind her husband's back, then she may not be so innocent herself.~ GOTO KARP_9
       ++ ~Acting as the buyer sounds like good fun and a chance for me to use my charm and charisma.~ GOTO KARP_9
       ++ ~I think I'll just practice my thieving skills and steal the rings off her when she's not looking.~ GOTO KARP_9
       ++ ~I'm not sure what I will do yet until I speak with this Karp first.~ GOTO KARP_9
END

IF ~~ THEN BEGIN KARP_9
   SAY ~If you can lay your mitts on both these rings before they hit the market, I'll let you have one as a little somethin' for your troubles.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",7)
   AddJournalEntry(@315,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",7)~ THEN BEGIN KARP_10
   SAY ~If you're jawing at me, I reckon you've got your report and the bits I asked for.~
       +~PartyHasItem("h_misc17")~+ ~Got the rings right here.~ GOTO KARP_11
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN KARP_11
   SAY ~Nice work. You've earned it, mate. As agreed, one of 'em's yours to do with as you fancy.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",8)
   AddJournalEntry(@317,QUEST_DONE)
   TakePartyItem("h_misc17")
   DestroyItem("h_misc17")
   AddExperienceParty(600)~ EXIT
END

          ////////////////////////////////////////////
          ////////// It's All Fun and Games //////////
          ////////////////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",8)~ THEN BEGIN CARNIVAL_0
   SAY ~Alright, mate, we've got a big job at the Nashkel Carnival and I'm puttin' you in charge of the prep-work.~ IF ~~ THEN GOTO CARNIVAL_1
END

IF ~~ THEN BEGIN CARNIVAL_1
   SAY ~There's a couple of hefty tents, near the backside of the layout, where they stash all their winnings and gambling licenses.~ IF ~~ THEN GOTO CARNIVAL_2
END

IF ~~ THEN BEGIN CARNIVAL_2
   SAY ~Your marks are the gamesmen inside, packing stun darts. Your job is to slip in quiet-like and nick their weapons.~ IF ~~ THEN GOTO CARNIVAL_3
END

IF ~~ THEN BEGIN CARNIVAL_3
   SAY ~Ariosh and his lot will be holed up behind the tent out west, waiting for your signal. Once you've got the gear, make your way to the meet-up spot and divy up the darts.~ IF ~~ THEN GOTO CARNIVAL_4
END

IF ~~ THEN BEGIN CARNIVAL_4
   SAY ~We'll turn their own kit against 'em, savvy?~ IF ~~ THEN GOTO CARNIVAL_5
END

IF ~~ THEN BEGIN CARNIVAL_5
   SAY ~Ariosh'll grab the licenses and whatever coin his men can heft, while you loop me in for the next move. If everything goes smoothly, we'll all be a lot richer by days end.~
       ++ ~What do we need the gambling licenses for?~ GOTO CARNIVAL_6
       ++ ~Isn't that Shadow Thief territoy? What if they find out what we are doing?~ GOTO CARNIVAL_7
       ++ ~Understood. I'll head down shortly.~ GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_6
   SAY ~Them licenses are the key to broadening our reach and keeping things above board in Amn. That's our main prize, understand?~
       ++ ~Isn't that Shadow Thief territoy? What if they find out what we are doing?~ GOTO CARNIVAL_7
       ++ ~Understood. I'll head down shortly.~ GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_7
   SAY ~Aye, it's their turf alright, and they'll get word sure as shoot. These orders come straight from Baldwin, however, so no use frettin'.~ IF ~~ THEN GOTO CARNIVAL_7.5
END

IF ~~ THEN BEGIN CARNIVAL_7.5
   SAY ~Truth be told, the Shadow Thieves don't have much stake in the gambling trade, and most of their muscle tends to stick below the Cloud Peaks.~
       ++ ~What do we need the gambling licenses for?~ GOTO CARNIVAL_6
       ++ ~Understood. I'll head down shortly.~ GOTO CARNIVAL_8
END

IF ~~ THEN BEGIN CARNIVAL_8
   SAY ~You're stepping up on this job, mate. This'll really put your skills to the test, and if it pans out, your stock in the guild'll shoot up.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",9)
   SetGlobal("h_GuildThieves","GLOBAL",2)
   AddJournalEntry(@321,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",9)~ THEN BEGIN CARNIVAL_9
   SAY ~Remember, this is a proper big operation, no room for slip-ups. Take every gamesman's gear before tipping off the lads. Ariosh'll take it from there.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",10)~ THEN BEGIN CARNIVAL_10
   SAY ~I've already heard the tale, and the result couldn't have been sweeter. Bloody great work, <CHARNAME>. With them gamesmen disarmed, the job was a right success.~ IF ~~ THEN GOTO CARNIVAL_11
END

IF ~~ THEN BEGIN CARNIVAL_11
   SAY ~Now that we've got them licenses, we can start laying the groundwork for our push down south. You've earned every bit of your cut.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",11)
   AddJournalEntry(@323,QUEST_DONE)
   GiveGoldForce(800)
   AddExperienceParty(600)~ EXIT
END


          ////////////////////////////////////////////
          ////////// Borland's Spicy Secret //////////
          ////////////////////////////////////////////


IF ~GlobalLT("CHAPTER","GLOBAL",3) Global("h_RigaldoQuest","GLOBAL",11)~ THEN BEGIN CHAPTER_1
   SAY ~No fresh leads at the moment. Have a word with the mates around the guild, they might have a bit of graft for you.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("CHAPTER","GLOBAL",2) Global("h_RigaldoQuest","GLOBAL",11) Global("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN CHAPTER_2
   SAY ~No fresh leads at the moment. Have a word with the mates around the guild, they might have a bit of graft for you.~ IF ~~ THEN EXIT
END

IF ~GlobalGT("CHAPTER","GLOBAL",2) Global("h_RigaldoQuest","GLOBAL",11) GlobalGT("h_LiedelQuest","GLOBAL",1)~ THEN BEGIN SPICE_0
   SAY ~Ready for your next bit of business? Got a small job lined up, and I'm eyein' you to handle it.~ IF ~~ THEN GOTO SPICE_1
END

IF ~~ THEN BEGIN SPICE_1
   SAY ~There's a local legend 'round here. Goes by the name, Borland of Beregost. Offers travelers a free place to rest instead of dropping coin at the inns.~ IF ~~ THEN GOTO SPICE_2
END

IF ~~ THEN BEGIN SPICE_2
   SAY ~Thing is, he's not as innocent as he looks. Turns out, he's usin' the place to peddle black lotus to his guests.~ IF ~~ THEN GOTO SPICE_3
END

IF ~~ THEN BEGIN SPICE_3
   SAY ~Your job's a simple one. If Borland wants to keep his little operation goin', he'll be payin' us a cut.~ IF ~~ THEN GOTO SPICE_4
END

IF ~~ THEN BEGIN SPICE_4
   SAY ~If he puts up a fuss... well, then you can help him part with all he's got. Clear out his spice stash and take his coin.~
       ++ ~I've stayed at Borland's myself, and he's never offered me any spice.~ GOTO SPICE_5
       ++ ~Got it. I'll see he pays up.~ GOTO SPICE_6
       ++ ~I'll go have a word with him.~ GOTO SPICE_6
END

IF ~~ THEN BEGIN SPICE_5
   SAY ~You suggestin' my info ain't on the mark? You must've given him reason for raised suspicion, is my guess.~
       ++ ~Got it. I'll see he pays up.~ GOTO SPICE_6
       ++ ~I'll go have a word with him.~ GOTO SPICE_6
END

IF ~~ THEN BEGIN SPICE_6
   SAY ~He resides on the east part of town, across from the Red Sheaf.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",12)
   AddJournalEntry(@324,QUEST)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",12)~ THEN BEGIN SPICE_7
   SAY ~Was Mr. Borland agreeable to our offer?~
       +~Global("h_BorlandGood","GLOBAL",0) NumItemsPartyLT("h_misc07",1)~+ ~Yes, he will be making his payments forthwith.~ GOTO SPICE_8
       +~Global("h_BorlandGood","GLOBAL",0) PartyHasItem("h_misc07")~+ ~Yes, and he was so enthusiastic about our new arrangement that he gave me all of his black lotus.~ GOTO SPICE_9
       +~Global("h_BorlandGood","GLOBAL",1) PartyHasItem("h_misc07")~+ ~Unfortunately, he wasn't up for it. I've gathered up his stash and he won't be selling spice here anymore.~ GOTO SPICE_10
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN SPICE_8
   SAY ~I knew I could rely on you. Here's your pay for the job.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",6)
   AddJournalEntry(@326,QUEST_DONE)
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~~ THEN BEGIN SPICE_9
   SAY ~I knew I could rely on you. Here's your pay for the job, and a little extra for the lotus.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",6)
   AddJournalEntry(@326,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(600)
   GiveGoldForce(800)~ EXIT
END

IF ~~ THEN BEGIN SPICE_10
   SAY ~Not the ideal outcome, but at least you're not empty-handed. Here's your pay for the lotus.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",13)
   SetGlobal("h_SpawnAriosh","GLOBAL",1)
   SetGlobal("h_SpawnZylark","GLOBAL",6)
   AddJournalEntry(@326,QUEST_DONE)
   TakePartyItem("h_misc07")
   DestroyItem("h_misc07")
   AddExperienceParty(600)
   GiveGoldForce(400)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",13)~ THEN BEGIN SPICE_11
   SAY ~I knew takin' on their casinos was a reckless move. Get your gear from Rhade and brace yourself. Tonight's gonna be a bloodbath.~ IF ~~ THEN EXIT
END


          /////////////////////////////////
          ////////// Black Lotus //////////
          /////////////////////////////////


IF ~Global("h_RigaldoQuest","GLOBAL",14)~ THEN BEGIN LOTUS_0
   SAY ~Nice work taking care of those Shadow Thieves. I know first hand how troublesome they can be.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",15)~ THEN BEGIN LOTUS_1
   SAY ~I've got a new job for ya, see? We're gonna be moving some gear into Amn.~ IF ~~ THEN GOTO LOTUS_2
END

IF ~~ THEN BEGIN LOTUS_2
   SAY ~I've struck a deal with Borland's spice source, and it's gonna make us a pretty penny, I reckon.~ IF ~~ THEN GOTO LOTUS_3
END

IF ~~ THEN BEGIN LOTUS_3
   SAY ~He'll be making regular deliveries to our warehouses, with the finest black lotus petals in the market, I tell ya, and I'll be sending you to hand off the first batch.~ IF ~~ THEN GOTO LOTUS_4
       ++ ~Where will I be meeting the buyer?~ GOTO LOTUS_4
       ++ ~Find someone else, drug peddling ain't for me.~ GOTO REFUSE_0
END

IF ~~ THEN BEGIN REFUSE_0
   SAY ~I must admit, it's a bit disappointing, mate. Still, considering your track record with the guild, I'll extend some leniency this time 'round.~ IF ~~ THEN GOTO REFUSE_1
END

IF ~~ THEN BEGIN REFUSE_1
   SAY ~Alright, how 'bout this, then? The buyers got a client, Pruflas. He's been cooped up in that blasted lotus tent, fogging his senses day in and day out. The missus is near frantic, dishing out a hefty sum to get him back home.~ IF ~~ THEN GOTO REFUSE_2
END

IF ~~ THEN BEGIN REFUSE_2
   SAY ~Head on down, talk some sense into him, and ensure he returns to his worried wife. Do this, and you'll be looking at a nice share of the prize, savvy?~
       ++ ~I appreciate the alternative, Rigaldo. I owe you one.~ GOTO REFUSE_3
END

IF ~~ THEN BEGIN REFUSE_3
   SAY ~I'll keep your word on that one, mate.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_PruflasQuest","GLOBAL",1)
   SetGlobal("h_SpawnQuass","GLOBAL",1)
   AddJournalEntry(@332,QUEST)~ EXIT
END

IF ~~ THEN BEGIN REFUSE_4
   SAY ~So I've heard. Here's the cut.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@337,QUEST_DONE)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN REFUSE_5
   SAY ~I'm not even going to ask, mate. You failed the mission.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@338,QUEST_DONE)
   GiveGoldForce(500)~ EXIT
END

IF ~~ THEN BEGIN LOTUS_4
   SAY ~He'll be awaitin' ya in the eastern-most tent, at the Nashkel Carnival.~
       ++ ~Is it safe going to Amn while we are at war with the Shadow Thieves?~ GOTO LOTUS_5
       ++ ~How much gold should I be expecting from the buyer?~ GOTO LOTUS_6
       ++ ~Anything else I should know?~ GOTO LOTUS_7
       ++ ~Peddling lotus ain't for me. Got anything else?~ GOTO REFUSE_0
END

IF ~~ THEN BEGIN LOTUS_5
   SAY ~Not on your life. But, takin' risks is the name of the game. Without it, even the sharpest of thieves can grow soft.~
       ++ ~How much gold should I be expecting from the buyer?~ GOTO LOTUS_6
       ++ ~Anything else I should know?~ GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_6
   SAY ~You'll be movin' five pounds of black lotus at 600 gold pieces per pound. I'll cut ya in for a twenty-percent slice upon a successful run.~
       ++ ~Is it safe going to Amn while we are at war with the Shadow Thieves?~ GOTO LOTUS_5
       ++ ~Anything else I should know?~ GOTO LOTUS_7
END

IF ~~ THEN BEGIN LOTUS_7
   SAY ~Best be stickin' to the side streets. The Flaming Fist might have their eyes peeled on the main drags.~ IF ~~ THEN GOTO LOTUS_8
END

IF ~~ THEN BEGIN LOTUS_8
   SAY ~Make good use of your sneak skills, to boot, lest those Shadow Thieves get wind of your arrival.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",16)
   SetGlobal("h_FlamingFist","GLOBAL",1)
   SetGlobal("h_ExtraQuest","GLOBAL",1)
   AddJournalEntry(@327,QUEST)
   GiveItemCreate("h_misc07",LastTalkedToBy,5,0,0)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",16)~ THEN BEGIN LOTUS_9
   SAY ~Welcome back. What news do you bring?~
       +~Global("h_LotusQuest","GLOBAL",1) PartyGoldGT(2999)~+ ~Had a run in with the Flaming Fist and the Shadow Thieves, but I pulled through. Here's the loot.~ GOTO LOTUS_10
       +~Global("h_LotusQuest","GLOBAL",2) PartyGoldGT(2399)~+ ~The Flaming Fist got me on the road, had to give up a pound to see them off.~  GOTO LOTUS_11
       +~Global("h_PruflasQuest","GLOBAL",3) Global("h_ExtraQuest","GLOBAL",0) NumDead("h_pruflc",0)~+ ~I was able to get Pruflas to return home to his wife.~ GOTO REFUSE_4
       +~Global("h_PruflasQuest","GLOBAL",3) Global("h_ExtraQuest","GLOBAL",0) NumDead("h_pruflc",1)~+ ~Well, I kind of killed Pruflas by giving him too much black lotus.~ GOTO REFUSE_5
       ++ ~I have some other things I need to do first.~ EXIT
END

IF ~~ THEN BEGIN LOTUS_10
   SAY ~I'll pocket the three-thousand gold and kick back your twenty-percent, plus an extra five for your troubles, totalling seven-hundred and fifty gold.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   TakePartyGold(3000)
   GiveGoldForce(750)~ EXIT
END

IF ~~ THEN BEGIN LOTUS_11
   SAY ~Curse those bent coppers! But, either way, I tip me hat to your quick thinkin'. I'll take the twentyfour-hundred gold and return your twenty-percent, which come to four-hundred and eighty gold.~
IF ~~ THEN DO ~
   SetGlobal("h_RigaldoQuest","GLOBAL",17)
   SetGlobal("h_ShadowWar","GLOBAL",7)
   AddJournalEntry(@331,QUEST_DONE)
   TakePartyItemAll("h_misc07")
   TakePartyGold(2400)
   GiveGoldForce(480)~ EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",17)~ THEN BEGIN LOTUS_12
   SAY ~No fresh leads at the moment. Have a word with the mates around the guild, they might have a bit of graft for you.~ IF ~~ THEN EXIT
END

IF ~Global("h_RigaldoQuest","GLOBAL",18)~ THEN BEGIN END_0
   SAY ~So, you'll be leadin' us now, eh? Things were goin' rather smoothly 'til Baldwin went off his nut. Keep a steady hand, and we'll be right as rain.~ IF ~~ THEN EXIT
END

