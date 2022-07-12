const { ipcMain } = require('electron')

const pathsToRows = require('./pathToRows')

ipcMain.on('process-subtitles', (event, paths) => {
  
  pathsToRows(paths)
    .then(rows => console.log(rows))
    .then(() => {
      event.reply('process-subtitles', [
        { name: 'my', amount: 1223},
        { name: 'his', amount: 900},
        { name: 'hir', amount: 590},
        { name: 'its', amount: 1223},
        { name: 'our', amount: 700},
        { name: 'your', amount: 560},
        { name: 'their', amount: 12},
      ])
    })

})