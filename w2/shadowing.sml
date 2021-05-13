(* REMEMBER: SML is static typed languages. And there is not assignment at all *)

(* Whenever an existing variable is bound to a new value, a totally new Dynamic Environment is creaeted with the new variable and any other variables that are bound *)

val a = 5

val b = 2 * a 

val a = 10

val c = if a = 5 then true else false

