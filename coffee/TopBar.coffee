`
import React, { Component } from 'react'
import Navbar from 'react-bootstrap/Navbar'
`

class TopBar extends Component
    render: ->
        <Navbar bg="primary" variant="dark" expand="lg" className="px-4">
            <Navbar.Brand href="#">Coffee Postcard</Navbar.Brand>
        </Navbar>

export default TopBar