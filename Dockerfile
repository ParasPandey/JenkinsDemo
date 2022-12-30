FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
# set up network
ENV ASPNETCORE_URLS http://+:5000
WORKDIR /app
EXPOSE 5000
COPY . /app

ENTRYPOINT ["dotnet", "JenkinsWebApplicationDemo/obj/Docker/publish/JenkinsWebApplicationDemo.dll"]