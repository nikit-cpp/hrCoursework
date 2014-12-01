!start([a, b, c, d]).
+!start([H|T]):H\==[] <-.print(H);
                                       !start(T).
+!start(L)<-true.

