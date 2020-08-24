# NOTE: must run PowerShell as administrator
# NOTE: must run ‘Set-ExecutionPolicy Unrestricted’ before executing this script

chocolatey feature enable -n allowGlobalConfirmation

choco install visualstudio2019professional --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"
choco install resharper
choco install vscode

choco install nodejs-lts
choco install git

#choco install sql-server-express
#choco install sql-server-management-studio

choco install microsoft-teams
#choco install postman