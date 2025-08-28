
FROM mcr.microsoft.com/dotnet/runtime:5.0

WORKDIR /app
COPY ./luna-multiplayer/LMPServer ./

CMD ["dotnet", "Server.dll"]
