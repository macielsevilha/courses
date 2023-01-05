
var largura, altura

function ajustaTamanhoPalcoJogo() {
     largura = window.innerWidth
     altura = window.innerHeight
}

ajustaTamanhoPalcoJogo()

function posicaoRandomica() {

     // remover o mosquito anterior caso exista
     if(    document.getElementById('mosquito')) {
          document.getElementById('mosquito').remove()
     }
 

     var posicaoX = Math.floor(Math.random() * largura) - 200
     var posicaoY = Math.floor(Math.random() * altura) - 200

     posicaoX = posicaoX < 0 ? 0 : posicaoX
     posicaoY = posicaoY < 0 ? 0 : posicaoY

     var mosquito = document.createElement('img')
     mosquito.src = './imagens/mosca.png'
     mosquito.className = tamanhoAleatorio() + " " + ladoAleatorio()
     mosquito.style.left = posicaoX + 'px'
     mosquito.style.top = posicaoY + 'px'
     mosquito.style.position = 'absolute'
     mosquito.id = 'mosquito'
     
     document.body.appendChild(mosquito)
}

function tamanhoAleatorio() {
     var classe = Math.floor(Math.random() * 3)

     switch (classe) {
          case 0:
               return 'mosquito1'
          case 1:
               return 'mosquito2'
          case 2:
               return 'mosquito3'
     }
}

function ladoAleatorio() {
    var classe = Math.floor(Math.random() * 2)

    switch (classe) {
     case 0:
        return 'ladoA'  
     case 1:
        return 'ladoB'
    }
}