FROM mcr.microsoft.com/dotnet/sdk:5.0-alpine3.14
RUN dotnet tool install dbup-cli --tool-path /bin --version 1.6.5
WORKDIR /app
COPY . .
ENTRYPOINT [ "dbup", "upgrade"]