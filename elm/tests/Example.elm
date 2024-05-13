module Example exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)



{-

    Das sind nice strategien
    https://github.com/elm-explorations/test?tab=readme-ov-file#strategies-for-effective-testing
   2. When doing TDD, treat compiler errors as a red test. So feel free to write the test you wish you had even if it means calling functions that don't exist yet!


    Das ist ne cooles package
    https://github.com/stoeffel/elm-verify-examples

    HTML tests
    https://korban.net/posts/elm/2018-11-21-testing-views-with-elm-test/

-}


convert : String -> Int
convert romanNumeral =
    case String.uncons romanNumeral of
        Nothing ->
            0

        Just ( head, tail ) ->
            let
                numeral i =
                    let
                        next =
                            tail
                                |> String.uncons
                                -- |> Maybe.map (\( h, _ ) -> convert (String.fromChar h))
                                |> Maybe.withDefault 0

                        rest =
                            convert tail
                    in
                    if next > i then
                        rest - i

                    else
                        i + rest
            in
            case head of
                'I' ->
                    numeral 1

                'V' ->
                    numeral 5

                'X' ->
                    numeral 10

                'L' ->
                    numeral 50

                'C' ->
                    numeral 100

                'D' ->
                    numeral 500

                'M' ->
                    numeral 1000

                _ ->
                    Debug.todo "implement"


suite : Test
suite =
    describe "convert function"
        ([ ( "I", 1 )
         , ( "II", 2 )
         , ( "V", 5 )
         , ( "IV", 4 )
         , ( "VI", 6 )
         , ( "IX", 9 )
         , ( "XIX", 19 )
         , ( "XXXX", 40 )
         , ( "L", 50 )
         , ( "C", 100 )
         , ( "D", 500 )
         , ( "M", 1000 )
         , ( "MMXVI", 2016 )
         , ( "XM", 990 )
         ]
            |> List.map
                (\( i, o ) ->
                    test
                        ("convert should return "
                            ++ String.fromInt o
                            ++ " when "
                            ++ i
                            ++ " is given"
                        )
                        (\_ -> Expect.equal o (convert i))
                )
        )



{-
   describe "String.reverse"
               -- Nest as many descriptions as you like.
               [ test "has no effect on a palindrome" <|
                   \_ ->
                       let
                           palindrome =
                               "hannah"
                       in
                       Expect.equal palindrome (String.reverse palindrome)

               -- Expect.equal is designed to be used in pipeline style, like this.
               , test "reverses a known string" <|
                   \_ ->
                       "ABCDEFG"
                           |> String.reverse
                           |> Expect.equal "GFEDCBA"

               -- fuzz runs the test 100 times with randomly-generated inputs!
               , fuzz (Fuzz.map2 Tuple.pair string string) "restores the original string if you run it again" <|
                   \( randomlyGeneratedString, b ) ->
                       randomlyGeneratedString
                           |> String.reverse
                           |> String.reverse
                           |> Expect.equal randomlyGeneratedString
               ]
-}
