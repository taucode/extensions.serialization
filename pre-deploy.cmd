dotnet restore

dotnet build --configuration Debug
dotnet build --configuration Release

dotnet test -c Debug .\test\TauCode.Extensions.Serialization.Tests\TauCode.Extensions.Serialization.Tests.csproj
dotnet test -c Release .\test\TauCode.Extensions.Serialization.Tests\TauCode.Extensions.Serialization.Tests.csproj

nuget pack nuget\TauCode.Extensions.Serialization.nuspec