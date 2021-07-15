`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
import DataKeyValueTemplate from './templates/DataKeyValueTemplate'
`

class HeadersTab extends Component
    render: ->
        intervall = if @props.editable then [0..@props.headers.length] else [0..@props.headers.length - 1]
        return <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div>
                    {
                        <DataKeyValueTemplate
                            fields={@props.headers}
                            index={index}
                            key={"#{index}-header-key-value"}
                            handleChange={if @props.editable then @props.handleChangeHeaders else () -> {}}
                            handleRemove={if @props.editable then @props.handleRemoveHeaders else () -> {}}
                            removable={@props.editable}
                        /> for index in intervall
                    }
                </div>
            </TabPane>
        </TabContent>

export default HeadersTab