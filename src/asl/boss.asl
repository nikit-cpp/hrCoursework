// Agent rab in project jasonHelloWorls

/* Initial beliefs and rules */
needExpansion.

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
+!scheduleAnInterview(N) <- /* ?getInterviewTime(H, M, S)*/ .time(H,M,S); .print("Appoint an interview at ", H,":",M,":",S," for ", N);.

/* @g6[atomic]
+!getInterviewTime(H, M, S) <- .time(H,M,S).*/