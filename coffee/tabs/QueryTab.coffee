`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
import DataKeyValueTemplate from './templates/DataKeyValueTemplate'
`

class QueryTab extends Component
    constructor: (props) ->
        super props
        @state =
            params: []
        @handleChange = @handleChange.bind(@)
        @handleRemove = @handleRemove.bind(@)

    handleChange: (key, value, index) ->
        current = @state.params
        current[index] = {key: key, value: value}
        @setState(params: current)

    handleRemove: (index) ->
        if index < @state.params.length
            current = @state.params
            current.splice(index, 1)
            @setState(params: current)
    
    render: ->
        <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div>
                    {
                        <DataKeyValueTemplate
                            fields={@state.params}
                            index={index}
                            key={"#{index}-header-key-value"}
                            handleChange={@handleChange}
                            handleRemove={@handleRemove}
                        /> for index in [0..@state.params.length]
                    }
                </div>
            </TabPane>
        </TabContent>

export default QueryTab