// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!startAllowed : true <-
					?skills(LL, PL); /*Выяснение теоретических знаний и практических навыков */
					.print("My skills: learning ",LL,", practice ",PL, ". I'm looking for a job");
					?desires(LD, PD); /*Выяснение желаний читать и программировать */
					.print("My desires: reading ",LD,", programming ",PD, ". I'm looking for a job");
					.

@g2[atomic]
+!hired[source(teamlead)] <- 
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
	+interviewTime(H, M, S); // Добавляем убеждение, в котором запоминаем время 
	.

@g7[atomic]
+!rejected[source(teamlead)] <- 
	.print("I'll go look for another job.").