#!/bin/sh

#Affichage des brasseries
#echo '------------------------------------------------------------------------------'
#echo "Affichage des Brasseries"
#curl --noproxy "*" -H "Content-Type: application/json" -X GET http://localhost:3000/api/brewery
#echo
#echo '------------------------------------------------------------------------------'
#echo "Affichage de la premiÃ¨re brassserie"
#curl --noproxy "*" -H "Content-Type: application/json" -X GET http://localhost:3000/api/brewery/1
#echo
#echo '------------------------------------------------------------------------------'
#echo "Affichage d'une brewery inexistante"
#curl --noproxy "*" -H "Content-Type: application/json" -X GET http://localhost:3000/api/brewery/12234
#echo
echo '------------------------------------------------------------------------------'
body='{"id":1425,"breweries":"Demo","address1":"ouin","address2":"","city":"Nantes","state":"Loire Atlantique","code":"44000","country":"France","phone":"0011223344","website":"perdu.com","filepath":"","descript":"Très bonne brasserie","last_mod":1,"coordinates":""}'
echo "Creation de la brasserie $body"
curl --noproxy "*" -H "Content-Type: application/json"  -X POST -d $body http://localhost:3000/api/brewery/
echo
#echo '------------------------------------------------------------------------------'
#body='{"id":12234,"breweries":"Demo","adresse1":"ouin","adresse2":"","city":"Nantes","state":"LoireAtlantique",
#"country":"France","phone":"0011223344","website":"perdu.com","filepath":"jenesaispas","descript":"Trèsbonnebrasserie","lastMod":"2020-03-18","coordinates":""}'
#echo "Creation d'un double la Brasserie $body"
#curl --noproxy "*" -H "Content-Type: application/json"  -X POST -d $body http://localhost:3000/api/brewery/
#echo
#echo '------------------------------------------------------------------------------'
#body='{"id":12234,"breweries":"DemoUpdate","adresse1":"ouin","adresse2":"","city":"Nantes","state":"LoireAtlantique",
#"country":"France","phone":"0011223344","website":"perdu.com","filepath":"jenesaispas","descript":"Trèsbonnebrasserie","lastMod":"2020-03-18","coordinates":""}'
#echo "Mise Ã  jour de la brasserie 100 : $body"
#curl --noproxy "*" -H "Content-Type: application/json"  -X PUT -d $body http://localhost:3000/api/brewery/100
#echo
#echo '------------------------------------------------------------------------------'
#echo "Affichage de la Brasserie 100"
#curl --noproxy "*" -H "Content-Type: application/json" -X GET http://localhost:3000/api/brewery/100
#echo
#echo '------------------------------------------------------------------------------'
#echo "Suppression de la Brasserie 100"
#curl --noproxy "*" -H "Content-Type: application/json" -X DELETE http://localhost:3000/api/brewery/100
#echo
#echo
#echo '------------------------------------------------------------------------------'
#echo "Suppression d'une Brasserie inexistante 1234"
#curl --noproxy "*" -H "Content-Type: application/json" -X DELETE http://localhost:3000/api/brewery/1234
#echo
#echo '------------------------------------------------------------------------------'
#echo "Affichage de la Brasserie 100"
#curl --noproxy "*" -H "Content-Type: application/json" -X GET http://localhost:3000/api/brewery/100
#echo

