FROM microsoft/dotnet:2.1-sdk AS build-env
WORKDIR /dotnet-example-api

# Copiar csproj e restaurar dependencias
COPY dotnet-example-api/*.csproj ./
RUN dotnet restore

# Build da aplicacao
COPY . ./
RUN dotnet publish -c Release -o out

# Build da imagem
FROM microsoft/dotnet:2.1-aspnetcore-runtime
WORKDIR /dotnet-example-api
COPY --from=build-env ./dotnet-example-api/dotnet-example-api/out/ .
ENTRYPOINT ["dotnet", "dotnet-example-api.dll"]
