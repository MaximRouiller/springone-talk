FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY *.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY . ./
RUN dotnet publish -c Release -o out
# RUN ls /app/out

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "WebApp1.dll"]



# FROM microsoft/dotnet:2.1-runtime AS base
# WORKDIR /app

# FROM microsoft/dotnet:2.1-sdk AS build
# WORKDIR /src
# COPY WebApp1.csproj /
# RUN dotnet restore WebApp1.csproj
# COPY . .
# WORKDIR /src/WebApp1
# RUN dotnet build WebApp1.csproj -c Release -o /app

# FROM build AS publish
# RUN dotnet publish WebApp1.csproj -c Release -o /app

# FROM base AS final
# WORKDIR /app
# COPY --from=publish /app .
# ENTRYPOINT ["dotnet", "WebApp1.dll"]
