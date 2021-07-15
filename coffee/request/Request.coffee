`
import axios from 'axios'
import { errorAlert } from './../additional/Popups'
`

axios.interceptors.request.use((req) ->
    req.customData = req.customData || {}
    req.customData.startTime = new Date().getTime()
    return req
)

updateEndTime = (response) ->
    response.customData = response.customData || {}
    response.customData.time = new Date().getTime() - response.config.customData.startTime
    return response

axios.interceptors.response.use(
    (r) -> updateEndTime(r)
    (e) ->
        Promise.reject(updateEndTime(e.response))
)

export request = (url, method, params, headers, body) ->
    data = null
    try
        data = JSON.parse(body || null)
    catch e
        errorAlert("Body is malformed!")
        return
    axios({
        url: url,
        method: method,
        params: keyValuePairsToObject(params),
        headers: keyValuePairsToObject(headers),
        data
    })
    .catch((e) -> e)
    .then((response) ->
        return response
    )

keyValuePairsToObject = (pairs) ->
    return [...pairs].reduce((data, pair) ->
        if pair.key == ''
            return data
        else
            return {...data, [pair.key]: pair.value}
    , {})