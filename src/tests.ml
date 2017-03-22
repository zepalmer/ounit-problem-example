open Batteries;;
open OUnit2;;

let mktest n =
  (string_of_int n) >:: fun _ ->
    Unix.sleep 1;
    assert_equal ~printer:string_of_int n (n+1)
;;

let tests =
  1 -- 4500
  |> Enum.map mktest
  |> List.of_enum
;;

let suite = "demo test suite" >::: tests;;

run_test_tt_main suite;;
