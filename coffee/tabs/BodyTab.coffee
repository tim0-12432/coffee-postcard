`
import React, { Component } from 'react'
import TabContent from 'react-bootstrap/TabContent'
import TabPane from 'react-bootstrap/TabPane'
import { Controlled as CodeMirror } from 'react-codemirror2'
require("codemirror/mode/javascript/javascript")
`

class BodyTab extends Component
    constructor: (props) ->
        super props
        @handleChange = @handleChange.bind(@)

    handleChange: (editor, data, value) ->
        if (@props.editable)
            @props.handleChangeBody(value)

    render: ->
        options = {
            mode: {
                name: "javascript",
                json: true,
                statementIndent: 2
            },
            material: "material",
            lineNumbers: true,
            lineWrapping: true,
            tabSize: 2
        }
        return <TabContent className="p-3 border-top-0 border">
            <TabPane className="fade show active">
                <div
                    className="overflow-auto"
                    style={{maxHeight: "200px"}}
                >
                    <CodeMirror
                        value={@props.body}
                        options={options}
                        onBeforeChange={@handleChange}
                        onChange={@handleChange}
                    />
                </div>
            </TabPane>
        </TabContent>

export default BodyTab