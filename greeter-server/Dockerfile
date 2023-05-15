FROM mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR /app

ADD . /app

RUN dotnet publish -o out -c Release -f netcoreapp2.0 GreeterServer.csproj

ENTRYPOINT ["dotnet", "exec", "/app/out/GreeterServer.dll"]
