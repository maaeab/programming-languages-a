(* pairs and tribles are just tuples *)

(* REMEMBER: Tuples types must be known already at coding, it cannot be defined
* on runtime *)

(* fn: int * int -> int *)
fun pair_sum(x:int, y:int)=
  x+y

(* fn: (int * int) -> (int * int) *) 
fun pair_swap(p: int * int)=
  (#2 p, #1 p)

(* fn: (int * int) -> (int * int) *) 
fun pair_sort(p: int * int)=
  if (#1 p) <= (#2 p)
  then p
  else ((#2 p), (#1 p))

(* fn: (int * int) * (int * int)) -> (int * int) *)
fun pairs_multiply(p1:int * int, p2:int * int)=
  ((#1 p1) * (#1 p2), (#2 p1) * (#2 p2))

(* fn: int * int -> (int, int) *)
fun div_mod(x:int, y:int)=
  (x div y, x mod y)


