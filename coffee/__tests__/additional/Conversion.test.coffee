`
import assert from 'assert'
import { numToBytes, getPackageSize } from './../../additional/Conversion'
`

describe 'Conversion', ->
    describe 'numToBytes', ->
        it 'should return 651B', ->
            value = 651
            assert.equal(numToBytes(value), "#{value}.00B")

        it 'should return 651kB', ->
            value = 666624
            assert.equal(numToBytes(value), "651.00kB")

        it 'should return 651mB', ->
            value = 682622976
            assert.equal(numToBytes(value), "651.00mB")

        it 'should return 651GB', ->
            value = 699005927424
            assert.equal(numToBytes(value), "651.00GB")

        it 'should return 651TB', ->
            value = 715782069682176
            assert.equal(numToBytes(value), "651.00TB")

    describe 'getPackageSize', ->
        it 'should return 96 chars', ->
            value = {
                data: {
                    "test1": "testA",
                    "test2": "testB",
                    "test3": "testC",
                    "test4": "testD"
                },
                headers: {
                    "head1": "valA",
                    "head2": "valB"
                }
            }
            assert.equal(getPackageSize(value), 96)