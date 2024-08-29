# Etapa 1: Construcción
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY . .
RUN dotnet restore "Tutorial02.csproj"
RUN dotnet build "Tutorial02.csproj" -c Release -o /app/build
RUN dotnet publish "Tutorial02.csproj" -c Release -o /app/publish

# Etapa 2: Runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "Tutorial02.dll", "--urls", "http://0.0.0.0:5000"]

