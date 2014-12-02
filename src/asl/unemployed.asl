// Agent unemployed in project jasonHelloWorls

/* Initial beliefs and rules */

/* Initial goals */

!start.

/* Plans */

+!start : true <- .print("hello, boring world.").

+!hired[source(boss)] <- 
	.print("Yahoo! I am hired!").