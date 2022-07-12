
module.exports = rows => {
    return new Promise((resolver, reject) => {
        try {
            const words = rows
              .filter(filterValidRow)
              .map(removePunctuation)
              .map(removeTags)
              .reduce(margeRows)
              .split(' ')
              .map(word => word.toLowerCase())
              .map(word => word.replace('"', ''))
             
               resolver(words)    
        } catch (e) {
            reject(e)
        }
    }) 
}

function filterValidRow(row) {
    const notNumber = !parseInt(row.trim())
    const notEmply = !!row.trim()
    const notInterval = !row.includes('-->')
    return notNumber && notEmply && notInterval
}

const removePunctuation = row => row.replace(/[,?!.-]/g, '')
const removeTags = row => row.replace(/(<^>]*)>/ig,'').trim()
const margeRows = (fullText, row) => `${fullText} ${row}`