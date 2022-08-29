module Functions.Main exposing (..)
import Html exposing (text)
import Debug exposing (toString)

-- function definition
add : number -> number -> number
add a b =
    a + b

-- forward pipe operator
result : number
result = 
    add 1 3 |> add 3

-- anonymous function
anonymousresult = 
    add 1 3 |> \a -> a //  2


main =
    text (toString anonymousresult)