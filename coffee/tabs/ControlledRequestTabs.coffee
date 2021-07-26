`
import React, { Component } from 'react'
import Tabs from 'react-bootstrap/Tabs'
import Tab from 'react-bootstrap/Tab'
import QueryTab from './QueryTab'
import HeadersTab from './HeadersTab'
import BodyTab from './BodyTab'
`

class ControlledRequestTabs extends Component
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
                    editable={true}
                />
            </Tab>
            <Tab eventKey="headers" title="Headers">
                <HeadersTab
                    headers={@props.headers}
                    handleChangeHeaders={@props.handleChangeHeaders}
                    handleRemoveHeaders={@props.handleRemoveHeaders}
                    editable={true}
                />
            </Tab>
            <Tab eventKey="json" title="JSON">
                <BodyTab
                    body={@props.body}
                    handleChangeBody={@props.handleChangeBody}
                    editable={true}
                />
            </Tab>
        </Tabs>

export default ControlledRequestTabs