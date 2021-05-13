(* All elements of a list must have the same type *)

(* 'a list is a list of type alpha; usually the type of an empty list [] *)

(* null() is a built-in function, that takes a list and return true if it is the
* empty list *)

(* grap the elements of a list using hd() and tl() *)

(* int list *)
val l1 = [5,4,3]

(* int list *)
val l2 = [4,5,6]

(* int list list *)
val ll = [l1, l2]

(* int list list .... in English this is a list of an int lists *)
(* the 'cons' operator '::' is used to add an item to the face of a list *)
val temp = [0,0]::ll
