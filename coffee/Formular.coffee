`
import React, { Component } from 'react'
import { Stack, ComboBox, SelectableOptionMenuItemType, TextField, PrimaryButton } from '@fluentui/react'
import TabSystem from "./TabSystem"
`

stack1Props =
  tokens: { childrenGap: 15 }
  styles: { root: { alignItems: "center" } }

stack2Props =
  tokens: { childrenGap: 15 }
  styles: { root: { alignItems: "flex-end" } }

dropdownStyles =
    root:
        width: 120
textfieldStyles =
    root:
        width: 300

dropdownControlledOptions = [
  { key: 'method', text: 'HTTP Method', itemType: SelectableOptionMenuItemType.Header },
  { key: 'get', text: 'GET' },
  { key: 'post', text: 'POST' },
  { key: 'put', text: 'PUT' },
  { key: 'delete', text: 'DELETE' },
  { key: 'options', text: 'OPTIONS' }
]

class Formular extends Component
    constructor: (props) ->
        super props
        @state =
            selected: dropdownControlledOptions[1].key
            label: ["Method", "URL"]
            placeholder: ["Select an option", "https://localhost:3000"]
        @handleChange = @handleChange.bind(@)

    handleChange: (event) ->
        @setState(selected: event.target.value)

    render: ->
        <Stack {...stack1Props}>
            <Stack horizontal {...stack2Props}>
                <ComboBox
                    label={ @state.label[0] }
                    selectedKey={ @state.selected }
                    placeholder={ @state.placeholder[0] }
                    onChange={ @handleChange }
                    options={ dropdownControlledOptions }
                    styles={ dropdownStyles }
                />
                <TextField
                    label={ @state.label[1] }
                    placeholder={ @state.placeholder[1] }
                    styles={ textfieldStyles }
                />
                <PrimaryButton iconProps={ iconName: "Send" } text="Send" />
            </Stack>
            <TabSystem />
        </Stack>

export default Formular