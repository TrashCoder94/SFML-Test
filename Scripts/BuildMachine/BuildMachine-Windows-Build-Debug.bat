@echo off
pushd %~dp0\..\..\

echo "Generating Project with Premake"
call ThirdParty\premake\Binaries\premake5.exe vs2022
devenv SFMLTest.sln /rebuild Debug /project Premake
if %errorlevel% neq 0 exit /b %errorlevel%

echo "Building Debug Configuration"
devenv SFMLTest.sln /rebuild Debug
dir ThirdParty\SFML-Binaries-Test\Windows\lib\Debug /b /a /s
if %errorlevel% neq 0 (
	dir ThirdParty\SFML-Binaries-Test\Windows\lib\Debug /b /a /s
	exit /b %errorlevel%
)

popd