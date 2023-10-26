BEGIN h_pits4d

IF ~Global("h_FightersTalk","GLOBAL",0)~ THEN BEGIN 0
   SAY ~This arena hse seen many a tale, some ending in triumph, others in heartache. What's your story, I wonder?~ IF ~~ THEN EXIT
END

IF ~Global("h_FightersTalk","GLOBAL",1)~ THEN BEGIN 0.5
   SAY ~In the arena, you'll find the rhythm of nature's dance and the harmony of combat. What knowledge or tales are you seeking today?~
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~~ THEN BEGIN 1
   SAY ~I hail from the illustrious city of Silverymoon. It's a place of enchantment and learning, where the beauty of nature harmonizes with the brilliance of magic and artistry.~ IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2
   SAY ~In my early years, I was drawn to the serene groves and ancient forests surrounding the city. There, I found solace and a profound connection with the natural world.~ IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3
   SAY ~I immersed myself in the teachings of the renowned scholars and druids that Silverymoon is known for.~ IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
   SAY ~I became a student of the intricate dance between flora, fauna, and the mystical energies that flow through them.~ IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
   SAY ~It was during these years of study that I earned the moniker 'Swiftwind', a tribute to my agile and graceful movements in the woods.~ IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
   SAY ~Yet, as much as I treasured the tranquility of Silverymoon, there was a restless spirit within me that sought a different kind of knowledge.~ IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7
   SAY ~I yearned to understand the primal forces that shape the world, not only in the books and scrolls but through firsthand experience.~ IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
   SAY ~And so, I ventured beyond the safety of the city, embarking on a journey that ultimately led me here, to the pits.~ IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9
   SAY ~Here, in the crucible of combat, I find new facets of myself unfolding. The clash of steel, the rush of wind, and the pulse of adrenaline, they all weave together in a tapestry of enlightenment.~ IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10
   SAY ~Each fight is a lesson, a chance to learn, to adapt, and to grow stronger. In this arena, I find a different kind of harmony, a symphony of survival and mastery.~
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~~ THEN BEGIN 11
   SAY ~Indeed, the arena holds its own kind of wisdom, akin to the ebb and flow of nature. Much like a forest, it's ever-changing, demanding a keen awareness of one's surroundings.~ IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
   SAY ~Swift movements and a sharp eye are crucial, just as they are in the dance of leaves and the hunting of prey.~ IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13
   SAY ~Patience, too, is a virtue, for sometimes it's in the stillness that opportunities reveal themselves.~ IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14
   SAY ~Remember, the arena, like the wild, rewards those who are attuned to its rhythms and adapt swiftly to its ever-shifting tides.~
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~~ THEN BEGIN 15
   SAY ~I crossed paths with Grom and his tribe during my time in the North. He hails from a fierce and hardy people, deeply connected to the rugged landscapes they call home.~ IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16
   SAY ~Grom himself is a testament to their strength and resilience. He wields his two-handed weapon with an almost primal grace, like a storm sweeping through the mountains.~ IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17
   SAY ~There's an untamed energy about him, a force of nature in its own right. Facing him in the pits is a formidable challenge, to say the least.~
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~I'll be going now.~ GOTO 18
END

IF ~~ THEN BEGIN 18
   SAY ~As you wish. May nature guide your steps, and your path be clear and true.~ IF ~~ THEN EXIT
END

IF ~Global("h_BeatKhalid","GLOBAL",2)~ THEN BEGIN 19
   SAY ~Impressive display of skill, my friend. Khalid's no easy opponent, yet here you stand, victorious. The balance of the arena is shifting.~
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~Global("h_BeatGrom","GLOBAL",2)~ THEN BEGIN 20
   SAY ~Impressive victory over Grom. I know first hand that he's a formidable opponent. The North can be a harsh teacher, but so too can the lessons in the pits.~
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~Global("h_BeatLyria","GLOBAL",2)~ THEN BEGIN 21
   SAY ~A nimble dance, that was. Lyria's quick on her feet, but you outmaneuvered her. Nature rewards those who adapt.~
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~Global("h_BeatSerra","GLOBAL",2)~ THEN BEGIN 22
   SAY ~You've surpassed even my expectations. The winds of fate blow in your favor. Carry this victory with you, for it speaks volumes of your prowess.~
       ++ ~Thank you, Serra. Your skills were admirable and you fought with valor.~ GOTO 23
       ++ ~Serra, can you tell me more about yourself?~ GOTO 1
       ++ ~Are there any strategies or insights you've gained from your experiences here?~ GOTO 11
       ++ ~Can you tell me anything about some of the other fighters here?~ GOTO 15
       ++ ~I'll be going now.~ GOTO 18
END

IF ~~ THEN BEGIN 23
   SAY ~You are gracious in victory, and your skills are formidable. It was an honor to face you in the arena.~ IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24
   SAY ~A victory well earned, <CHARNAME>. You've defeated Roran, the unchallenged champion. You've shown remarkable skill and strength and the pits will surely remember this day.~ IF ~~ THEN EXIT
END