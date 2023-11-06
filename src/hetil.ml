type ('typ, 'var) t =
| [] : ('var, 'var) t
| ( :: ) :  'a * ('typ, 'var) t -> ('a -> 'typ, 'var) t

let init f len: type typ var. (int -> a) -> int -> (typ, var) t =
  let rec aux i =
    if i = len then []
    else (f i) :: (aux (i + 1))
  in
  aux 0

let rec length: type typ var. (typ, var) t -> int = function
  | [] -> 0
  | _hd :: tl -> 1 + length tl
