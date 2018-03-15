module Main exposing (main)

import Css exposing (..)
import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src)

slate : Color
slate = (rgb 51 73 91)
orange : Color
orange = (rgb 225 122 0)

paragraph : List (Attribute msg) -> List (Html msg) -> Html msg
paragraph =
    styled p
        [ fontSize (px 16)
        ]

title : List (Attribute msg) -> List (Html msg) -> Html msg
title =
    styled h1
        [ color orange
        ]

heading : List (Attribute msg) -> List (Html msg) -> Html msg
heading =
    styled h2
        [ color slate
        , marginTop (px 30)
        ]

link : List (Attribute msg) -> List (Html msg) -> Html msg
link =
    styled a
        [ color orange
        ]

view : Model -> Html.Styled.Html Msg
view model = div [ css
    [ fontFamilies [ "Bariol", "Arial" ]
    , color (rgb 41 61 72)
    , lineHeight (px 20)
    , maxWidth (px 640)
    , marginLeft auto
    , marginRight auto
    , marginTop (px 60)
    , marginBottom (px 60)
    ]
  ]
  [ title [] [text "Work at Centrica Connected Home"]
  , heading [] [text "About us"]
  , paragraph [] [text """
    At Centrica Connected Home we develop web and mobile applications to control an ecosystem of smart home devices.
    With our tech, people can turn on a light automatically when a door is open or schedule heating to
    be always the perfect temperature.
    """]
  , paragraph [] [text """
    In order to deliver the best user experience, we work closely with designers and product owners.
    We then choose the most appropriate tools to implement their ideas, such as React, React Native,
    and Serverless. We strongly believe that functional programming helps us write readable code and
    we care about making the most out of it.
    """]
  , paragraph []
    [span []
      [ text """
        We love contributing to the community. We host meet-ups at our offices, and contribute to open
        source where we can by
        """
      , link [ href "https://github.com/redux-utilities/redux-actions/pull/268" ] [ text "creating pull requests" ]
      , text " or open sourcing our own libraries and "
      , link [ href "https://github.com/ConnectedHomes/serverless-plugin-kms" ] [ text "plugins" ]
      , text "."
      ]
    ]
  , paragraph [] [text "Although we work from home a lot, we also come to the office in central London. At the office, we sometimes play board games, go trampolining, or play top golf. At the same time, we understand that people also have their lives and want to live them. If you need to pick up your kid from school early or get to a doctor’s appointment, we have the flexibility to do so."]
  , heading [] [text "About you"]
  , paragraph [] [text "We’re looking for someone who"]
  , ul []
    [ li [] [text "has great experience with React,"]
    , li [] [text "enjoys functional programming."]
    ]
  , paragraph [] [text "The amount of experience is less important than your ability to code and to learn."]
  , paragraph [] [text "We’d like devs who can relate to some of the following points:"]
  , ul []
    [ li [] [text "Is comfortable with Redux, ES6, CSS3, styled components; animations are a plus"]
    , li [] [text "Has an interest in React Native and Serverless technologies"]
    , li [] [text "Is interested in a functional approach, has maybe tried out elm, elixir, haskell, or reasonml. You don’t need to know the definition of a monad but being able to use FP in practice is an advantage."]
    , li [] [text "Is open-minded about using and discovering new tools"]
    , li [] [text "Cares about user experience and working with other devs"]
    , li [] [text "Thinks about code quality, improvement, and optimisation"]
    , li [] [text "Is involved in the community - if you do open source or attend/speak at meet-ups, that’s great!"]
    ]
  , heading [] [text "Perks"]
  , ul []
    [ li [] [text "Competitive day rate"]
    , li [] [text "Work laptop"]
    , li [] [text "We’ll help you find the best times and locations for working that help support a healthy work-life balance"]
    , li [] [text "Autonomy - you will be able to change how we work and choose the tools we use, your opinion matters"]
    , li [] [text "Fun team to hang out and learn with"]
    ]
  ]

main : Program Never Model Msg
main =
    Html.beginnerProgram
        { view = view >> toUnstyled
        , update = update
        , model = initialModel
        }


update : Msg -> Model -> Model
update msg model =
    model


type Msg
    = DoSomething


type alias Model =
    ()


initialModel : Model
initialModel =
    ()
