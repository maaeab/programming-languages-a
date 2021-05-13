(* Hello World! *)

(* this is a comment *)


(* notice that the Type-Checking happens at the compilation; in the static
* context *)

(* NOTICE: SML is a static typed language; meaning that the compiler evaluate
* the type checks (infere them) before the program runs, and it cannot change
* afterwards. *)


val x = 40;
(* val keyword is used to bind a variable *)
(* evaluation of the above statement shall add variable 'x' to the Dynamic
* Environment *)


val y = 10;

(* notice that the Type-Check shall assign 'int' type to 'z' below *)
val z = if x <= y then 0-x else 0-y;
(* after the evaluation variable 'z' shall be added to the Dynamic Environment
* *) 

(* NOTICE: the condition to check in 'if statement' must be bool naturally. But
* also the resulting expressions after 'then' and 'else' must be of the same
* type; both can be int, bool, ...etc but it has to be the same type *)

(* val zz = if x>y then 1 else 1.0; *)
(* the above causes an Error, because 'then' returns 'int' while 'else' returns
* 'real' *)

(* the below shows the use of a standard built-in function 'abs()' *)
(* notice that the use of the funciton-parentheses in sml is optional *)
val abs_z = abs z; 

(* NOTICE: 3 things to watch for when dealing with any expression:
* 1- Syntax
* 2- Semantic (Type-Checking)
* 3- Semantic (Evaluation)
*)

(* NOTICE: All values are expressions, but not all expressions are values. *)
