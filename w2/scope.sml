(* let us test the idea that there is no scope - only 'let' creates a local
* scope *)

(* 'a' shall be bound to 100 for the rest of the module, unless shadowed *)
val a = 100

fun fun1(x: int)=
  x

fun fun2(y: int)=
  (* val a = 1;  this line shall create an error : at compilation *)
  (* a = 10  this will create an error of a different kind : at runtime*)

  (* the below works fine, creating a different variable 'a' bound
    to 10 in the scope of 'let' *)
  let
    val a = 10  
  in
    y * a
  end 

fun fun3(z: int)=
  z * a;
  (* z *)

fun fun4()=
  (* x+y+z  this expression shall create an error because the variables are not
  * boun inside the scope of the function fun4 *)
  fun1(1)+fun2(2)+fun3(3);
  

fun4();  (* this will work fine of course *)

(* To createa a local scope we need to use 'let' expression *)

(* Nested 'let' expressions *)

fun fun5()=
  let
    val b = a div 2 
  in 
    let
      val c = b * 2
     in
       if a = c then true else false
     end
  end

fun5()  (* returns true *)
