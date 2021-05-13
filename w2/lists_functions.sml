(* In this code we use the concept of lists functions to handle some interesting
* concepts *)


(* the below function takes a list of integers and return the sum of the items
* *)

fun list_sum(l: int list)=
  if null(tl l)
  then hd(l)  
  else hd l + list_sum(tl l)

(* the below function takes a list of integers and return the product of its
* items *)
fun list_product(l: int list)=
  if null l 
  then 1
  else hd l * list_product(tl l)


(* the below function takes an integer, and returns a list of of integers with
* all numbers less than or equal the input intenger ending with one *)
fun countdown(x: int)=
  if x=1
  then [1]
  else x::countdown(x-1)


(* the below function takes two lists of integers and appends the second to the
* first. *)
fun lists_append(l1:int list, l2:int list)=
  if null l1
  then l2
  else hd l1::lists_append(tl l1, l2) 
