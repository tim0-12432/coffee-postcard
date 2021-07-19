`
import assert from 'assert'
import moxios from 'moxios'
`

describe 'Array', ->
    describe '#indexOf()', ->
        it 'should return -1 when the value is not present', ->
            assert.equal([1, 2, 3].indexOf(4), -1)