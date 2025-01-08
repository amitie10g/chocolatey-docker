# escape=`
ARG BASE_IMAGE=dotnet/runtime
ARG DOTNET_VERSION=9.0
ARG WIN_VER=ltsc2022
FROM mcr.microsoft.com/${BASE_IMAGE}:${DOTNET_VERSION}-windowsservercore-${WIN_VER}

SHELL ["powershell", "-Command"]
RUN [Net.ServicePointManager]::SecurityProtocol = [Net.ServicePointManager]::SecurityProtocol -bor [Net.SecurityProtocolType]::Tls12; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); `
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

RUN choco install -y choco-cleaner
