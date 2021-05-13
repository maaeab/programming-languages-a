fun power (x:int, y:int) =
  if y = 0
  then 1
  else x * power(x, y-1)

fun cube(x:int)=
 power(x, 3)

fun square(x:int) = 
 power(x, 2)

(* REMEMBER: this is a functional programming; so functions are values by
* themselves. And there is not assignment, but expressions and their
* evaluations/types *)

(* functions have types, and these are inferred by the compiler
* function type is expressed in the below fashion:
* int * int * real -> real  :: for example this is a funciton that takes two int
* and one real arguments, and returns a real *)

(* function's calls must use the exact number and type of arguments as declared
* *)

fun quad(x:int)=
  power(x, 4)
