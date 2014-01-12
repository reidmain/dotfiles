function grepr() { grep -r "$@" . ; }

function pcurl() { curl "$@" | python -mjson.tool ; }
