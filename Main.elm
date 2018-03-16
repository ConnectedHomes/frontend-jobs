module Main exposing (main)

import Css exposing (..)
import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css, href, src, alt)

slate : Color
slate = (rgb 51 73 91)
orange : Color
orange = (rgb 255 121 3)

paragraph : List (Attribute msg) -> List (Html msg) -> Html msg
paragraph =
    styled p
        [ fontSize (px 16)
        ]

title : List (Attribute msg) -> List (Html msg) -> Html msg
title =
    styled h1
        [ color orange
        , lineHeight (Css.em 1)
        ]

heading : List (Attribute msg) -> List (Html msg) -> Html msg
heading =
    styled h2
        [ color slate
        , marginTop (px 30)
        ]

subHeading : List (Attribute msg) -> List (Html msg) -> Html msg
subHeading =
    styled h3
        [ color slate
        , marginTop (px 15)
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
    , padding (px 15)
    ]
  ]
  [ img
    [ src "./logo.svg"
    , alt "Hive logo"
    , css
      [ float right
      , marginLeft (px 50)
      , marginRight (px 50)
      , marginBottom (px 10)
      , marginTop (px 30)
      ]
    ] []
  , title [] [text "Work at Centrica Connected Home"]
  , heading [] [text "About us"]
  , paragraph []
    [span []
      [ text "At Centrica Connected Home we develop web and mobile applications to control an "
      , (strong [] [text "ecosystem of smart home devices."])
      , text """
      With our tech, people can turn on a light automatically when a door is open or schedule heating to
      be always the perfect temperature.
      """
      ]
    ]
  , paragraph []
    [span []
      [ text """
      In order to deliver the best user experience, we work closely with designers and product owners.
      We then choose the most appropriate tools to implement their ideas, such as
      """
      , (strong [] [text "React, React Native, and Serverless."])
      , text """
      We strongly believe that functional programming helps us write readable code and
      we care about making the most out of it.
      """
      ]
    ]
  , paragraph []
    [span []
      [ text "We're always striving to find the best solution for any problem, and "
      , (strong [] [text "our work is much more than just shipping stories."])
      , text """
      Upgrading libraries, trying new approaches and tools, and refactoring old
      code to meet the latest standards are a part of our routine. We have regular meetings where we're discussing
      improvements to the codebase, pair on ideas and tricky issues, and are always open to changing the way we work.
      """
      ]
    ]
  , heading [] [text "How we work"]
  , paragraph []
    [span []
      [ (strong [] [text "We work from home a lot"])
      , text """
        and we understand that people have busy lives that require flexibility.
        If you need to pick up your kid from school early or get to a doctor’s appointment, you can definitely do so.
        All our meetings happen in person as well as on hangouts/zoom and we use slack as our main communication tool.
        That way even
        """
      , (strong [] [text "people who aren't at the office can meaningfully contribute"])
      , text """
       to what we're discussing and working on. We use Jira and Github to organise and share our work with
       others on the team and throughout the organisation.
      """
      ]
    ]
  , paragraph []
    [span []
      [ text "Although we have the option to work from home, we also come to the "
      , (strong [] [text "office in central London"])
      , text """
        to hang out with each other. We play board games a lot, and sometimes go trampolining or playing top golf.
        In essence, we're trying to achieve a good balance of doing a great job while having space for personal lives and fun.
        """
      ]
    ]
  , paragraph []
    [span []
      [ text "We love "
      , (strong [] [text "contributing to the community."])
      , text " We host meet-ups at our offices, and contribute to open source where we can by "
      , link [ href "https://github.com/redux-utilities/redux-actions/pull/268" ] [ text "creating pull requests" ]
      , text " or open sourcing our own libraries and "
      , link [ href "https://github.com/ConnectedHomes/serverless-plugin-kms" ] [ text "plugins" ]
      , text "."
      ]
    ]
  , heading [] [text "About you"]
  , paragraph [] [text "We’re looking for a group of diverse and creative people who"]
  , ul []
    [ li [] [text "have great experience with React,"]
    , li [] [text "enjoy functional programming."]
    ]
  , paragraph [] [text "The amount of experience is less important than your ability to code and to learn."]
  , subHeading [] [text "Bonus points"]
  , paragraph [] [text "Apart from the required skills above, we’d like devs who can relate to some of the following:"]
  , ul []
    [ li [] [text "Are comfortable with Redux, ES6, CSS3, styled components; animations are a plus"]
    , li [] [text "Have an interest in React Native and Serverless technologies"]
    , li [] [text "Are interested in a functional approach, has maybe tried out elm, elixir, haskell, or reasonml. You don’t need to know the definition of a monad but being able to use FP in practice is an advantage."]
    , li [] [text "Are open-minded about using and discovering new tools"]
    , li [] [text "Care about user experience and working with other devs"]
    , li [] [text "Think about code quality, improvement, and optimisation"]
    , li [] [text "Are involved in the community - if you do open source or attend/speak at meet-ups, that’s great!"]
    ]
  , heading [] [text "Perks"]
  , ul []
    [ li [] [text "Competitive day rate"]
    , li [] [text "Work laptop"]
    , li [] [text "We’ll help you find the best times and locations for working that help support a healthy work-life balance"]
    , li [] [text "Autonomy - you will be able to change how we work and choose the tools we use, your opinion matters"]
    , li [] [text "Fun team to hang out and learn with"]
    ]
  , heading [] [text "Apply now"]
  , paragraph []
    [ span []
      [ text "If this sounds good to you, send us your CV to "
      , link [ href "mailto:frontend-jobs@hivehome.com" ] [ text "frontend-jobs@hivehome.com" ]
      , text ". Tell us a bit about yourself, why you think you'd be a good fit, and feel free to share your GitHub/twitter/website."
      ]
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
