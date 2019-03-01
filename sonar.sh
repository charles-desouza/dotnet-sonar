#!/bin/bash

cd src
echo installing required packages
dotnet tool install --global dotnet-sonarscanner


dotnet sonarscanner begin //k:mango-downloader //d:sonar.host.url=http:\\\\sonar.springernature.com:9000 //d:sonar.login=admin //d:sonar.password=admin
dotnet build
dotnet sonarscanner end //d:sonar.login=admin //d:sonar.password=admin