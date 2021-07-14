`
import React, { Component, Fragment } from 'react'
import TopBar from './TopBar'
import Formular from './Formular'
import Response from './Response'
`

class App extends Component
    render: ->
        <Fragment>
            <TopBar />
            <div className="p-4">
                <Formular handleSubmit={@handleSubmit} />
                <Response />
            </div>
        </Fragment>

export default App