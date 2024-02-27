dotnet pack --nologo -c Release -o pack\ ZedGraph\ZedGraph.csproj
dotnet pack --nologo -c Release -o pack\ ZedGraph.Winforms\ZedGraph.Winforms.csproj

dotnet nuget push --source "ElanNuget" --api-key az --skip-duplicate pack\*.nupkg
pause