BEGIN h_pits5d

IF ~Global("h_FightersTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~You think you have what it takes? We'll see. The pits don't suffer fools lightly. If you're not ready to bleed, you're not ready at all.~ IF ~~ THEN EXIT
END

IF ~Global("h_FightersTalk","GLOBAL",1)~ THEN BEGIN 0.5
   SAY ~This place doesn't suffer the weak. You step in, you fight. No room for hesitation or second-guessing.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",2)~ THEN BEGIN 1
   SAY ~You took down Khalid. Well, you'll find no accolades from me. It takes more than that to impress.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatGrom","GLOBAL",2)~ THEN BEGIN 2
   SAY ~Grom's tough, but that's no surprise. If you're thinking this changes anything, you're wrong. You've got a long way to go.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatLyria","GLOBAL",2)~ THEN BEGIN 3
   SAY ~Lyria's got some moves, I'll give her that. But that doesn't mean you'll get off easy with me.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatSerra","GLOBAL",2)~ THEN BEGIN 4
   SAY ~Serra had some tricks up her sleeve. Didn't help her much, did it? Prepare for a real fight.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatRoran","GLOBAL",2)~ THEN BEGIN 5
   SAY ~You might have bested me, but don't think for a moment that makes you the true champion.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Not until you've faced Isla, and she'd tear you apart, limb by limb.~ IF ~~ THEN EXIT
END

