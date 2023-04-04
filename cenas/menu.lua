local composer = require('composer')

local cena = composer.newScene()

function cena:create( event )
	local grupoMenu = self.view

local x, y = display.contentWidth, display.contentHeight
local t = x + y / 2

local fonte = native.newFont( 'recursos/fontes/font2.ttf' )

local degradeFundo = {
	type = 'gradient',
	color1 = { 238/255, 228/255, 215/255 },
	color2 = { 185/255, 153/255, 130/255 },
	direction = 'down'
}

local fundo = display.newRect( grupoMenu, x*0.5,   y*0.5, x, y )
fundo:setFillColor( degradeFundo )

local fundoCirculo = display.newCircle( grupoMenu, x*0.5, y*0.35, t*0.3 )
fundoCirculo:setFillColor( 202/255, 170/255, 144/255 )

local bloco = display.newImageRect( grupoMenu, 'recursos/imagens/item3.png', t*0.37, t*0.4 )
bloco.x = x*0.5 
bloco.y = y*0.5

local subBloco = display.newImageRect( grupoMenu, 'recursos/imagens/item1.png', t*0.3, t*0.25 )
subBloco.x = bloco.x
subBloco.y = bloco.y + bloco.y*0.55

local iconeSubBloco = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Lock.png', t*0.11, t*0.11 )
iconeSubBloco.x = subBloco.x - subBloco.x*0.3
iconeSubBloco.y = subBloco.y - subBloco.y*0.03

local iconeSubBloco2 = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Flower.png', t*0.12, t*0.12 )
iconeSubBloco2.x = subBloco.x + subBloco.x*0.3
iconeSubBloco2.y = subBloco.y - subBloco.y*0.03


local blocoTitulo = display.newImageRect( grupoMenu, 'recursos/imagens/item2.png', t*0.45, t*0.12 )
blocoTitulo.x = x*0.5 
blocoTitulo.y = y*0.22

local fitaTitulo = display.newImageRect( grupoMenu, 'recursos/imagens/item4.png', t*0.45, t*0.20 )
fitaTitulo.x = x*0.5 
fitaTitulo.y = y*0.21

local coroaTitulo = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Crown.png', t*0.08, t*0.06 )
coroaTitulo.x = x*0.5 
coroaTitulo.y = y*0.23

local textoTitulo = display.newText( grupoMenu, 'Lua', fitaTitulo.x - fitaTitulo.x*0.3, fitaTitulo.y - fitaTitulo.y*0.15, fonte, t*0.07 )
textoTitulo.rotation = -10

local textoTitulo2 = display.newText( grupoMenu, 'Quiz', fitaTitulo.x + fitaTitulo.x*0.3 , fitaTitulo.y - fitaTitulo.y*0.15, fonte, t*0.07 )
textoTitulo2.rotation = 10

local botaoJogar = display.newImageRect( grupoMenu, 'recursos/imagens/item5.png', bloco.width*0.8, bloco.height*0.2 )
botaoJogar.x = x*0.5
botaoJogar.y = bloco.y - bloco.y*0.2

local textoJogar = display.newText( grupoMenu, 'JOGAR', botaoJogar.x + botaoJogar.x*0.1, botaoJogar.y, fonte, t*0.04 )

local iconeBotaoJogar = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Lightning.png', t*0.07, t*0.10)
iconeBotaoJogar.x = botaoJogar.x - botaoJogar.x*0.5
iconeBotaoJogar.y = bloco.y - bloco.y*0.2

local botaoTutorial = display.newImageRect( grupoMenu, 'recursos/imagens/item5.png', bloco.width*0.8, bloco.height*0.2 )
botaoTutorial.x = x*0.5
botaoTutorial.y = bloco.y

local textoTutorial = display.newText( grupoMenu, 'TUTORIAL', botaoTutorial.x + botaoTutorial.x*0.1, botaoTutorial.y, fonte, t*0.038 )

local iconeBotaoTutorial = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Star.png', t*0.09, t*0.09)
iconeBotaoTutorial.x = botaoTutorial.x - botaoTutorial.x*0.5
iconeBotaoTutorial.y = bloco.y

local botaoSair = display.newImageRect( grupoMenu, 'recursos/imagens/item5.png', bloco.width*0.8, bloco.height*0.2 )
botaoSair.x = x*0.5
botaoSair.y = bloco.y + bloco.y*0.2

local textoSair = display.newText( grupoMenu, 'SAIR', botaoSair.x + botaoSair.x*0.05, botaoSair.y, fonte, t*0.038 )

local iconeBotaoSair = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Ghost.png', t*0.08, t*0.08)
iconeBotaoSair.x = botaoSair.x - botaoSair.x*0.5
iconeBotaoSair.y = bloco.y + bloco.y*0.2

local iconeConfig = display.newImageRect( grupoMenu, 'recursos/imagens/icon_Settings.png', t*0.10, t*0.10)
iconeConfig.x = x*0.88
iconeConfig.y = y*0.95

function configuracoes( event )
	if (event.phase == 'began') then
			transition.to( iconeConfig, {time = 300, rotation = 360} )
	end
end
iconeConfig:addEventListener( 'touch', configuracoes )

local seta = display.newImageRect( grupoMenu, 'recursos/imagens/Icon_Left.png', t*0.06, t*0.06 )
seta.alpha = 0

function verificaToque( event )
	if (event.phase == 'began') then
		if (event.target == botaoJogar) then
			seta.alpha = 1
			seta.x = botaoJogar.x + botaoJogar.x*0.75
			seta.y = botaoJogar.y

			timer.performWithDelay( 500, function()
				composer.gotoScene( 'cenas.jogo', {time = 500, effect = 'fade'} )
			end )
		elseif(event.target == botaoTutorial) then
			seta.alpha = 1
			seta.x = botaoTutorial.x + botaoTutorial.x*0.75
			seta.y = botaoTutorial.y

			timer.performWithDelay( 500, function()
				composer.gotoScene( 'cenas.tutorial', {time = 500, effect = 'fade'} )
			end )
		elseif(event.target == botaoSair) then
			seta.alpha = 1
			seta.x = botaoSair.x + botaoSair.x*0.75
			seta.y = botaoSair.y

			timer.performWithDelay( 500, function()
				composer.gotoScene( 'cenas.jogo', {time = 500, effect = 'fade'} )
			end )
		end
	end
end
botaoJogar:addEventListener( 'touch', verificaToque )
botaoTutorial:addEventListener( 'touch', verificaToque )
botaoSair:addEventListener( 'touch', verificaToque )







end
cena:addEventListener( 'create', cena )
return cena