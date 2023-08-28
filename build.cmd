@echo Off

echo %~nx0: Building...
dotnet build src/ --configuration Release --nologo || goto :error

echo %~nx0: Testing...
dotnet test src/ --configuration Release --no-build --nologo %1 %2 || goto :error

goto :EOF
:error
exit /b %errorlevel%
