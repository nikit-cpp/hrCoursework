// Agent rab in project jasonHelloWorls

/* Initial beliefs and rules */
needExpansion.

/* Initial goals */

!firmExpanded.

/* Plans */

+!firmExpanded <- ?advert.

+?advert <- .print("Averv propagated.");.
