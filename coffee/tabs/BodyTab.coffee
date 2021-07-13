`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
`

class BodyTab extends Component
    constructor: (props) ->
        super props
        @state =
            body: ""

    render: ->
        <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div
                    className="overflow-auto"
                    style={{maxHeight: "200px"}}
                ></div>
            </TabPane>
        </TabContent>

export default BodyTab