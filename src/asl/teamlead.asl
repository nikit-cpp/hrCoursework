// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!prepareTasks(N) <-
	.print("Now i'll prepare tasks for ", N);
	.
	
@g2[atomic]
+!startAllowed[source(generator)] <- true.
/*заглушка-на-broadcast */
