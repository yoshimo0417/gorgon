BEGIN h_thamud

IF ~Global("h_JoinShadow","GLOBAL",0)~ THEN BEGIN 0
   SAY ~Greetings, <CHARNAME>. How are you faring this evening?~
       ++ ~Uh... pretty good?~ GOTO 1
       ++ ~Care to explain what that was about?~ GOTO 2
       ++ ~Who are you and how do you know my name?~ GOTO 2
END

IF ~~ THEN BEGIN 1
   SAY ~Excellent.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2
   SAY ~Of course, where are my manners?~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I am Thamuz, an envoy of the Shadow Thieves. I can trust you are aware of our organization.~
       ++ ~Why did you kill Nagate. Wasn't your intent to negotiate?~ GOTO 4
       ++ ~Baldwin spoke of you. He said you were once comrades.~ GOTO 5
       ++ ~Why did you attack us in Beregost, what is your objective?~ GOTO 6
END

IF ~~ THEN BEGIN 4
   SAY ~Consider that my form of negotiating. I now hold what I sought, and Nagate shall no longer speak of our exchange.~
       ++ ~Baldwin spoke of you. He said you were once comrades.~ GOTO 5
       ++ ~Why did you attack us in Beregost, what is your objective?~ GOTO 6
END

IF ~~ THEN BEGIN 5
   SAY ~Did he now? There was a time we regarded eachother as such, but those days have long since been buried.~
       ++ ~Why did you kill Nagate. Wasn't your intent to negotiate?~ GOTO 4
       ++ ~Why did you attack us in Beregost, what is your objective?~ GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~I do not anticipate you comprehending the complexities of our affairs. However, as your survival is unlikely, I shall impart some truths.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~Baldwin has been permitted his little gambit in Beregost, for he posed no threat to us. Every move of his has been under our scrutiny.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Baldwin obtaining the Kerykeion was not an option. The threat he would pose to this world is beyond your understanding.~ IF ~~ THEN GOTO 8.5
END

IF ~~ THEN BEGIN 8.5
   SAY ~Furthermore, it appears you've earned another foe, one who has generously paid for your eradication from Beregost.~
       ++ ~What knowledge do you possess of Baldwin and the Kerykeion?~ GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Bah! You serve him, oblivious to the inevitable outcome. I am unsurprised to find such ignorance within his ranks.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~The Kerykeion... a relic of immense power, yet far too perilous for the mortal realm.~ IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11
   SAY ~Its magic is ancient, born of forces beyond our comprehension. To wield it is to court calamity, to invite nothing but chaos and annihilation.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~It hungers for dominion, to subjugate the very essence of life and death. And Baldwin... a man blinded by his own ambition, believes himself capable of overcoming such a feat.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~If he was somehow able to collect every shard and managed to reconstruct the Kerykeion, Faerun would bear the scars for eons.~
       ++ ~What makes him believe he can control it?~ GOTO 14
       ++ ~Is there anyway to harness its power safely?~ GOTO 15
       ++ ~What does Baldwin hope to achieve?~ GOTO 16
       ++ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before it's too late.~ GOTO 17
       ++ ~Let us finish this. Prepare yourself, Shadow Thief.~ GOTO 18
END

IF ~~ THEN BEGIN 14
   SAY ~Arrogance. Delusion. Thoughts of grandeur. He sees only the promise of power, not the inevitable descent into madness and chaos that follows. Desperation can be a powerful motivator.~
       ++ ~Is there anyway to harness its power safely?~ GOTO 15
       ++ ~What does Baldwin hope to achieve?~ GOTO 16
       ++ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before it's too late.~ GOTO 17
       ++ ~Let us finish this. Prepare yourself, Shadow Thief.~ GOTO 18
END

IF ~~ THEN BEGIN 15
   SAY ~The shards themselves, seperated as they are, have a power that can harnessed by mortals with formidable will. However, once united, the exponential surge will consume everything in its wake.~
       ++ ~What makes him believe he can control it?~ GOTO 14
       ++ ~What does Baldwin hope to achieve?~ GOTO 16
       ++ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before it's too late.~ GOTO 17
       ++ ~Let us finish this. Prepare yourself, Shadow Thief.~ GOTO 18
END

IF ~~ THEN BEGIN 16
   SAY ~Dominion, perhaps. Revenge for imagined transgressions. But in truth, he'll be naught but a puppet, dancing on the strings of a malevolent force.~
       ++ ~What makes him believe he can control it?~ GOTO 14
       ++ ~Is there anyway to harness its power safely?~ GOTO 15
       ++ ~I have no desire to fight you, Thamuz. I plan to stop Baldwin myself, before it's too late.~ GOTO 17
       ++ ~Let us finish this. Prepare yourself, Shadow Thief.~ GOTO 18
END

IF ~~ THEN BEGIN 17
   SAY ~An amusing ploy, albiet an unsavory reflection of your loyalty, yet it is one that I cannot satisfy. You've taken the lives of my comrades, and for that, there can be no forgiveness.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",7)
   SetGlobal("h_ShadowWar","GLOBAL",4)
   SetGlobal("h_SpawnAriosh","GLOBAL",4)
   AddJournalEntry(@216,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 18
   SAY ~Yes, enough words. I will avenge my comrades with your death.~
IF ~~ THEN DO ~
   SetGlobal("h_BaldwinQuest","GLOBAL",7)
   SetGlobal("h_ShadowWar","GLOBAL",4)
   SetGlobal("h_SpawnAriosh","GLOBAL",4)
   AddJournalEntry(@216,QUEST)~ EXIT
END




