#!/bin/bash

gnerator_url="https://templates-portainer.ibaraki.app/?templates="

encoded_list=$(base64 -i template-list.json)

url="$gnerator_url$encoded_list"

curl $url | jq '.' > template.json

echo $url 

curl 'https://templates-portainer.ibaraki.app/' | jq '.' > default.json

