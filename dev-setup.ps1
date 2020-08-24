# NOTE: must run PowerShell as administrator
# NOTE: must run ‘Set-ExecutionPolicy Unrestricted’ before executing this script

chocolatey feature enable -n allowGlobalConfirmation

choco install visualstudio2019professional --package-parameters "--allWorkloads --includeRecommended --includeOptional --passive --locale en-US"
choco install resharper
choco install vscode

choco install nodejs-lts
choco install git
choco install gulp-cli
choco install azure-cli
choco install docker-desktop -y

#choco install sql-server-express
#choco install sql-server-management-studio

choco install bitdefenderavfree
choco install microsoft-teams
#choco install postman

MD C:\Projects
CD C:\Projects
git clone https://simplot-digital.visualstudio.com/Sitecore_Projects/_git/simplot-sitecore c:\projects\SimplotSc
CD C:/Projects/SimplotSc
NPM install
gulp publish-ui

npm config set `@sxa:registry https://sitecore.myget.org/F/sc-npm-packages/npm/
npm i -g `@sxa/CLI

# Run: docker ps --format '{{.ID}}  {{.Names}}'
# Copy: docker exec -it ID powershell
# Copy the ID for the CM container, paste in ID, run it.
# Run: CD c:\inetpub\wwwroot\App_Config\Include\z.Feature.Overrides
# Run: REN z.spe.sync.enabler.gulp.config.disabled z.spe.sync.enabler.gulp.config
# Run: Exit