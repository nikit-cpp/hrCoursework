// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!startAllowed : true <-
					?skills(LL, PL); /*Выяснение теоретических знаний и практических навыков */
					?desires(LD, PD); /*Выяснение желаний читать и программировать */
					.print("My skills: learning ",LL,", practice ",PL, ". desires: reading ",LD,", programming ",PD, ". I'm looking for a job");
					.

@g2[atomic]
+!hired[source(teamlead)] <- 
	.print("Yahoo! I am hired!").
	
@g3[atomic]
+!vacationReceived[source(boss)] : skills(LL, PL) & desires(LD, PD) <- 
	.print("received vacation from newspaper");
	//.print("LL=",LL,", Pl=",PL,",  LD=",LD,", PD=",PD);
	if(LL==1 & PL==1){ // scenario 1
		?respondVacation;
	}
	if(LL==0 & PL==1 & LD==0){ // scenario 2
		?respondVacation;
	}
	if(LL==0 & PL==1 & LD==1){ // scenario 3
		?readBooks;
		?respondVacation;
	}
	if(LL==1 & PL==0 & PD==0){ // scenario 4
		?respondVacation;
	}
	if(LL==1 & PL==0 & PD==1){ // scenario 5
		?writePrograms;
		?respondVacation;
	}
	if(LL==0 & LD==0 & PL==0 & PD==0){ // scenario 6
		?respondVacation;
	}
	if(LL==0 & LD==1 & PL==0 & PD==0){ // scenario 7
		?readBooks;
		?respondVacation;
	}
	if(LL==0 & LD==0 & PL==0 & PD==1){ // scenario 8
		?writePrograms;
		?respondVacation;
	}
	if(LL==0 & LD==1 & PL==0 & PD==1){ // scenario 9
		?readBooks;
		?writePrograms;
		?respondVacation;
	}
	.
	

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
	
@g8[atomic]
+?readBooks <- .print("I read books");.

@g9[atomic]
+?writePrograms <- .print("I write programs");.