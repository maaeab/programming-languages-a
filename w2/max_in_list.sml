(* maaeab@mailo.com - 16 May 2021 *)
(* reference made to: Programming Fundamentals, Part A, Week 2 - @Coursera*)


(* this code finds the maximum integer in a list of positive integers and returns it *)

(* find_max1: int list -> int *)
fun find_max1(l: int list) =
  if null(tl(l)) 
  then hd l
  else
    let 
      val max = find_max1(tl l)
    in
      if hd(l) < max 
      then max 
      else hd(l)
    end 
  
(* notice that without using 'let' in the above code, the computation of
        * find_max1 shall be repeated recursively, and shall impact the
        * performance of the code exponentially whenever the biggest numbers are
        * located nearer to the end of the list *)
        
(* ------------------------------ *)

(* the below example uses a better style handling the null list, which shall
* raise an exception in the above code *)

(* the below code handle the case of empty list by using options *)
(* it is considered better style, as the code shall return a valid 'SML option' in
  * all cases *)

(* find_max2: int list -> int option *)

fun find_max2(l: int list)=
  if null l
  then NONE
  else
    let
      val max = find_max2(tl l)
    in
      if isSome max andalso hd l < valOf max
      then max
      else SOME (hd l)
    end


