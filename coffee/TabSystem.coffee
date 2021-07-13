`
import React, { Component } from 'react'
import { Stack, CommandBar, DetailsList, DetailsListLayoutMode } from '@fluentui/react'
`

stackProps =
  tokens: { childrenGap: 15 }
  styles: { root: { width: 500, alignItems: "center" } }

menuItems = [
  {
    key: 'params',
    text: 'Params',
    iconProps: { iconName: 'QueryList' },
    onClick: () => console.log('p')
  },
  {
    key: 'header',
    text: 'Header',
    iconProps: { iconName: 'Header' },
    onClick: () => console.log('h')
  },
  {
    key: 'body',
    text: 'Body',
    iconProps: { iconName: 'Upload' },
    onClick: () => console.log('b')
  }
]
overflowItems = [
    {
        key: 'settings',
        text: 'Settings',
        iconProps: { iconName: 'Settings' },
        onClick: () => console.log('s')
    }
]
farItems = [
    {
        key: 'info',
        text: 'Information',
        iconProps: { iconName: 'Info' },
        iconOnly: true,
        onClick: () => console.log('i')
    }
]

class TabSystem extends Component
    constructor: (props) ->
        super props
        @state =
            columns: [
                {key: 'column1', name: 'Name', fieldName: 'name', minWidth: 100, maxWidth: 200, isResizable: true},
                {key: 'column2', name: 'Value', fieldName: 'value', minWidth: 100, maxWidth: 200, isResizable: true},
                {key: 'column3', name: 'Description', fieldName: 'description', minWidth: 100, maxWidth: 200, isResizable: true}
            ]
            params: [
                {key: 'row1', name: 'Name1', value: 'Value1', description: "blalblal"},
                {key: 'row2', name: 'Name2', value: 'Value2', description: "blalblal"},
                {key: 'row3', name: 'Name3', value: 'Value3', description: "blalblal"},
                {key: 'row4', name: 'Name4', value: 'Value4', description: "blalblal"}
            ]

    render: ->
        <Stack  {...stackProps}>
            <CommandBar
                style={{ width: "100%" }}
                items={ menuItems }
                overflowItems={ overflowItems }
                farItems={ farItems }
                ariaLabel="Use left and right arrow keys to navigate between commands"
            />
            <DetailsList
                style={{ width: "100%" }}
                items={ @state.params }
                columns={ @state.columns }
                setKey="set"
                layoutMode={DetailsListLayoutMode.justified}
                selection={this._selection}
                selectionPreservedOnEmptyClick={true}
                ariaLabelForSelectAllCheckbox="Toggle selection for all items"
                ariaLabelForSelectionColumn="Toggle selection"
                checkButtonAriaLabel="select row"
                onItemInvoked={this._onItemInvoked}
            />
        </Stack>

export default TabSystem