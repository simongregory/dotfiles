# Install into $HOME\Documents\WindowsPowerShell

Set-Alias g git
Set-Alias n npm

function ns {npm start}
function ncb {npm run clean; npm run build}
function nr {Param($task) npm run $task}

function nip {cd $HOME\code\nip}
function home {cd $HOME}
