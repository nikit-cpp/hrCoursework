// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!startAllowed : true <-	?learningLevel(LL); ?practiceLevel(PL);
					.print("My skills: learning ",LL,", practice ",PL, ". I'm looking for a job");
					.
/*Выяснение теоретических знаний и практических навыков */

@g2[atomic]
+!hired[source(boss)] <- 
	.print("Yahoo! I am hired!").
	
@g3[atomic]
+!vacationReceived[source(boss)] <- 
	.print("received vacation from newspaper");
	?respondVacation.

@g4[atomic]
+?respondVacation <- .print("I respond vacation"); ?contactWithBoss.

@g5[atomic]
+?contactWithBoss <- .print("I contacting to with my future boss"); .my_name(N); .send(boss,achieve, scheduleAnInterview(N));.

@g6[atomic]
+!go(H,M,S)[source(boss)] <- 
	.print("I am going to interview on appoint time ", H,":",M,":",S,".");
	.

/*@g7[atomic]
+!tellSkills(LL,PL) <- true.*/