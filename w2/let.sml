(* let us practice the usage of 'let' expressions *)

fun f1(x: int)=
  let 
    val y = 2 * x 
  in
    if (y - x) < 10 then
      true
    else
      false
     
  end;
  

f1(15);
f1(20);
f1(5);


