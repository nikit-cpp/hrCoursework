// Agent rab in project jasonHelloWorls

/* Initial beliefs and rules */
needExpansion.
interview_duration_hours(1).
free_time_hours(0). // счётчик часов

/* Initial goals */

/*!firmExpanded. */

/* Plans */
@g1[atomic]
+!firmExpanded <- ?needHireEmployee.

@g2[atomic]
+?needHireEmployee <- .print("I need hire a employee."); ?propagateAdvert.

@g3[atomic]
+?propagateAdvert <- .print("Advert about vacation propagated."); .broadcast(achieve, vacationReceived).

@g4[atomic]
+!startAllowed[source(generator)] <- true.
/*заглушка-на-broadcast */

@g5[atomic]
+!scheduleAnInterview(N): free_time_hours(FTH) & interview_duration_hours(ID) <-
	-+free_time_hours(FTH+ID);
	?free_time_hours(NFTH);
	.time(H0,M,S);
	H=H0+NFTH;
	.print("Appoint an interview at ", H,":",M,":",S," for ", N);
	/*.broadcast(achieve, startAllowed);*/
	.all_names(L);
	for ( .member(X,L) ) {
        // .print(X);    // print all members of the list
        if (.substring("unemployed", X)) { 
        	.print(X);
     	}
     }
	.