// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("I'm looking for a job").

+!hired[source(boss)] <- 
	.print("Yahoo! I am hired!").