function jwt_decode
    if type -q jq
        echo $argv | jq -R 'split(".") | .[1] | @base64d | fromjson'
    else
        echo "Can't decode. Please install https://stedolan.github.io/jq/ first"
    end
end