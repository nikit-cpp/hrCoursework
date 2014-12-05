// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */
@g1[atomic]
+!start : true <-	?learningLevel(LL); ?practiceLevel(PL);
					.print("My skills: learning ",LL,", practice ",PL);
					.print("I'm looking for a job");.

@g2[atomic]
+!hired[source(boss)] <- 
	.print("Yahoo! I am hired!").