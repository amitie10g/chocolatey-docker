# escape=`
ARG WIN_VER=ltsc2022
FROM mcr.microsoft.com/dotnet/framework/runtime:4.8-windowsservercore-${WIN_VER}

SHELL ["powershell", "-Command"]
RUN iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1')); `
    Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

RUN choco install -y choco-cleaner
