// Agent rab in project jasonHelloWorls

/* Initial beliefs and rules */
needExpansion.
interview_duration_hours(1).
free_time_hours(FH).
c(H2, M2, S2):- interview_duration_hours(D) & .time(H1,M1,S1) & H2=H1+D & M2=M1 & S2=S1.

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
+!scheduleAnInterview(N) <- ?c(H, M, S); /*.time(H,M,S);*/ .print("Appoint an interview at ", H,":",M,":",S," for ", N);.

