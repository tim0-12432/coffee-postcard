`
import axios from 'axios'
`

# axios.interceptors.request.use((req) -> 
#     req.customData = req.customData || {}
#     req.customData.startTime = new Date().getTime()
#     return req
# )

# axios.interceptors.response.use((updateEndTime, e) ->
#     Promise.reject(updateEndTime(e.response))
# )

# updateEndTime: (e) ->
#     console.log(e)

export request = (url, method, params, headers) ->
    axios({
        url: url,
        method: method,
        params: keyValuePairsToObject(params),
        headers: keyValuePairsToObject(headers)
    }).catch((e) => e.response).then((response) ->
        return response
    )

keyValuePairsToObject = (pairs) ->
    return [...pairs].reduce((data, pair) ->
        if pair.key == ''
            return data
        else
            return {...data, [pair.key]: pair.value}
    , {})