// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */


/* Plans */
@g1[atomic]
+!startAllowed : true <-	?learningLevel(LL); ?practiceLevel(PL);
					.print("My skills: learning ",LL,", practice ",PL, ". I'm looking for a job");
					.

@g2[atomic]
+!hired[source(boss)] <- 
	.print("Yahoo! I am hired!").
	
@g3[atomic]
+!vacationReceived[source(boss)] <- 
	.print("received vacation from newspaper").