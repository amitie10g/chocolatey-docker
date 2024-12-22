## Chocolatey on Windows Server Core container
<p align="center">
<img src="https://github.com/Amitie10g/chocolatey-docker/assets/2096562/de3b0df5-2d3d-4275-a85d-dc0cc442c5e8" alt="Chocolatey logo">
</p>

This container contains the [Chocolatey](https://chocolatey.org/) package manager, intended to be used on images where packages from Chocolatey repo are needed. This uses the [.NET Framework Runtime](https://hub.docker.com/_/microsoft-dotnet-framework-runtime/) 4.8 base image, using ltsc2025 (not available yet), ltsc2022 (latest), ltsc2019 and ltsc2016

### Usage
This example will install [Vistal Studio 2022 Build Tools](https://community.chocolatey.org/packages/visualstudio2022buildtools)
    FROM amitie10g/chocolatey:ltsc2022
    
    SHELL ["powershell", "-Command"]
    RUN choco install -y visualstudio2022buildtools; choco-cleaner

    ENTRYPOINT ["C:\\Program Files (x86)\\Microsoft Visual Studio\\2022\\BuildTools\\Common7\\Tools\\VsDevCmd.bat", "&&", "powershell.exe", "-NoLogo", "-ExecutionPolicy", "Bypass"]

### Licensing
* This container image contains the **Chocolatey Open Source edition**, licensed under the **[Apache License](https://github.com/chocolatey/choco/blob/master/LICENSE)**
* The **Windows**-based container image usages are subjected to the **[Microsoft EULA](https://docs.microsoft.com/en-us/virtualization/windowscontainers/images-eula)**
* The contents of this repository are released into the Public domain (the Unlicense)
