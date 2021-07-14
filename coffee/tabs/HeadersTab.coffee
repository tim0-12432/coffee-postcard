`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
import DataKeyValueTemplate from './templates/DataKeyValueTemplate'
`

class HeadersTab extends Component
    render: ->
        <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div>
                    {
                        <DataKeyValueTemplate
                            fields={@props.headers}
                            index={index}
                            key={"#{index}-header-key-value"}
                            handleChange={@props.handleChangeHeaders}
                            handleRemove={@props.handleRemoveHeaders}
                        /> for index in [0..@props.headers.length]
                    }
                </div>
            </TabPane>
        </TabContent>

export default HeadersTab