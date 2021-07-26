`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
import DataKeyValueTemplate from './templates/DataKeyValueTemplate'
`

class QueryTab extends Component
    render: ->
        <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div>
                    {
                        <DataKeyValueTemplate
                            fields={@props.params}
                            index={index}
                            key={"#{index}-header-key-value"}
                            handleChange={@props.handleChangeParams}
                            handleRemove={@props.handleRemoveParams}
                            removable={@props.editable}
                        /> for index in [0..@props.params.length]
                    }
                </div>
            </TabPane>
        </TabContent>

export default QueryTab