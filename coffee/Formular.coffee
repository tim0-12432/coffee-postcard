`
import React, { Component } from 'react'
import Form from 'react-bootstrap/Form'
import InputGroup from 'react-bootstrap/InputGroup'
import Button from 'react-bootstrap/Button'
import ControlledTabs from './ControlledTabs'
`

options = [
    "GET",
    "POST",
    "DELETE",
    "PUT",
    "PATCH",
    "OPTION"
]

class Formular extends Component
    render: ->
        <form>
            <InputGroup  className="mb-4">
                <select className="form-select flex-grow-0 w-auto" >
                    {
                        <option
                            key={option}
                            value={option}
                        >
                            {option}
                        </option> for option in options
                    }
                </select>
                <Form.Control
                    required
                    type="url"
                    placeholder="https://www.example.com"
                />
                <Button
                    variant="primary"
                    type="submit"
                >
                    Send
                </Button>
            </InputGroup>
            <ControlledTabs />
        </form>

export default Formular