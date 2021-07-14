`
import React, { Component } from 'react'
import Card from 'react-bootstrap/Card'
`

class Response extends Component
    render: ->
        <div className="mt-5">
            <Card>
                <Card.Body>
                    <h3>Response</h3>
                    <div className="d-flex my-2">
                        <div className="me-3">
                            Status:
                        </div>
                        <div className="me-3">
                            Time:
                        </div>
                        <div className="me-3">
                            Size:
                        </div>
                    </div>
                </Card.Body>
            </Card>
        </div>

export default Response