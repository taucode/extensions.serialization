dotnet restore

dotnet build TauCode.Extensions.Serialization.sln -c Debug
dotnet build TauCode.Extensions.Serialization.sln -c Release

dotnet test TauCode.Extensions.Serialization.sln -c Debug
dotnet test TauCode.Extensions.Serialization.sln -c Release

nuget pack nuget\TauCode.Extensions.Serialization.nuspec