`
import axios from 'axios'
`

export request = (url, method, params, headers) ->
    axios({
        url: url,
        method: method,
        params: keyValuePairsToObject(params),
        headers: keyValuePairsToObject(headers)
    }).then((response) ->
        return response
    )

keyValuePairsToObject = (pairs) ->
    return [...pairs].reduce((data, pair) ->
        if pair.key == ''
            return data
        else
            return {...data, [pair.key]: pair.value}
    , {})