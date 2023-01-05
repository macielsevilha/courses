
var largura, altura

function ajustaTamanhoPalcoJogo() {
     largura = window.innerWidth
     altura = window.innerHeight
}

ajustaTamanhoPalcoJogo()

function posicaoRandomica() {
     var posicaoX = Math.floor(Math.random() * largura) - 100
     var posicaoY = Math.floor(Math.random() * altura) - 100
     
     posicaoX = posicaoX < 0 ? 0 : posicaoX
     posicaoY = posicaoY < 0 ? 0 : posicaoY
     
     var mosquito = document.createElement('img')
     mosquito.src = './imagens/mosca.png'
     mosquito.className = 'mosquito1'
     mosquito.style.left = posicaoX + 'px'
     mosquito.style.top = posicaoY + 'px'
     mosquito.style.position = 'absolute'
     
     document.body.appendChild(mosquito)
}

