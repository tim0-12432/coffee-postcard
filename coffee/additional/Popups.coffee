`
import React from 'react'
import ReactDOM from 'react-dom'
import Alert from 'react-bootstrap/Alert'
`

anchor = document.getElementById "additional"
amount = 750

alert = (type, message) ->
    <Alert variant={type}>{message}</Alert>

export errorAlert = (message = "Error!") ->
    ReactDOM.render alert("danger", message), anchor
    setTimeout(() =>
        ReactDOM.unmountComponentAtNode anchor
    , amount)

export infoAlert = (message = "Successful!") ->
    ReactDOM.render alert("primary", message), anchor
    setTimeout(() =>
        ReactDOM.unmountComponentAtNode anchor
    , amount)

