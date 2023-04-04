local composer = require('composer')

local cena = composer.newScene()

function cena:create( event )
	local grupoCreditos = self.view

local fonte = native.newFont( 'recursos/fontes/font2.ttf' )

local x, y = display.contentWidth, display.contentHeight
local t = x + y / 2

local degradeFundo = {
	type = 'gradient',
	color1 = { 238/255, 228/255, 215/255 },
	color2 = { 185/255, 153/255, 130/255 },
	direction = 'down'
}

local fundo = display.newRect( grupoCreditos, x*0.5,   y*0.5, x, y )
fundo:setFillColor( degradeFundo )

local fundoCirculo = display.newCircle( grupoCreditos, x*0.5, y*0.35, t*0.3 )
fundoCirculo:setFillColor( 202/255, 170/255, 144/255 )

local bloco = display.newImageRect( grupoCreditos, 'recursos/imagens/item3.png', t*0.45, t*0.6 )
bloco.x = x*0.5 
bloco.y = y*0.62

local blocoTitulo = display.newImageRect( grupoCreditos, 'recursos/imagens/item2.png', t*0.45, t*0.12 )
blocoTitulo.x = x*0.5 
blocoTitulo.y = y*0.22

local blocoTexto = display.newText( grupoCreditos, 'Obrigado por jogar, espero que tenha gostado, caso queira saber mais me siga nas redes sociais.', x*0.5, bloco.y*0.83, bloco.width*0.8,  bloco.height*0.5, fonte3, t*0.037 )
	blocoTexto:setFillColor( 0,0,0 )

local fitaTitulo = display.newImageRect( grupoCreditos, 'recursos/imagens/item4.png', t*0.45, t*0.20 )
fitaTitulo.x = x*0.5 
fitaTitulo.y = y*0.21

local coroaTitulo = display.newImageRect( grupoCreditos, 'recursos/imagens/icon_Crown.png', t*0.08, t*0.06 )
coroaTitulo.x = x*0.5 
coroaTitulo.y = y*0.23

local textoTitulo = display.newText( grupoCreditos, 'CRED', fitaTitulo.x - fitaTitulo.x*0.27, fitaTitulo.y - fitaTitulo.y*0.15, fonte, t*0.055)
textoTitulo.rotation = -10
textoTitulo:setFillColor( 0,0,0 )

local textoTitulo2 = display.newText( grupoCreditos, 'ITOS', fitaTitulo.x + fitaTitulo.x*0.23 , fitaTitulo.y - fitaTitulo.y*0.15, fonte, t*0.055 )
textoTitulo2.rotation = 10
textoTitulo2:setFillColor( 0,0,0 )

local botaoGithub = display.newImageRect( grupoCreditos, 'recursos/imagens/item5.png', bloco.width*0.8, bloco.height*0.15 )
botaoGithub.x = x*0.5
botaoGithub.y = bloco.y + bloco.y*0.35

local textoGithub = display.newText( grupoCreditos, 'GITHUB', botaoGithub.x + botaoGithub.x*0.1, botaoGithub.y, fonte, t*0.04 )
textoGithub:setFillColor( 0,0,0 )

local iconeBotaoGithub = display.newImageRect( grupoCreditos, 'recursos/imagens/icon_Lightning.png', t*0.07, t*0.10)
iconeBotaoGithub.x = botaoGithub.x - botaoGithub.x*0.65
iconeBotaoGithub.y = bloco.y + bloco.y*0.35

local botaoInstagram = display.newImageRect( grupoCreditos, 'recursos/imagens/item5.png', bloco.width*0.8, bloco.height*0.15 )
botaoInstagram.x = x*0.5
botaoInstagram.y = bloco.y + bloco.y*0.19

local textoInstagram = display.newText( grupoCreditos, 'INSTAGRAM', botaoInstagram.x + botaoInstagram.x*0.1, botaoInstagram.y, fonte, t*0.038 )
textoInstagram:setFillColor( 0,0,0 )

local iconeBotaoInstagram = display.newImageRect( grupoCreditos, 'recursos/imagens/icon_Award.png', t*0.09, t*0.09)
iconeBotaoInstagram.x = botaoInstagram.x - botaoInstagram.x*0.65
iconeBotaoInstagram.y = bloco.y + bloco.y*0.19

local botaoLinkedin = display.newImageRect( grupoCreditos, 'recursos/imagens/item5.png', bloco.width*0.8, bloco.height*0.15 )
botaoLinkedin.x = x*0.5
botaoLinkedin.y = bloco.y + bloco.y*0.03

local textoLinkedin = display.newText( grupoCreditos, 'LINKEDIN', botaoLinkedin.x + botaoLinkedin.x*0.1, botaoLinkedin.y, fonte, t*0.038 )
textoLinkedin:setFillColor( 0,0,0 )

local iconeBotaoLinkedin = display.newImageRect( grupoCreditos, 'recursos/imagens/icon_Star.png', t*0.09, t*0.09)
iconeBotaoLinkedin.x = botaoLinkedin.x - botaoLinkedin.x*0.65
iconeBotaoLinkedin.y = bloco.y + bloco.y*0.03

function verificaToque( event )
	if (event.phase == 'began') then
		if (event.target == botaoLinkedin) then
			system.openURL( 'https://www.linkedin.com/in/luanfagioni/' )
		elseif (event.target == botaoInstagram) then
		    system.openURL( 'https://www.instagram.com/luan_fagioni/' ) 
		elseif (event.target == botaoGithub) then 
            system.openURL( 'https://github.com/DevLuanFagioni' )
		end
	end
end
botaoLinkedin:addEventListener( 'touch', verificaToque )
botaoInstagram:addEventListener( 'touch', verificaToque )
botaoGithub:addEventListener( 'touch', verificaToque )


end
cena:addEventListener( 'create', cena )
return cena