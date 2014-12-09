// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!prepareTasks(N) <-
	.print("Now i'll prepare tasks and questions for ", N);
	?makeQuestions;
	?findTasks;
	?ready(N);
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

@g6[atomic]
+?ready(N) <- !meetUnemployed(N).

@g7[atomic]
+!meetUnemployed(N) <-
	.print("Hello, ",N, ", please tell me your scills");
	/*.send(n, tellSkills(LL,PL));*/
	.send(N, askOne, learningLevel(LL), learningLevel(LL));
	.send(N, askOne, practiceLevel(PL), practiceLevel(PL));
	.print(N,", your skills: learning ",LL,", practice ",PL, ".");
	.