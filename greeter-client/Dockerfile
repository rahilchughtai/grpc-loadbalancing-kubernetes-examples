# Use the latest .NET Core SDK as the build environment
FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /app

# Copy the project file and restore dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy the remaining files and build the project
COPY . ./
RUN dotnet publish -o out -c Release --framework net5.0 GreeterClient.csproj


# Use the latest .NET Core runtime as the runtime environment
FROM mcr.microsoft.com/dotnet/runtime:5.0 AS runtime
WORKDIR /app

# Copy the compiled output from the build environment to the runtime environment
COPY --from=build /app/out .

# Start the application
ENTRYPOINT ["dotnet", "GreeterClient.dll"]
