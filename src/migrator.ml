(* CLI ARGS start *)
(* file with DB creds *)
let creds_file =

(* DB user *)
let db_user =

(* DB password *)
let db_password =

(*DB host*)
let db_host =

(* DB port *)
let db_port =
(* CLI ARGS end *)

(* DB credentials *)
let creds =

(* COMMAND HANDLERS start *)
(* generates migration file *)
let generate description =

(* performs migrationing *)
let migrate =

(* rollbacks migrations to <version> or rollbacks <num> migrations *)
let rollback ?version ?num =
(* COMMAND HANDLERS end *)

(* CLI TERMS start *)
open Cmdliner

let generate_term = Term.(const migrate $ const ())

let migrate_term = Term.(const migrate $ const ())

let rollback_term = Term.(const migrate $ const ())
(* CLI TERMS end *)

let () = Term.exit @@ Term.eval_choice
