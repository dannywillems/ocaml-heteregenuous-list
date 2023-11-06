type ('typ, 'var) t

val init : (int -> 'a) -> int -> ('typ, 'var) t

(** [length l] returns the length of the list [l] *)
val length : ('typ, 'var) t -> int
