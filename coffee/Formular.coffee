`
import React, { Component } from 'react'
import Form from 'react-bootstrap/Form'
import InputGroup from 'react-bootstrap/InputGroup'
import Button from 'react-bootstrap/Button'
import ControlledTabs from './ControlledTabs'
import { infoAlert } from './additional/Popups'
import { request } from './request/Request'
`

options = [
    "GET",
    "POST",
    "DELETE",
    "PUT",
    "PATCH",
    "OPTION"
]

defaultHeaders = [
    {key: "User-Agent", value: "Coffee-Postcard"},
    {key: "Accept", value: "*/*"},
    {key: "Accept-Encoding", value: "gzip, deflate, br"},
    {key: "Connection", value: "keep-alive"},
    {key: "Content-Type", value: "application/json"}
]

class Formular extends Component
    constructor: (props) ->
        super props
        @state =
            url: "",
            method: "GET",
            params: [],
            headers: defaultHeaders
        @handleChangeUrl = @handleChangeUrl.bind(@)
        @handleChangeMethod = @handleChangeMethod.bind(@)
        @handleSubmit = @handleSubmit.bind(@)
        @handleChangeParams = @handleChangeParams.bind(@)
        @handleRemoveParams = @handleRemoveParams.bind(@)
        @handleChangeHeaders = @handleChangeHeaders.bind(@)
        @handleRemoveHeaders = @handleRemoveHeaders.bind(@)

    handleChangeUrl: (e) ->
        @setState(url: e.target.value)

    handleChangeMethod: (e) ->
        @setState(method: e.target.value)

    handleSubmit: () ->
        res = request(@state.url, @state.method, @state.params, @state.headers)
        console.log(res)

    handleChangeParams: (key, value, index) ->
        current = @state.params
        current[index] = {key: key, value: value}
        @setState(params: current)

    handleRemoveParams: (index) ->
        if index < @state.params.length
            current = @state.params
            current.splice(index, 1)
            @setState(params: current)
            infoAlert("Removing item from params successful!")

    handleChangeHeaders: (key, value, index) ->
        current = @state.headers
        current[index] = {key: key, value: value}
        @setState(headers: current)

    handleRemoveHeaders: (index) ->
        if index < @state.headers.length
            current = @state.headers
            current.splice(index, 1)
            @setState(headers: current)
            infoAlert("Removing item from headers successful!")

    render: ->
        <form onSubmit=(@handleSubmit)>
            <InputGroup  className="mb-4">
                <select
                    className="form-select flex-grow-0 w-auto"
                    value={@state.method}
                    onChange={@handleChangeMethod}
                >
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
                    onChange={@handleChangeUrl}
                    value={@state.url}
                />
                <Button
                    variant="primary"
                    type="submit"
                >
                    Send
                </Button>
            </InputGroup>
            <ControlledTabs
                params={@state.params}
                handleChangeParams={@handleChangeParams}
                handleRemoveParams={@handleRemoveParams}
                headers={@state.headers}
                handleChangeHeaders={@handleChangeHeaders}
                handleRemoveHeaders={@handleRemoveHeaders}
            />
        </form>

export default Formular