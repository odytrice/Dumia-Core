param([string] $task = "build")

if($task -eq "build"){
    Push-Location Dumia.Web
    bower install
    dotnet restore
    dotnet build
    Pop-Location
}

if($task -eq "test"){
    Push-Location Dumia.Test
    dotnet restore
    dotnet test
    Pop-Location
}

if($task -eq "run"){
    Push-Location Dumia.Web
    bower install
    dotnet restore
    dotnet run 
}