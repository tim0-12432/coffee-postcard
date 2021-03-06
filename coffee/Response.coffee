`
import React, { Component, Fragment } from 'react'
import Card from 'react-bootstrap/Card'
import ControlledResponseTabs from './tabs/ControlledResponseTabs'
import { numToBytes, getPackageSize } from './additional/Conversion'
`

class Response extends Component
    render: ->
        {response} = @props
        headers = []
        if (response and Object.keys(response).length != 0)
            for header in Object.keys(response.headers)
                headers.push({key: header, value: response.headers[header]})
        return <div className="mt-5">
            {
                if response and Object.keys(response).length != 0
                then <Fragment>
                    <Card className="mb-3">
                        <Card.Body>
                            <h3>Response</h3>
                            <div className="d-flex my-2">
                                <div className="me-3">
                                    Status: {response.status}
                                </div>
                                <div className="me-3">
                                    Time: {response.customData?.time}ms
                                </div>
                                <div className="me-3">
                                    Size: {numToBytes(getPackageSize(response))}
                                </div>
                            </div>
                        </Card.Body>
                    </Card>
                    <ControlledResponseTabs
                        headers={headers}
                        body={response.data}
                    />
                </Fragment>
                else null
            }
        </div>

export default Response