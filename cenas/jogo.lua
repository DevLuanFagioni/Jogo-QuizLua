local composer = require('composer')

local cena = composer.newScene( )

function cena:create( event )
	local grupoJogo = self.view

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

	local fundo = display.newRect( grupoJogo, x*0.5,   y*0.5, x, y )
	fundo:setFillColor( degradeFundo )

	local grupoGui = display.newGroup()

	local vida = 3

	local vidaIcone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Heart.png', t*0.07, t*0.07 ) 
	vidaIcone.x = x*0.35
	vidaIcone.y = y*0.1
	vidaIcone.alpha = 0


	local vidaIcone2 = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Heart.png', t*0.07, t*0.07 ) 
	vidaIcone2.x = x*0.5
	vidaIcone2.y = y*0.1
	vidaIcone2.alpha = 0

	local vidaIcone3 = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Heart.png', t*0.07, t*0.07 ) 
	vidaIcone3.x = x*0.65
	vidaIcone3.y = y*0.1
	vidaIcone3.alpha = 0


	local tempo = 60

	local tempoIcone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Clock.png', t*0.07, t*0.07 ) 
	tempoIcone.x = x*0.70
	tempoIcone.y = y*0.945

	local textoTempo = display.newText( grupoJogo, tempo, x*0.88, y*0.94, fonte, t*0.09 )
	textoTempo:setFillColor( 0,0,0 )


	function atualizaTempo()
		if (tempo > 0) then
			tempo = tempo - 1
			textoTempo.text = tempo
		end
	end
	timer.performWithDelay( 1000, atualizaTempo, 0)

	local pontosIcone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Diamond.png', t*0.07, t*0.07 ) 
	pontosIcone.x = x*0.3
	pontosIcone.y = y*0.945

	local ponto = 0

	local textoPonto = display.newText( grupoJogo, ponto, x*0.15, y*0.94, fonte, t*0.09 )
	textoPonto:setFillColor( 0,0,0 )

	grupoGui:insert( vidaIcone )
	grupoGui:insert( vidaIcone2 )
	grupoGui:insert( vidaIcone3 )
	grupoGui:insert( tempoIcone )
	grupoGui:insert( textoTempo )
	grupoGui:insert( pontosIcone )
	grupoGui:insert( textoPonto )

	local grupoPergunta1 = display.newGroup()

	local bloco1 = display.newImageRect( grupoJogo, 'recursos/imagens/item1.png', x*0.9, t*0.4 )
	bloco1.x = x*0.5 
	bloco1.y = y*0.35

	local pergunta1 = display.newText( grupoJogo, 'Qual é a extensão de arquivo padrão para um arquivo Lua?', x*0.5, bloco1.y*0.90, bloco1.width*0.8,  bloco1.height*0.5, fonte2, t*0.042 )
	pergunta1:setFillColor( 0,0,0 )

	local r1P1 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r1P1.x = x*0.5
	r1P1.y = y*0.62

	local r1P1Texto = display.newText( grupoJogo, '.py', x*0.55, r1P1.y, fonte2, t*0.042 )
	r1P1Texto:setFillColor( 0,0,0 )

	local r1P1Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Crown.png', t*0.09, t*0.09 )
	r1P1Icone.x = x*0.20
	r1P1Icone.y = y*0.61

	local r2P1 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r2P1.x = x*0.5
	r2P1.y = y*0.72

	local r2P1Texto = display.newText( grupoJogo, '.js', x*0.55, r2P1.y, fonte2, t*0.042 )
	r2P1Texto:setFillColor( 0,0,0 )

	local r2P1Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Award.png', t*0.09, t*0.09 )
	r2P1Icone.x = x*0.20
	r2P1Icone.y = y*0.72

	local r3P1 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r3P1.x = x*0.5
	r3P1.y = y*0.82

	local r3P1Texto = display.newText( grupoJogo, '.lua', x*0.55, r3P1.y, fonte2, t*0.042 )
	r3P1Texto:setFillColor( 0,0,0 )

	local r3P1Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Star.png', t*0.09, t*0.09 )
	r3P1Icone.x = x*0.20
	r3P1Icone.y = y*0.82

	grupoPergunta1:insert(bloco1)
	grupoPergunta1:insert(pergunta1)
	grupoPergunta1:insert(r1P1)
	grupoPergunta1:insert(r1P1Icone)
	grupoPergunta1:insert(r1P1Texto)
	grupoPergunta1:insert(r2P1)
	grupoPergunta1:insert(r2P1Icone)
	grupoPergunta1:insert(r2P1Texto)
	grupoPergunta1:insert(r3P1)
	grupoPergunta1:insert(r3P1Icone)
	grupoPergunta1:insert(r3P1Texto)
	grupoPergunta1.alpha = 1


	local grupoPergunta2 = display.newGroup()

	local bloco2 = display.newImageRect( grupoJogo, 'recursos/imagens/item1.png', x*0.9, t*0.4 )
	bloco2.x = x*0.5 
	bloco2.y = y*0.35

	local pergunta2 = display.newText( grupoJogo, 'Qual é a função usada para imprimir algo na tela em Lua?', x*0.5, bloco2.y*0.90, bloco2.width*0.8,  bloco2.height*0.5, fonte2, t*0.042 )
	pergunta2:setFillColor( 0,0,0 )

	local r1P2 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r1P2.x = x*0.5
	r1P2.y = y*0.62

	local r1P2Texto = display.newText( grupoJogo, ' print()', x*0.5, r1P2.y, fonte2, t*0.042 )
	r1P2Texto:setFillColor( 0,0,0 )

	local r1P2Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Crown.png', t*0.09, t*0.09 )
	r1P2Icone.x = x*0.20
	r1P2Icone.y = y*0.61

	local r2P2 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r2P2.x = x*0.5
	r2P2.y = y*0.72

	local r2P2Texto = display.newText( grupoJogo, '   console.log', x*0.5, r2P2.y, fonte2, t*0.042 )
	r2P2Texto:setFillColor( 0,0,0 )

	local r2P2Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Award.png', t*0.09, t*0.09 )
	r2P2Icone.x = x*0.20
	r2P2Icone.y = y*0.72

	local r3P2 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r3P2.x = x*0.5
	r3P2.y = y*0.82

	local r3P2Texto = display.newText( grupoJogo, ' echo()', x*0.5, r3P2.y, fonte2, t*0.042 )
	r3P2Texto:setFillColor( 0,0,0 )

	local r3P2Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Star.png', t*0.09, t*0.09 )
	r3P2Icone.x = x*0.20
	r3P2Icone.y = y*0.82

	grupoPergunta2:insert(bloco2)
	grupoPergunta2:insert(pergunta2)
	grupoPergunta2:insert(r1P2)
	grupoPergunta2:insert(r1P2Icone)
	grupoPergunta2:insert(r1P2Texto)
	grupoPergunta2:insert(r2P2)
	grupoPergunta2:insert(r2P2Icone)
	grupoPergunta2:insert(r2P2Texto)
	grupoPergunta2:insert(r3P2)
	grupoPergunta2:insert(r3P2Icone)
	grupoPergunta2:insert(r3P2Texto)
	grupoPergunta2.alpha = 0


	local grupoPergunta3 = display.newGroup()

	local bloco3 = display.newImageRect( grupoJogo, 'recursos/imagens/item1.png', x*0.9, t*0.4 )
	bloco3.x = x*0.5 
	bloco3.y = y*0.35

	local pergunta3 = display.newText( grupoJogo, 'Qual é a função usada para adicionar uma imagem na tela em Corona SDK?', x*0.5, bloco3.y*0.90, bloco3.width*0.8,  bloco3.height*0.5, fonte3, t*0.037 )
	pergunta3:setFillColor( 0,0,0 )

	local r1P3 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r1P3.x = x*0.5
	r1P3.y = y*0.62

	local r1P3Texto = display.newText( grupoJogo, ' addImage()', x*0.55, r1P3.y, fonte2, t*0.04 )
	r1P3Texto:setFillColor( 0,0,0 )

	local r1P3Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Crown.png', t*0.09, t*0.09 )
	r1P3Icone.x = x*0.20
	r1P3Icone.y = y*0.61

	local r2P3 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r2P3.x = x*0.5
	r2P3.y = y*0.72

	local r2P3Texto = display.newText( grupoJogo, '   display.newImage()', x*0.55, r2P3.y, fonte2, t*0.03 )
	r2P3Texto:setFillColor( 0,0,0 )

	local r2P3Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Award.png', t*0.09, t*0.09 )
	r2P3Icone.x = x*0.20
	r2P3Icone.y = y*0.72

	local r3P3 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r3P3.x = x*0.5
	r3P3.y = y*0.82

	local r3P3Texto = display.newText( grupoJogo, ' createImage()', x*0.55, r3P3.y, fonte2, t*0.035 )
	r3P3Texto:setFillColor( 0,0,0 )

	local r3P3Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Star.png', t*0.09, t*0.09 )
	r3P3Icone.x = x*0.20
	r3P3Icone.y = y*0.82

	grupoPergunta3:insert(bloco3)
	grupoPergunta3:insert(pergunta3)
	grupoPergunta3:insert(r1P3)
	grupoPergunta3:insert(r1P3Icone)
	grupoPergunta3:insert(r1P3Texto)
	grupoPergunta3:insert(r2P3)
	grupoPergunta3:insert(r2P3Icone)
	grupoPergunta3:insert(r2P3Texto)
	grupoPergunta3:insert(r3P3)
	grupoPergunta3:insert(r3P3Icone)
	grupoPergunta3:insert(r3P3Texto)
	grupoPergunta3.alpha = 0


	local grupoPergunta4 = display.newGroup()

	local bloco4 = display.newImageRect( grupoJogo, 'recursos/imagens/item1.png', x*0.9, t*0.4 )
	bloco4.x = x*0.5 
	bloco4.y = y*0.35

	local pergunta4 = display.newText( grupoJogo, 'Qual é a função usada para mover um objeto na tela em Corona SDK?', x*0.5, bloco4.y*0.90, bloco4.width*0.8,  bloco4.height*0.5, fonte3, t*0.037 )
	pergunta4:setFillColor( 0,0,0 )

	local r1P4 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r1P4.x = x*0.5
	r1P4.y = y*0.62

	local r1P4Texto = display.newText( grupoJogo, ' moveObject()', x*0.55, r1P4.y, fonte2, t*0.035 )
	r1P4Texto:setFillColor( 0,0,0 )

	local r1P4Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Crown.png', t*0.09, t*0.09 )
	r1P4Icone.x = x*0.20
	r1P4Icone.y = y*0.61

	local r2P4 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r2P4.x = x*0.5
	r2P4.y = y*0.72

	local r2P4Texto = display.newText( grupoJogo, '   object.move()', x*0.55, r2P4.y, fonte2, t*0.035 )
	r2P4Texto:setFillColor( 0,0,0 )

	local r2P4Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Award.png', t*0.09, t*0.09 )
	r2P4Icone.x = x*0.20
	r2P4Icone.y = y*0.72

	local r3P4 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r3P4.x = x*0.5
	r3P4.y = y*0.82

	local r3P4Texto = display.newText( grupoJogo, ' transition.to()', x*0.55, r3P4.y, fonte2, t*0.035 )
	r3P4Texto:setFillColor( 0,0,0 )

	local r3P4Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Star.png', t*0.09, t*0.09 )
	r3P4Icone.x = x*0.20
	r3P4Icone.y = y*0.82

	
	grupoPergunta4:insert(r1P4)
	grupoPergunta4:insert(r1P4Icone)
	grupoPergunta4:insert(r1P4Texto)
	grupoPergunta4:insert(r2P4)
	grupoPergunta4:insert(r2P4Icone)
	grupoPergunta4:insert(r2P4Texto)
	grupoPergunta4:insert(r3P4)
	grupoPergunta4:insert(r3P4Icone)
	grupoPergunta4:insert(r3P4Texto)
	grupoPergunta4:insert(bloco4)
	grupoPergunta4:insert(pergunta4)
	grupoPergunta4.alpha = 0


	local grupoPergunta5 = display.newGroup()

	local bloco5 = display.newImageRect( grupoJogo, 'recursos/imagens/item1.png', x*0.9, t*0.4 )
	bloco5.x = x*0.5 
	bloco5.y = y*0.35

	local pergunta5 = display.newText( grupoJogo, 'Qual é a função usada para reproduzir um som em Corona SDK?', x*0.5, bloco5.y*0.90, bloco5.width*0.8,  bloco5.height*0.5, fonte3, t*0.037 )
	pergunta5:setFillColor( 0,0,0 )

	local r1P5 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r1P5.x = x*0.5
	r1P5.y = y*0.62

	local r1P5Texto = display.newText( grupoJogo, ' playSound()', x*0.55, r1P5.y, fonte2, t*0.035 )
	r1P5Texto:setFillColor( 0,0,0 )

	local r1P5Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Crown.png', t*0.09, t*0.09 )
	r1P5Icone.x = x*0.20
	r1P5Icone.y = y*0.61

	local r2P5 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r2P5.x = x*0.5
	r2P5.y = y*0.72

	local r2P5Texto = display.newText( grupoJogo, '   audio.play()', x*0.55, r2P5.y, fonte2, t*0.035 )
	r2P5Texto:setFillColor( 0,0,0 )

	local r2P5Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Award.png', t*0.09, t*0.09 )
	r2P5Icone.x = x*0.20
	r2P5Icone.y = y*0.72

	local r3P5 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r3P5.x = x*0.5
	r3P5.y = y*0.82

	local r3P5Texto = display.newText( grupoJogo, ' sound.play()', x*0.55, r3P5.y, fonte2, t*0.035 )
	r3P5Texto:setFillColor( 0,0,0 )

	local r3P5Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Star.png', t*0.09, t*0.09 )
	r3P5Icone.x = x*0.20
	r3P5Icone.y = y*0.82

	grupoPergunta5:insert(bloco5)
	grupoPergunta5:insert(pergunta5)
	grupoPergunta5:insert(r1P5)
	grupoPergunta5:insert(r1P5Icone)
	grupoPergunta5:insert(r1P5Texto)
	grupoPergunta5:insert(r2P5)
	grupoPergunta5:insert(r2P5Icone)
	grupoPergunta5:insert(r2P5Texto)
	grupoPergunta5:insert(r3P5)
	grupoPergunta5:insert(r3P5Icone)
	grupoPergunta5:insert(r3P5Texto)
	grupoPergunta5.alpha = 0


	local grupoPergunta6 = display.newGroup()

	local bloco6 = display.newImageRect( grupoJogo, 'recursos/imagens/item1.png', x*0.9, t*0.4 )
	bloco6.x = x*0.5 
	bloco6.y = y*0.35

	local pergunta6 = display.newText( grupoJogo, 'Qual é a função usada para remover um objeto da tela em Corona SDK?', x*0.5, bloco6.y*0.90, bloco6.width*0.8,  bloco6.height*0.5, fonte3, t*0.037 )
	pergunta6:setFillColor( 0,0,0 )

	local r1P6 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r1P6.x = x*0.5
	r1P6.y = y*0.62

	local r1P6Texto = display.newText( grupoJogo, ' remove()', x*0.55, r1P6.y, fonte2, t*0.035 )
	r1P6Texto:setFillColor( 0,0,0 )

	local r1P6Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Crown.png', t*0.09, t*0.09 )
	r1P6Icone.x = x*0.20
	r1P6Icone.y = y*0.61

	local r2P6 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r2P6.x = x*0.5
	r2P6.y = y*0.72

	local r2P6Texto = display.newText( grupoJogo, '   display.remove()', x*0.55, r2P6.y, fonte2, t*0.035 )
	r2P6Texto:setFillColor( 0,0,0 )

	local r2P6Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Award.png', t*0.09, t*0.09 )
	r2P6Icone.x = x*0.20
	r2P6Icone.y = y*0.72

	local r3P6 = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.75, t*0.08 )
	r3P6.x = x*0.5
	r3P6.y = y*0.82

	local r3P6Texto = display.newText( grupoJogo, ' delete()', x*0.55, r3P6.y, fonte2, t*0.035 )
	r3P6Texto:setFillColor( 0,0,0 )

	local r3P6Icone = display.newImageRect( grupoJogo, 'recursos/imagens/Icon_Star.png', t*0.09, t*0.09 )
	r3P6Icone.x = x*0.20
	r3P6Icone.y = y*0.82

	grupoPergunta6:insert(bloco6)
	grupoPergunta6:insert(pergunta6)
	grupoPergunta6:insert(r1P6)
	grupoPergunta6:insert(r1P6Icone)
	grupoPergunta6:insert(r1P6Texto)
	grupoPergunta6:insert(r2P6)
	grupoPergunta6:insert(r2P6Icone)
	grupoPergunta6:insert(r2P6Texto)
	grupoPergunta6:insert(r3P6)
	grupoPergunta6:insert(r3P6Icone)
	grupoPergunta6:insert(r3P6Texto)
	grupoPergunta6.alpha = 0

	function verificaErro( event )
		if (event.phase == 'began') then
			if (grupoPergunta1.alpha == 1 and event.target == r1P1 ) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r1P1:setFillColor( 1,0,0 )
			elseif (grupoPergunta1.alpha == 1 and event.target == r2P1) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r2P1:setFillColor( 1,0,0 )
			elseif (grupoPergunta2.alpha == 1 and event.target == r2P2) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r2P2:setFillColor( 1,0,0 )
			elseif (grupoPergunta2.alpha == 1 and event.target == r3P2) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r3P2:setFillColor( 1,0,0 )
			elseif (grupoPergunta3.alpha == 1 and event.target == r1P3) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r1P3:setFillColor( 1,0,0 )
			elseif (grupoPergunta3.alpha == 1 and event.target == r3P3) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r3P3:setFillColor( 1,0,0 )
			elseif (grupoPergunta4.alpha == 1 and event.target == r1P4) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r1P4:setFillColor( 1,0,0 )
			elseif (grupoPergunta4.alpha == 1 and event.target == r2P4) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r2P4:setFillColor( 1,0,0 )
			elseif (grupoPergunta5.alpha == 1 and event.target == r1P5) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r1P5:setFillColor( 1,0,0 )
			elseif (grupoPergunta5.alpha == 1 and event.target == r3P5) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r3P5:setFillColor( 1,0,0 )
			elseif (grupoPergunta6.alpha == 1 and event.target == r1P6) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r1P6:setFillColor( 1,0,0 )
			elseif (grupoPergunta6.alpha == 1 and event.target == r3P6) then
				vida = vida - 1
				ponto = ponto -1
				textoPonto.text = ponto
				r3P6:setFillColor( 1,0,0 )
			end
		end
		
	end
	r1P1:addEventListener( 'touch', verificaErro )
	r2P1:addEventListener( 'touch', verificaErro )
	r2P2:addEventListener( 'touch', verificaErro )
	r3P2:addEventListener( 'touch', verificaErro )
	r1P3:addEventListener( 'touch', verificaErro )
	r3P3:addEventListener( 'touch', verificaErro )
	r1P4:addEventListener( 'touch', verificaErro )
	r2P4:addEventListener( 'touch', verificaErro )
	r1P5:addEventListener( 'touch', verificaErro )
	r3P5:addEventListener( 'touch', verificaErro )
	r1P6:addEventListener( 'touch', verificaErro )
	r3P6:addEventListener( 'touch', verificaErro )


	local grupoVitoria = display.newGroup()

	local fundoVitoria = display.newRect( grupoJogo, x*0.5, y*0.5, x, y )
	fundoVitoria:setFillColor( 0,0,0, 0.8 )

	local blocoVitoria = display.newImageRect( grupoJogo, 'recursos/imagens/item3.png', x*0.9, t*0.4 )
	blocoVitoria.x = x*0.5 
	blocoVitoria.y = y*0.5

	local blocoTexto = display.newText( grupoJogo, 'Ihuuul,voce foi muito bem, conseguiu completar todos os desafios parabêns!', x*0.5, blocoVitoria.y, blocoVitoria.width*0.8,  blocoVitoria.height*0.5, fonte3, t*0.037 )
	blocoTexto:setFillColor( 0,0,0 )

	local fitaVitoria = display.newImageRect( grupoJogo, 'recursos/imagens/item4.png', x*0.9, t*0.2 )
	fitaVitoria.x = x*0.5 
	fitaVitoria.y = y*0.3

	local fitaVitoriaTexto = display.newText( grupoJogo, 'VITO', x*0.4, y*0.27, fonte, t*0.06 )
	fitaVitoriaTexto.rotation = -10
	fitaVitoriaTexto:setFillColor( 0,0,0 )

	local fitaVitoriaTexto2 = display.newText( grupoJogo, 'RIA', x*0.61, y*0.27, fonte, t*0.06 )
	fitaVitoriaTexto2.rotation = 10
	fitaVitoriaTexto2:setFillColor( 0,0,0 )

	local botaoVitoriaSair = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.35, t*0.08 )
	botaoVitoriaSair.x = x*0.25
	botaoVitoriaSair.y = blocoVitoria.y*1.35
	
	local botaoVitoriaSairTexto = display.newText( grupoJogo, 'SAIR', botaoVitoriaSair.x, botaoVitoriaSair.y, fonte3, t*0.04 )
	botaoVitoriaSairTexto:setFillColor( 0,0,0 )

	local botaoVitoriaCreditos = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.5, t*0.08 )
	botaoVitoriaCreditos.x = x*0.7
	botaoVitoriaCreditos.y = blocoVitoria.y*1.35
	
	local botaoVitoriaCreditosTexto = display.newText( grupoJogo, 'CREDITOS', botaoVitoriaCreditos.x, botaoVitoriaCreditos.y, fonte3, t*0.04 )
	botaoVitoriaCreditosTexto:setFillColor( 0,0,0 )

	grupoVitoria:insert( fundoVitoria )
	grupoVitoria:insert( blocoVitoria )
	grupoVitoria:insert( blocoTexto )
	grupoVitoria:insert( fitaVitoria )
	grupoVitoria:insert( fitaVitoriaTexto )
	grupoVitoria:insert( fitaVitoriaTexto2 )
	grupoVitoria:insert( botaoVitoriaSair )
	grupoVitoria:insert( botaoVitoriaSairTexto )
	grupoVitoria:insert( botaoVitoriaCreditos )
	grupoVitoria:insert( botaoVitoriaCreditosTexto )
	grupoVitoria.alpha = 0

	function vitoria( event )
		if (event.phase == 'began') then
			if (event.target == botaoVitoriaSair and grupoVitoria.alpha == 1) then
				os.exit()
			elseif ( event.target == botaoVitoriaCreditos and grupoVitoria.alpha == 1 ) then
				
				transition.to( grupoVitoria, {time = 300, alpha = 0, onComplete = function()
					composer.gotoScene( 'cenas.creditos', {time = 300, effect = 'fade'} )
				end} )
			end
		end
	end
	botaoVitoriaSair:addEventListener( 'touch', vitoria )
	botaoVitoriaCreditos:addEventListener( 'touch', vitoria )


	function verificaAcerto( event )
		if (event.phase == 'began') then
			if (grupoPergunta1.alpha == 1 and event.target == r3P1) then
				r3P1:setFillColor( 0,1,0 )
				ponto = ponto + 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo

				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta1, grupoPergunta2, 500 )
				end )
				

			elseif (grupoPergunta2.alpha == 1 and event.target == r1P2) then
				r1P2:setFillColor( 0,1,0 )
				tempo = 60
				textoTempo.text = tempo
				ponto = ponto + 1
				textoPonto.text = ponto

				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta2, grupoPergunta3, 500 )
				end )
				

			elseif (grupoPergunta3.alpha == 1 and event.target == r2P3) then
				r2P3:setFillColor( 0,1,0 )
				tempo = 60
				textoTempo.text = tempo
				ponto = ponto + 1
				textoPonto.text = ponto

				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta3, grupoPergunta4, 500 )
				end )
				

			elseif (grupoPergunta4.alpha == 1 and event.target == r3P4) then
				r3P4:setFillColor( 0,1,0 )
				tempo = 60
				textoTempo.text = tempo
				ponto = ponto + 1
				textoPonto.text = ponto

				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta4, grupoPergunta5, 500 )
				end )
				

			elseif (grupoPergunta5.alpha == 1 and event.target == r2P5) then
				r2P5:setFillColor( 0,1,0 )
				tempo = 60
				textoTempo.text = tempo
				ponto = ponto + 1
				textoPonto.text = ponto

				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta5, grupoPergunta6, 500 )
				end )
				

			elseif (grupoPergunta6.alpha == 1 and event.target == r2P6) then
				r2P6:setFillColor( 0,1,0 )
				vidas = 100
				transition.to( grupoVitoria, {time = 300, alpha = 1} )
				transition.to( grupoPergunta6, {time = 300, alpha = 0} )
				transition.to( grupoGui, {time = 300, alpha = 0} )
			end
		end
	end
	r3P1:addEventListener( 'touch', verificaAcerto )
	r1P2:addEventListener( 'touch', verificaAcerto )
	r2P3:addEventListener( 'touch', verificaAcerto )
	r3P4:addEventListener( 'touch', verificaAcerto )
	r2P5:addEventListener( 'touch', verificaAcerto )
	r2P6:addEventListener( 'touch', verificaAcerto )

	function verificaTempo()
		if (grupoPergunta1.alpha == 1 and tempo <= 0) then
				ponto = ponto - 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo
				vida = vida - 1

				
				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta1, grupoPergunta2, 500 )
				end )

			
		elseif (grupoPergunta2.alpha == 1 and tempo <= 0) then
				ponto = ponto - 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo
				vida = vida - 1

				
				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta2, grupoPergunta3, 500 )
				end )

		elseif (grupoPergunta3.alpha == 1 and tempo <= 0) then
				ponto = ponto - 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo
				vida = vida - 1

				
				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta3, grupoPergunta4, 500 )
				end )

		elseif (grupoPergunta4.alpha == 1 and tempo <= 0) then
				ponto = ponto - 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo
				vida = vida - 1

				
				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta4, grupoPergunta5, 500 )
				end )

		elseif (grupoPergunta5.alpha == 1 and tempo <= 0) then
				ponto = ponto - 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo
				vida = vida - 1

				
				timer.performWithDelay( 500, function()
					transition.dissolve( grupoPergunta5, grupoPergunta6, 500 )
				end )

		elseif (grupoPergunta6.alpha == 1 and tempo <= 0) then
				ponto = ponto - 1
				textoPonto.text = ponto
				tempo = 60
				textoTempo.text = tempo
				vida = vida - 1
		end
	end
	timer.performWithDelay( 1, verificaTempo, 0)

	local grupoDerrota = display.newGroup()

	local fundoDerrota = display.newRect( grupoJogo, x*0.5, y*0.5, x, y )
	fundoDerrota:setFillColor( 0,0,0, 0.8 )


	local blocoDerrota = display.newImageRect( grupoJogo, 'recursos/imagens/item3.png', x*0.9, t*0.4 )
	blocoDerrota.x = x*0.5 
	blocoDerrota.y = y*0.5

	local blocoTexto = display.newText( grupoJogo, 'Infelizmente voce perdeu todas as suas vidas, saia do jogo e vá estudar!!!', x*0.5, blocoDerrota.y, blocoDerrota.width*0.8,  blocoDerrota.height*0.5, fonte3, t*0.037 )
	blocoTexto:setFillColor( 0,0,0 )

	local fitaDerrota = display.newImageRect( grupoJogo, 'recursos/imagens/item4.png', x*0.9, t*0.2 )
	fitaDerrota.x = x*0.5 
	fitaDerrota.y = y*0.3

	local fitaDerrotaTexto = display.newText( grupoJogo, 'DERR', x*0.37, y*0.27, fonte, t*0.06 )
	fitaDerrotaTexto.rotation = -10
	fitaDerrotaTexto:setFillColor( 0,0,0 )

	local fitaDerrotaTexto2 = display.newText( grupoJogo, 'OTA', x*0.63, y*0.27, fonte, t*0.06 )
	fitaDerrotaTexto2.rotation = 10
	fitaDerrotaTexto2:setFillColor( 0,0,0 )

	local botaoDerrota = display.newImageRect( grupoJogo, 'recursos/imagens/item5.png', x*0.5, t*0.08 )
	botaoDerrota.x = x*0.5
	botaoDerrota.y = blocoDerrota.y*1.35
	
	local botaoDerrotaTexto = display.newText( grupoJogo, 'SAIR', botaoDerrota.x, botaoDerrota.y, fonte3, t*0.04 )
	botaoDerrotaTexto:setFillColor( 0,0,0 )

	grupoDerrota:insert( fundoDerrota )
	grupoDerrota:insert( blocoDerrota )
	grupoDerrota:insert( blocoTexto )
	grupoDerrota:insert( fitaDerrota )
	grupoDerrota:insert( fitaDerrotaTexto )
	grupoDerrota:insert( fitaDerrotaTexto2 )
	grupoDerrota:insert( botaoDerrota )
	grupoDerrota:insert( botaoDerrotaTexto )
	grupoDerrota.alpha = 0


	function verificaVida()
		if (vida == 3) then
			vidaIcone.alpha = 1
			vidaIcone2.alpha = 1
			vidaIcone3.alpha = 1
		elseif (vida == 2) then
			vidaIcone.alpha = 1
			vidaIcone2.alpha = 1
			vidaIcone3.alpha = 0
		elseif (vida == 1) then
			vidaIcone.alpha = 1
			vidaIcone2.alpha = 0
			vidaIcone3.alpha = 0
		elseif (vida == 0) then
			vidaIcone.alpha = 0
			vidaIcone2.alpha = 0
			vidaIcone3.alpha = 0
			transition.to( grupoDerrota, {time = 300, alpha = 1} )
			vida = 3
		end
	end
	timer.performWithDelay( 1, verificaVida, 0)

	function derrota( event )
		if (event.phase == 'began') then
			os.exit()
		end
	end
	botaoDerrota:addEventListener( 'touch', derrota )

	grupoJogo:insert(grupoPergunta1)
	

end
cena:addEventListener( 'create', cena )
return cena
