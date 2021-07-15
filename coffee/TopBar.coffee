`
import React, { Component } from 'react'
import Navbar from 'react-bootstrap/Navbar'
import Button from 'react-bootstrap/Button'
import logo from './resources/coffee-post-card.svg'
`

class TopBar extends Component
    render: ->
        <Navbar bg="primary" variant="dark" expand="lg" className="px-4">
            <Navbar.Brand>
                <span className="mr-3">
                    Coffee Postcard
                </span>
            </Navbar.Brand>
            <Navbar.Toggle />
            <Navbar.Collapse className="justify-content-end">
                <a href="https://github.com/tim0-12432/coffee-postcard" target="_blank">
                    <Button>
                        Github
                    </Button>
                </a>
            </Navbar.Collapse>
        </Navbar>

export default TopBar