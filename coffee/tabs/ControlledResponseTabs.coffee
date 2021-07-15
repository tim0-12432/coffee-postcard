`
import React, { Component } from 'react'
import Tabs from 'react-bootstrap/Tabs'
import Tab from 'react-bootstrap/Tab'
import QueryTab from './QueryTab'
import HeadersTab from './HeadersTab'
import BodyTab from './BodyTab'
`

class ControlledResponseTabs extends Component
    constructor: (props) ->
        super props
        @state =
            selected: "json"

    render: ->
        <Tabs
            id="controlled-tab-example"
            activeKey={@state.selected}
            onSelect={(k) => @setState(selected: k)}
        >
            <Tab eventKey="json" title="JSON">
                <BodyTab
                    body={JSON.stringify(@props.body, null, 2)}
                    editable={false}
                />
            </Tab>
            <Tab eventKey="headers" title="Headers">
                <HeadersTab
                    headers={@props.headers}
                    editable={false}
                />
            </Tab>
        </Tabs>

export default ControlledResponseTabs