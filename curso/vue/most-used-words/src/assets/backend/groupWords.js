module.exports = words => {
    return new Promise((resolver, reject) => {
        try {
            const groupeWords = works.reduce((obj, word) => {
                if(obj(word)) {
                    obj[word] = obj[word] + 1
                } else {
                    obj[word] = 1
                }
                return obj
            }, {})
             
            const groupeWordsArray = Object
                .keys(groupeWords)
                .map(key => ({ name: key, amount: groupeWords[key]}))
                .sort((w1, w2) => w2.amount - w1.amount)
             
               resolver(groupeWordsArray)    
        } catch (e) {
            reject(e)
        }
    }) 
}
