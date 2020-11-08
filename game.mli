(** The representation for a game state *)
type t

(** The list of players participating in the game *)
type players = Player.t list

type phase =
  | Attackify
  | Fortify
  | Place

(** The player whose turn it is at the current game state *)
type current_player = Player.t

(** [init p] is the initial game state *)
val init : Player.t list -> t

(** [get_curr_player g] is the player of the current game state *)
val get_current_player : t -> Player.t

val attack : t -> Command.command -> t

val update_state : t -> Command.command -> t

(** Will return the list of players in the game state*)
val get_players : t -> players

(** Will allow the player to place troops on map*)
val place : t -> Command.command -> t

