
export numToBytes = (number) ->
     suffix = "B"
     factor = 1024
     options = ["", "k", "m", "G", "T", "P"]
     for option in options
          if (number < factor)
               return "#{number.toFixed(2)}#{option}#{suffix}"
          number /= factor

export getPackageSize = (response) ->
     return JSON.stringify(response.data).length + JSON.stringify(response.headers).length