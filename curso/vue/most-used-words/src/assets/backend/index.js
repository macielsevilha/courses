const { ipcMain } = require('electron')

const pathsToRows = require('./pathToRows')
const prepareData = require('./prepareData')

ipcMain.on('process-subtitles', (event, paths) => {
  
  pathsToRows(paths)
    .then(rows => prepareData(rows))
    .then(words => console.log(words))
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