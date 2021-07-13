`
import React, { Component } from 'react'
import Form from 'react-bootstrap/Form'
import InputGroup from 'react-bootstrap/InputGroup'
import Button from 'react-bootstrap/Button'
`

class DataKeyValueTemplate extends Component
    render: ->
        <InputGroup  className="mb-4">
                <Form.Control
                    type="text"
                    placeholder="Key"
                    value={if @props.fields[@props.index]?.key then @props.fields[@props.index].key else ""}
                    onChange={(e) => @props.handleChange(
                        e.target.value,
                        if @props.fields[@props.index]?.value then @props.fields[@props.index].value else "",
                        @props.index)}
                />
                <Form.Control
                    type="text"
                    placeholder="Value"
                    value={if @props.fields[@props.index]?.value then @props.fields[@props.index].value else ""}
                    onChange={(e) => @props.handleChange(
                        if @props.fields[@props.index]?.key then @props.fields[@props.index].key else "",
                        e.target.value,
                        @props.index)}
                />
                <Button
                    variant="outline-danger"
                    onClick={() => @props.handleRemove(@props.index)}
                >
                    Remove
                </Button>
            </InputGroup>

export default DataKeyValueTemplate