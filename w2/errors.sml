(* Corrected by Moemen Ahmed on 13May21 *)

(* Programming Languages, Dan Grossman *)
(* Section 1: Some Errors *)

(* This program has several errors in it so we can try to debug them. *)

val x = 34;

val y = x + 1;

val z = if x < 4 then 34 else y;

val q = if y > 0 then 0 else y;

(* NOTICE: '-' is only binary in ML, you can use '~' to negate an integer *)
val a = ~5;

val w = 0;

val fun1 = 34;

val v = x div a;
(* NOTICE: the '\' operator works for real (floating) only. But for 'int' type
* the operator 'div' must be used *)


val fourteen = 7 + 7;


(* NOTICE: the semicolon ';' by end of the statement is optional in files, but
* mandatory in the REPL *)


