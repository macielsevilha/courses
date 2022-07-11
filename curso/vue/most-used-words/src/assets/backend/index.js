const { ipcMain } = require('electron')

ipcMain.on('process-subtitles', (event, paths) => {
  console.log(paths)

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