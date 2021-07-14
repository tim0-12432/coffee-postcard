`
import React, { Component, Fragment } from 'react'
import TopBar from './TopBar'
import Formular from './Formular'
`

class App extends Component
    render: ->
        <Fragment>
            <TopBar />
            <div className="p-4">
                <Formular />
            </div>
        </Fragment>

export default App