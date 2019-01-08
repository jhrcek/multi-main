module B exposing (main)

import Html exposing (Html)
import Svg exposing (circle, svg)
import Svg.Attributes exposing (cx, cy, height, r, width)


main : Html ()
main =
    svg [ width "100", height "100" ]
        [ circle [ cx "50", cy "50", r "50" ] []
        ]
