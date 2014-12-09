// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!prepareTasks(N) <-
	.print("Now i'll prepare tasks and questions for ", N);
	?makeQuestions;
	?findTasks;
	.
	
@g2[atomic]
+!startAllowed[source(generator)] <- true.
/*заглушка-на-broadcast */

@g3[atomic]
+?makeQuestions <- true.

@g4[atomic]
+?findTasks <- true.

@g5[atomic]
+!vacationReceived[source(boss)] <- true.
/*заглушка-на-broadcast */