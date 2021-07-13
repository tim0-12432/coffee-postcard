`
import React, { Component } from 'react'
import { ThemeProvider, initializeIcons } from "@fluentui/react"
import Formular from "./Formular"
import theme from "./theme"
`

initializeIcons()

class App extends Component
  render: ->
    <ThemeProvider theme={ theme }>
      <Formular />
    </ThemeProvider>

export default App