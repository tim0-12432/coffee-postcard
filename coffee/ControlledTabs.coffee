`
import React, { Component } from 'react'
import Tabs from 'react-bootstrap/Tabs'
import Tab from 'react-bootstrap/Tab'
import QueryTab from './tabs/QueryTab'
import HeadersTab from './tabs/HeadersTab'
import BodyTab from './tabs/BodyTab'
`

class ControlledTabs extends Component
    constructor: (props) ->
        super props
        @state =
            selected: "params"

    render: ->
        <Tabs
            id="controlled-tab-example"
            activeKey={@state.selected}
            onSelect={(k) => @setState(selected: k)}
        >
            <Tab eventKey="params" title="Query Params">
                <QueryTab
                    params={@props.params}
                    handleChangeParams={@props.handleChangeParams}
                    handleRemoveParams={@props.handleRemoveParams}
                />
            </Tab>
            <Tab eventKey="headers" title="Headers">
                <HeadersTab
                    headers={@props.headers}
                    handleChangeHeaders={@props.handleChangeHeaders}
                    handleRemoveHeaders={@props.handleRemoveHeaders}
                />
            </Tab>
            <Tab eventKey="json" title="JSON">
                <BodyTab />
            </Tab>
        </Tabs>

export default ControlledTabs