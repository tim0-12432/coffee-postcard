`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
import DataKeyValueTemplate from './templates/DataKeyValueTemplate'
import { infoAlert } from '../additional/Popups'
`

class HeadersTab extends Component
    constructor: (props) ->
        super props
        @state =
            headers: [
                {key: "User-Agent", value: "Coffee-Postcard"},
                {key: "Accept", value: "*/*"},
                {key: "Accept-Encoding", value: "gzip, deflate, br"},
                {key: "Connection", value: "keep-alive"},
                {key: "Content-Type", value: "application/json"}
            ]
        @handleChange = @handleChange.bind(@)
        @handleRemove = @handleRemove.bind(@)

    handleChange: (key, value, index) ->
        current = @state.headers
        current[index] = {key: key, value: value}
        @setState(headers: current)

    handleRemove: (index) ->
        if index < @state.headers.length
            current = @state.headers
            current.splice(index, 1)
            @setState(headers: current)
            infoAlert("Removing item form headers successful!")

    render: ->
        <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div>
                    {
                        <DataKeyValueTemplate
                            fields={@state.headers}
                            index={index}
                            key={"#{index}-header-key-value"}
                            handleChange={@handleChange}
                            handleRemove={@handleRemove}
                        /> for index in [0..@state.headers.length]
                    }
                </div>
            </TabPane>
        </TabContent>

export default HeadersTab