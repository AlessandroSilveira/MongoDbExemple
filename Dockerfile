FROM microsoft/aspnetcore-build:1.0-1.1
WORKDIR /release
ENV ASPNETCORE_URLS http://*:5000
EXPOSE 5000
COPY . /release
RUN dotnet restore
CMD dotnet run
