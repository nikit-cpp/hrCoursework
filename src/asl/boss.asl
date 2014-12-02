// Agent rab in project jasonHelloWorls

/* Initial beliefs and rules */
needExpansion.

/* Initial goals */

/*!firmExpanded. */

/* Plans */

+!firmExpanded <- ?needHireEmployee.

+?needHireEmployee <- .print("I need hire a employee."); ?propagateAdvert.

+?propagateAdvert <- .print("Advert about vacation propagated."); .broadcast(achieve, hired).
