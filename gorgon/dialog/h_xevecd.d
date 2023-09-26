BEGIN h_xevecd

IF ~Global("h_GilbaldQuest","GLOBAL",4)~ THEN BEGIN 0
   SAY ~Don'tcha look down on me! I'll be rollin' in riches, bigger 'n the Silvershields, mark me words!~
       ++ ~I don't think you'll live long enough to see that.~ GOTO 1
       ++ ~You have been accused of using fake gold at the Gorgon's Eye hideout. What do you have to say for yourself?~ GOTO 2
END

IF ~~ THEN BEGIN 1
   SAY ~Nah, nah, I ain't just rollin' over! This gold's mine, earned it with my blade, fair 'n square!~
       ++ ~Allow me to test your skills then!~ GOTO 10
       ++ ~You have been accused of using fake gold at the Gorgon's Eye hideout. What do you have to say for yourself?~  GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~Absurd, I tell ya! No fake gold here, none!~
       ++ ~It was used at Gilbald's and Meredia's, and you frequented them both.~ GOTO 3
       ++ ~Allow me to examine your gold, then.~ GOTO 4
       ++ ~I don't believe you. Time to die!~ GOTO 10
END

IF ~~ THEN BEGIN 3
   SAY ~Spent some time there, sure, but not so foolish as to flaunt fake coins in their faces, no <PRO_SIRMAAM>!~
       ++ ~Allow me to examine your gold, then.~ GOTO 4
       ++ ~I don't believe you. Time to die!~ GOTO 10
END

IF ~~ THEN BEGIN 4
   SAY ~Alright, alright, but try any tricks, and I'll take your fingers as souvenirs, got it?~
       ++ ~I knew it! See? All of these coins are fake.~ GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~What? Impossible, impossible, I say!~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Deceived, tricked, by that woman with the coins! Lost my senses, I did!~
       ++ ~What woman? Who decieved you?~ GOTO 7
       ++ ~I'm not buying it, Xevec. Make your peace.~ GOTO 10
END

IF ~~ THEN BEGIN 7
   SAY ~Hired me, she did! Finalized at Gilbald's, but never got her name or place!~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~Wanted Sam dead, she did! In Nashkel! Paid up front, promised more after the deed.~
       ++ ~Sam in Nashkel? I'll look into it.~ GOTO 9
       ++ ~I don't have time for all that. Time to die, Xevec!~ GOTO 10
END

IF ~~ THEN BEGIN 9
   SAY ~No lies, no lies! She spoke like she knew Sam. Find the mark, find the woman, mark my words!~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   AddJournalEntry(@613,QUEST)~ EXIT
END

IF ~~ THEN BEGIN 10
   SAY ~Enough chit-chat, let's get to it! Got skills, me!~
IF ~~ THEN DO ~
   SetGlobal("h_GilbaldQuest","GLOBAL",5)
   SetGlobal("h_KilledXevec","GLOBAL",1)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END
       
IF ~Global("h_GilbaldQuest","GLOBAL",5)~ THEN BEGIN 11
   SAY ~What now? Not my fault, I swear!~
       +~Global("h_TalkedToMaid","GLOBAL",2)~+ ~I found the woman who hired you Xevec, looks like you were telling the truth.~ GOTO 12
       ++ ~I'll be back later.~ EXIT
END

IF ~~ THEN BEGIN 12
   SAY ~Great news, eh? Cleared my name, didn't you?~
       ++ ~Well, not quite. You still used counterfeit gold, and the punishment is death.~ GOTO 14
       ++ ~I'll inform Gilbald of your involvement and he will decide your fate.~ GOTO 13
       ++ ~All clear, Xevec. Might want to stay clear of the Den for a while, to be safe.~ GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Understood, understood. Gilbald's fair, he'll hear the tale, I'm sure of it!~
IF ~~ THEN DO ~
   SetGlobal("h_DidNotKillXevec","GLOBAL",1)
   AddJournalEntry(@618,QUEST)
   EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 14
   SAY ~Enough chit-chat, let's get to it! Got skills, me!~
IF ~~ THEN DO ~
   SetGlobal("h_KilledXevec","GLOBAL",2)
   AddJournalEntry(@614,QUEST)
   Enemy()~ EXIT
END

       
       
       
       
       



//I was celebrating a rather lucrative contract I had just received.
//None of that really matters anymore, Xevec.