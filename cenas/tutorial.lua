local composer = require('composer')

local cena = composer.newScene( )

function cena:create( event )
	local grupoTutorial = self.view

	local x, y = display.contentWidth, display.contentHeight
	local t = x + y / 2

	local fonte = native.newFont( 'recursos/fontes/font2.ttf' )

	local fonte2 = native.newFont( 'recursos/fontes/font3.ttf' )

	local degradeFundo = {
		type = 'gradient',
		color1 = { 238/255, 228/255, 215/255 },
		color2 = { 185/255, 153/255, 130/255 },
		direction = 'down'
	}


	local fundo = display.newRect( grupoTutorial, x*0.5,   y*0.5, x, y )
	fundo:setFillColor( degradeFundo )

	local fundoCirculo = display.newCircle( grupoTutorial, x*0.5, y*0.35, t*0.3 )
	fundoCirculo:setFillColor( 202/255, 170/255, 144/255 )

	local blocoTitulo = display.newImageRect( grupoTutorial, 'recursos/imagens/item2.png', t*0.45, t*0.12 )
	blocoTitulo.x = x*0.5 
	blocoTitulo.y = y*0.22

	local fitaTitulo = display.newImageRect( grupoTutorial, 'recursos/imagens/item4.png', t*0.45, t*0.20 )
	fitaTitulo.x = x*0.5 
	fitaTitulo.y = y*0.21

	local coroaTitulo = display.newImageRect( grupoTutorial, 'recursos/imagens/icon_Star.png', t*0.07, t*0.07 )
	coroaTitulo.x = x*0.5 
	coroaTitulo.y = y*0.23

	local textoTitulo = display.newText( grupoTutorial, 'Tuto', fitaTitulo.x - fitaTitulo.x*0.3, fitaTitulo.y - fitaTitulo.y*0.15, fonte, t*0.07 )
	textoTitulo.rotation = -10

	local textoTitulo2 = display.newText( grupoTutorial, 'rial', fitaTitulo.x + fitaTitulo.x*0.3 , fitaTitulo.y - fitaTitulo.y*0.15, fonte, t*0.07 )
	textoTitulo2.rotation = 10

	local bloco = display.newImageRect( grupoTutorial, 'recursos/imagens/item3.png', x*0.9, t*0.55 )
	bloco.x = x*0.5 
	bloco.y = y*0.58

	local botaoJogar = display.newImageRect( grupoTutorial, 'recursos/imagens/item5.png', bloco.width*0.4, bloco.height*0.15 )
	botaoJogar.x = x*0.7
	botaoJogar.y = bloco.y*1.45

	local textoJogar = display.newText( grupoTutorial, 'JOGAR', botaoJogar.x, botaoJogar.y, fonte, t*0.04 )

	local botaoVoltar = display.newImageRect( grupoTutorial, 'recursos/imagens/Icon_Exit.png', t*0.10, t*0.10 ) 
	botaoVoltar.x = x*0.15 
	botaoVoltar.y = y*0.93

	

	local grupoVida = display.newGroup()
	grupoTutorial:insert( grupoVida )

	local vida = display.newImageRect( grupoTutorial, 'recursos/imagens/Icon_Heart.png', t*0.07, t*0.07 ) 
	vida.x = x*0.2
	vida.y = bloco.y*0.68

	local vidaTitulo = display.newText( grupoTutorial, 'Vidas', x*0.5, bloco.y*0.68, fonte, t*0.06 )

	local vidaTexto = display.newText( grupoTutorial, 'Voce tera 3 vidas para utilizar, caso erre uma pergunta voce perdera uma vida, chegando a zero voce perderá o jogo', x*0.5, bloco.y, bloco.width*0.8,  bloco.height*0.5, fonte2, t*0.035 )

	grupoVida:insert( vida )
	grupoVida:insert( vidaTitulo )
	grupoVida:insert( vidaTexto )
	grupoVida.alpha = 1

	local grupoTempo = display.newGroup()

	local tempo = display.newImageRect( grupoTutorial, 'recursos/imagens/Icon_Clock.png',  t*0.07, t*0.07 ) 
	tempo.x = x*0.2
	tempo.y = bloco.y*0.68

	local tempoTitulo = display.newText( grupoTutorial, 'tempo', x*0.5, bloco.y*0.68, fonte, t*0.06 )

	local tempoTexto = display.newText( grupoTutorial, 'Voce tera trinta segundos para responder a pergunta, se o tempo for zerado voce perderá', x*0.5, bloco.y, bloco.width*0.8,  bloco.height*0.5, fonte2, t*0.035 )

	grupoTempo:insert(tempo)
	grupoTempo:insert(tempoTitulo)
	grupoTempo:insert(tempoTexto)
	grupoTempo.alpha = 0


	local grupoDiamante = display.newGroup()

	local diamante = display.newImageRect( grupoTutorial, 'recursos/imagens/Icon_Diamond.png',  t*0.07, t*0.07 ) 
	diamante.x = x*0.2
	diamante.y = bloco.y*0.68

	local diamanteTitulo = display.newText( grupoTutorial, 'Pontos', x*0.55, bloco.y*0.68, fonte, t*0.06 )

	local diamanteTexto = display.newText( grupoTutorial, 'A cada resposta correta voce ganhará 1 ponto, caso erre voce tambem perderá 1 ponto.', x*0.5, bloco.y, bloco.width*0.8,  bloco.height*0.5, fonte2, t*0.035 )

	grupoDiamante:insert( diamante )
	grupoDiamante:insert( diamanteTitulo )
	grupoDiamante:insert( diamanteTexto )
	grupoDiamante.alpha = 0


	local setaProximo = display.newImageRect( grupoTutorial, 'recursos/imagens/Icon_ArrowUp_1.png', t*0.07, t*0.07 ) 
	setaProximo.x = x*0.8
	setaProximo.y = bloco.y*1.2

	local setaVoltar = display.newImageRect( grupoTutorial, 'recursos/imagens/Icon_ArrowLeft.png', t*0.07, t*0.07 ) 
	setaVoltar.x = x*0.2
	setaVoltar.y = bloco.y*1.2
	setaVoltar.alpha = 0

	function verificaToque( event )
		if (event.phase == 'began') then
			if (event.target == setaProximo and grupoVida.alpha == 1) then
				transition.dissolve( grupoVida, grupoTempo, 500 )
				transition.to( setaVoltar, {time = 500, alpha = 1} )
			elseif (event.target == setaProximo and grupoTempo.alpha == 1) then
				transition.dissolve(grupoTempo, grupoDiamante, 500 )
				transition.to( setaProximo, {time = 500, alpha = 0} )
			elseif(event.target == setaVoltar and grupoDiamante.alpha == 1 ) then
				transition.dissolve(grupoDiamante, grupoTempo, 500 )
				transition.to( setaProximo, {time = 500, alpha = 1} )
			elseif(event.target == setaVoltar and grupoTempo.alpha == 1) then
				transition.dissolve(grupoTempo, grupoVida, 500 )
				transition.to( setaVoltar, {time = 500, alpha = 0} )
			elseif (event.target == botaoJogar) then
				composer.gotoScene( 'cenas.jogo', {time = 500, effect = 'fade'} )
			elseif (event.target == botaoVoltar) then
				composer.gotoScene( 'cenas.menu', {time = 500, effect = 'fade'} )
			end
		end
	end
	setaVoltar:addEventListener( 'touch', verificaToque )
	setaProximo:addEventListener( 'touch', verificaToque )
	botaoJogar:addEventListener( 'touch', verificaToque )
	botaoVoltar:addEventListener( 'touch', verificaToque )
	

end
cena:addEventListener( 'create', cena )
return cena
