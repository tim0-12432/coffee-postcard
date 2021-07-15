`
import React, { Component, Fragment } from 'react'
import TopBar from './TopBar'
import Formular from './Formular'
import Response from './Response'
import { Hook, Decode, Console } from 'console-feed'
import 'codemirror/lib/codemirror.css'
import 'codemirror/theme/material.css'
import './custom-codemirror.scss'
`

# Test: https://jsonplaceholder.typicode.com/todos/1

class App extends Component
    constructor: (props) ->
        super props
        @state =
            response: {},
            logs: []
        @handleChangeResponse = @handleChangeResponse.bind(@)

    componentDidMount: ->
        console.log("Hello")
        console.log("World")

    handleChangeResponse: (value) ->
        @setState(response: value)

    render: ->
        <Fragment>
            <TopBar />
            <div className="p-4">
                <Formular handleChangeResponse={@handleChangeResponse} />
                <Response response={@state.response} />
            </div>
            <Console logs={@state.logs} variant="light" />
        </Fragment>

export default App